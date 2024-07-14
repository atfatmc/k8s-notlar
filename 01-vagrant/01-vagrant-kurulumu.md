# Vagrant

## Download ve Kurulum Adımları

Vagrant kurulumu için aşağıdaki site takip edilebilir.

```bash
https://developer.hashicorp.com/vagrant/install?product_intent=vagrant
```

Ubuntu 22.04 üzerine vagrant kurulumu için gerekli repository bilgisi aşağıda verilmiştir.

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install vagrant
```

## Oracle Virtualbox

Oracle Virtualbox kurulumu aşağıdaki internet sitesinden sağlanabilir.

```bash
https://www.virtualbox.org/wiki/Linux_Downloads
```
