#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Energized Blu - Magisk Prop Creator

import urllib.request
import datetime
import os
import time

Blu = 'assets/Magisk/module.prop'
Blu_go = 'assets_go/Magisk/module.prop'

if not os.path.exists(os.path.dirname(Blu)):
	os.makedirs(os.path.dirname(Blu))

with open(Blu, 'w') as f:
	print('[+] Magisk Module.Prop Updater')
	print('[+] Writing to file...')
	f.write('''id=energizedblu''')
	f.write('''\nname=Energized Blu''')
	f.write('''\nversion=1.0.''' + time.strftime("%m.%j", time.gmtime()) + '''''')
	f.write('''\nversionCode=''' + time.strftime("%j", time.gmtime()) + '''''')
	f.write('''\nauthor=AdroitAdorKhan''')
	f.write('''\ndescription=Lightweight Energized Protection.''')
	f.write('''\nminMagisk=1500''')
	print('[+] Done!')

if not os.path.exists(os.path.dirname(Blu_go)):
	os.makedirs(os.path.dirname(Blu_go))

with open(Blu_go, 'w') as f:
	print('[+] Magisk Module.Prop Updater')
	print('[+] Writing to file...')
	f.write('''id=energizedblugo''')
	f.write('''\nname=Energized Blu go''')
	f.write('''\nversion=1.0.''' + time.strftime("%m.%j", time.gmtime()) + '''''')
	f.write('''\nversionCode=''' + time.strftime("%j", time.gmtime()) + '''''')
	f.write('''\nauthor=AdroitAdorKhan''')
	f.write('''\ndescription=Energized Go!''')
	f.write('''\nminMagisk=1500''')
	print('[+] Done!')
