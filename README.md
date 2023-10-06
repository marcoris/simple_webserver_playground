# Simple Webserver Playground with Vagrant
A simple playground to start with apache2, php8.2 and mysql8.2 in a VirtualBox environment.

## Installations
You first have to install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and 
[Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant) on your OS.

## Run the server
Simple run `vagrant up` to spin up an apache2 webserver on [localhost:8081](http://localhost:8081).

## Connecting to box
Run `vagrant ssh` to connect to the box.

## MySQL
Run `mysql -uadmin -padmin` or `mysql -utest -ptest`.
