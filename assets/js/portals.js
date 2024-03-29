var Map = function(map_container_id) {
	this.setPortals = function(portals) {
		for (var k = 0; k < portals.length; ++k)
			this.addPortal(portals[k]);
	};

	this.addPortal = function(portal) {
		var coords = [parseFloat(portal.longitude), parseFloat(portal.latitude)];

		var feature = new ol.Feature({
			geometry: new ol.geom.Point(ol.proj.fromLonLat(coords)),
			name: portal.name,
			image: portal.image
		});

		feature.setId(portal.latitude+','+portal.longitude);
		feature.setStyle(icon_styles['pokestop']);

		features.addFeature(feature);
	};

	this.updatePortal = function(latlong, pokestop) {
		var feature = features.getFeatureById(latlong);
		feature.setStyle(icon_styles[pokestop]);
	};

	var icon_styles = {};
	['pokestop'].forEach(function(pokestop) {
		icon_styles[pokestop] = new ol.style.Style({
			image: new ol.style.Icon({
				src: '../assets/img/'+pokestop+'.png'
			})
		});
	});

	var features = new ol.source.Vector();
	var features_layer = new ol.layer.Vector({
		source: features
	});

	var map = new ol.Map({
		layers: [
			new ol.layer.Tile({source: new ol.source.OSM()}),
			features_layer
		],
		target: map_container_id,
		view: new ol.View({
			center: ol.proj.fromLonLat([2.302486, 49.891361]),
			zoom: 16
		})
	});

	map.on('pointermove', function(evt) {
		if (evt.dragging)
			return;

		var hit = map.hasFeatureAtPixel(evt.pixel);
		map.getTargetElement().style.cursor = (hit) ? 'pointer': '';
	});

	var popup_elt = document.querySelector('#popup');
	var popup_form = popup_elt.querySelector('form');

	var popup= new ol.Overlay({
		element: popup_elt,
		positioning: 'bottom-center',
		offset: [0, -30]
	});

	map.addOverlay(popup);
	map.on('click', function(evt) {
		var feature = map.forEachFeatureAtPixel(evt.pixel, feature => feature);

		if (feature) {
			var coords = feature.getGeometry().getCoordinates();
			var current_coords = popup.getPosition();

			if (current_coords !== undefined && (coords[0] == current_coords[0] && coords[1] == current_coords[1]))
				popup.setPosition();

			else {
				popup_elt.querySelector('h5').textContent = feature.get('name');
				// popup_elt.querySelector('p').textContent = feature.getId();
				// popup_form.querySelector('input[name="latlong"]').value = feature.getId();
				var img = popup_elt.querySelector('img');
				img.setAttribute('src', feature.get('image'));
				popup.setPosition(coords);
			}
		}
	});
};

var map = new Map('map');

document.querySelector('#popup form').addEventListener('submit', evt => {
	evt.preventDefault();

	var data = new FormData(evt.target);
	var pokestop = evt.target.querySelector('input[type="image"]:focus').getAttribute('data-pokestop');
	data.append('pokestop', pokestop);

	fetch('../controllers/update-portal.php', {
		method: 'POST',
		body: data
	})
	.then(response => response.json())
	.then(portal => map.updatePortal(portal.latlong, portal.pokestop));
});

fetch('../controllers/pokestopController.php').then(response => response.json()).then(portals => map.setPortals(portals));
