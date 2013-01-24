maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures webserverbuild"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "webserverbuild::default","Builds web server package load balancer"
recipe "webserverbuild::fe","Builds web server package front end"
recipe "webserverbuild::be","Builds web server package back end"
recipe "webserverbuild::cs","Builds web server package client services"
