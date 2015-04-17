
# Installation

## Virtualbox-Umgebung

### Installation

Für das Erzeugen und Starten der Virtualbox-Umgebung müssen zunächst folgende Programme installiert sein:

* [VirtualBox 4.3.26](https://www.virtualbox.org/wiki/Downloads)
* [Packer 0.7.5](https://packer.io/downloads.html)
* [Vagrant 1.7.2](https://www.vagrantup.com/downloads.html)

Sollten Sie dieses Repository von github geklont haben, müssen Sie außerdem folgende Dateien in das Unterverzeichnis `machines` herunterladen:

* [ubuntu-14.04.ovf](https://www.dropbox.com/s/2e6i2aj9b12xws2/ubuntu-14.04.ovf?dl=1)
* [ubuntu-14.04.vmdk](https://www.dropbox.com/s/bka6ph38bmcrsg5/ubuntu-14.04.vmdk?dl=1)

### Erzeugung der Umgebung

Führen Sie einfach das Build-Script aus:

```
./build_virtualbox.sh
```
### Starten der Umgebung

Führen Sie einfach das Start-Script aus:

```
./start_virtualbox.sh
```

## Docker-Umgebung

### Installation

Für das Erzeugen und Starten der Docker-Umgebung müssen folgende Programme installiert sein:

* [Docker 1.6.0](https://docs.docker.com/installation)
* [Docker Compose 1.2.0](https://docs.docker.com/compose/#installation-and-set-up)

### Erzeugung der Umgebung

Führen Sie einfach das Build-Script aus:

```
./build_docker.sh
```
### Starten der Umgebung

Führen Sie einfach das Start-Script aus:

```
./start_docker.sh
```
