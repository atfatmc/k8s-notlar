# VirtualBox DKMS Modülünü Yapılandırma

Eğer işletim sisteminde eksik paket varsa (vboxdrv) virtualbox DKMS Modülünün tekrar yapılandırılması

```bash
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
sudo /sbin/vboxconfig
sudo systemctl restart vboxdrv
vagrant up
```
