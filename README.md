# Scanner de log4shell

El repositori conté un script en llenguatge bash que permet executar un escaneig de totes les aplicacions incloses en una xarxa IP concreta i retorna aquelles que son vulnerables a log4shell. 

## Dependències

Instal·lar NMAP

```bash
sudo apt-get install nmap
```


Descarregar els scripts de NMAP per escanejar log4shell

```bash
git clone https://github.com/Diverto/nse-log4shell.git
cd nse-log4shell.git
cp * /usr/share/nmap/scripts/
```


Instal·lar tcpserver

```bash
sudo apt-get install ucspi-tcp
```

## Execució

S'ha d'executar sobre les IP o dominis que es desitgi i sobre el port que aquests tinguin allotjat el servei.

```bash
git clone https://github.com/wapetine/log4shell.git
cd log4shell.git
chmod +x log4jscan.sh
./log4jscan.sh [IP Address/Range] [Port]
```
