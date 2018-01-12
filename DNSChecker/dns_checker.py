#!/usr/bin/env python

import socket
from requests import get

current_ip = get('http://api.ipify.org').text
print('Current public IP: {}'.format(current_ip))

domain_name = 'hosenruck.ch'
domain_ip = socket.gethostbyname(domain_name)
print('Current domain ({}) IP: {}'.format(domain_name, domain_ip))

if current_ip != domain_ip:
  print('DNS records for domain {} should be updated'.format(domain_name))
