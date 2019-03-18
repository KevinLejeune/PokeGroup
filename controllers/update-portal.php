<?php
$list = json_decode(file_get_contents('../assets/js/portals.json'), true);

$coords_str = explode(',', $_POST['latlong']);
$lat = floatval($coords_str[0]);
$long = floatval($coords_str[1]);

for ($k = 0; $k < count($list); ++$k) {
	if ($list[$k]['coords']['longitude'] == $long && $list[$k]['coords']['latitude'] == $lat)
		$list[$k]['state'] = $_POST['state'];
}

file_put_contents('../assets/js/portals.json', json_encode($list, JSON_PRETTY_PRINT));

echo json_encode(array(
	'latlong' => $_POST['latlong'],
	'state' => $_POST['state']
));
?>
