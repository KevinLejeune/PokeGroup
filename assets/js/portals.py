#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import subprocess
import json

portals = []

files = [f for f in os.listdir('.') if (f.startswith('portals') and f.endswith('.csv'))]
for filename in files:
	if not('UTF-8' in subprocess.check_output(['file', filename]).decode().strip()):
		tmp = open('tmp.csv', 'w')
		subprocess.call(['iconv', '-f', 'ISO-8859-1', '-t', 'UTF-8', filename], stdout = tmp)
		tmp.close()

		os.rename('tmp.csv', filename)

	f = open(filename, 'r')
	lines = f.readlines()[1:]
	f.close()

	for line in lines:
		L = line.split(',')
		portals.append((
			','.join(L[0:-3]).strip(),
			float(L[-3].strip()),
			float(L[-2].strip()),
			L[-1].strip()
		))

portals = [
	{
		'name': portal[0],
		'coords': {
			'latitude': portal[1],
			'longitude': portal[2]
		},
		'image': portal[3],
		'state': 'unconfirmed'
	}
	for portal in set(portals)
]

f = open('portals.json', 'w')
json.dump(portals, f, indent = 4, separators = (',', ': '))
f.close()
