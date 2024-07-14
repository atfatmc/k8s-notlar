# VirtualBox Temin İndirme ve Yüklemesi

Aşağıdaki adresten tüm box bilgilerine erişilebilir.

```bash
https://app.vagrantup.com/boxes/search
```

## Host Makinada Kurulu Box Bilgileri

```bash
vagrant box list
```

## Ubuntu SÜrümlerine Ait Bilgiler

```bash
ubuntu/bionic64 (virtualbox, 20230607.0.1) - Ubuntu 18.04 (Bionic Beaver)
ubuntu/focal64  (virtualbox, 20240710.0.0) - Ubuntu 20.04 (Focal Fossa)
ubuntu/jammy64  (virtualbox, 20240710.0.0) - Ubuntu 22.04 (Jammy Jellyfish)
```

## Box Add, Repackage İşlemleri

```bash
vagrant box add ubuntu/focal64
vagrant box add ubuntu/focal64
vagrant box add ubuntu/focal64

vagrant box repackage ubuntu/focal64 virtualbox 20201204.0.0
mv package.box ubuntu-focal64-20201204-0-0.box
vagrant box add test ubuntu-focal64-20201204-0-0.box
vagrant box remove test
```
