
# Installation

## Virtualbox-Umgebung

### Installation

Für das Erzeugen und Starten der Virtualbox-Umgebung müssen zunächst folgende Programme installiert sein:

* [VirtualBox 4.3.26](https://www.virtualbox.org/wiki/Downloads)
* [Packer 0.7.5](https://packer.io/downloads.html)
* [Vagrant 1.7.2](https://www.vagrantup.com/downloads.html)
* [vagrant-hosts 2.4.0](https://github.com/adrienthebo/vagrant-hosts)

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
