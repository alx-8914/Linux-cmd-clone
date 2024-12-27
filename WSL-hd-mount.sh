#Passo 1 (powershell ou CMD em ADM) - Identificar o drive físico no windows
GET-CimInstance -query "SELECT * from Win32_DiskDrive"

#Passo 2 (powershell ou CMD em ADM) - Compartilhar o drive com o WSL para que o linux consiga identificar
wsl --mount \\.\PHYSICALDRIVE1 --bare

#Passo 3 (Linux em WSL) - Identificar partição desejada
lsblk
df -T

#passo 4 (Linux em WSL) - Identificar o tipo de partição (ETX3 - EXT4 - FAT32...)
sudo file -s /dev/<PARTIÇÃO_DESEJADA>

#Passo 5 (powershell ou CMD em ADM)- Montar dentro do Linux no WSL
wsl --mount \\.\PHYSICALDRIVE1 --partition 1 --type ext4 --name <NOME_DE_PASTA_DESEJADA>