-- update dos dados de setup jogos mais bem avaliados da steam

update steam_requirements_data set minimum = 'SO: Windows® 7/Vista/XP
Processador: Intel® Core™ 2 Duo E6600 ou AMD Phenom™ X3 8750
Memória: 2 GB de RAM
Placa de vídeo: A placa de vídeo precisa ter 256 MB
Armazenamento: 15 GB de espaço disponível'
where steam_appid = 730;

update steam_requirements_data set minimum = 'SO: Windows 7 ou posterior
Processador: Processador com dois núcleos da Intel ou AMD (2,8 GHz)
Memória: 4 GB de RAM
Placa de vídeo: NVIDIA GeForce 8600/9600GT, ATI/AMD Radeon HD2600/3600
Armazenamento: 15 GB de espaço disponível'
where steam_appid = 570;

update steam_requirements_data set minimum = 'SO: Windows® 7 (32/64-bit)/Vista/XP
Processador: 1.7 GHz Processor or better
Memória: 512 MB de RAM
Armazenamento: 15 GB de espaço disponível'
where steam_appid = 440;

update steam_requirements_data set minimum = 'SO: 64-bit Windows 7, Windows 8.1, Windows 10
Processador: Intel Core i5-4430 / AMD FX-6300
Memória: 8 GB de RAM
Placa de vídeo: NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370 2GB
Armazenamento: 40 GB de espaço disponível'
where steam_appid = 578080;

update steam_requirements_data set minimum = 'SO: Windows® XP/Vista
Processador: 2 GHz Processor or better
Memória: 4 GB de RAM
Placa de vídeo: 512MB dedicated VRAM or better
Armazenamento: 5 GB de espaço disponível'
where steam_appid = 4000;


-- updat setup para os jogos mais jogados da steam

update steam_requirements_data set minimum = '
SO: Windows 7 64-bit
Processador: Intel Core i5-4460 or AMD FX-6300 or better
Memória: 8 GB de RAM
Placa de vídeo: NVIDIA GeForce GTX 760 or AMD Radeon R7 260x 2GB'
where steam_appid = 224260;

update steam_requirements_data set minimum = '
SO: Windows® 8/7/Vista/XP
Processador: Intel/AMD Dual Core 2GHz
Memória: 2 GB de RAM
Placa de vídeo: NVidia GeForce 8800, ATI/AMD Radeon HD 2400
Armazenamento: 8 GB de espaço disponível'
where steam_appid = 253710;


update steam_requirements_data set minimum = '
SO: Windows XP
Processador: 500 MHz, 
Memória: 96 MB de RAM, 
placa de vídeo 16 MB'
where steam_appid = 20;

-- setup para os jogos mais jogados da categoria multiplayer

update steam_requirements_data set minimum = '
SO: 64-bit Windows 7 or 64-bit Windows 8 (8.1)
Processador: Intel CPU Core i5-2500k / AMD CPU Phenom II X4 970
Memória: 6 GB de RAM
Placa de vídeo: Nvidia GPU GeForce GTX 470 1GB / AMD HD 5800 1GB
Armazenamento: 2 GB de espaço disponível'

where steam_appid = 344760;

update steam_requirements_data set minimum = '
SO: Windows 7
Processador: 2.33GHz or faster x86-compatible processor
Memória: 512 MB de RAM'
where steam_appid = 389570;


update steam_requirements_data set minimum = 'SO: Windows 7/8/10 32-bit
Processador: Two-core Intel or AMD processor, 2.5 GHz or faster
DirectX: Versão 10
Armazenamento: 6 GB de espaço disponível'
where steam_appid = 691020;


-- dado renomeado e posteriormente retirado da tabela steam
update steam set owners = '8-10'
where appid = 595280;

delete from steam where appid = '595280';








