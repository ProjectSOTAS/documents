# Git Kullanımı
Bilgisayarınızda Git kurulu değilse https://git-scm.com/downloads adresinden işletim sisteminize uygun şekilde kurulum adımlarını takip ederek kurulumu yapmanız gerekiyor.

> Windows kullanıcıları terminal gerektiren işleri `PowerShell` veya sorun çıkarırsa `Git Bash`(Git kurulumunda yükleniyor) kullanarak adımları gerçekleştirebilir.

---

## SSH Key Oluşturma & Ekleme
GitHub'a commit gönderirken güvenlik için SSH anahtarınız olması ve bu anahtarın GitHub hesabınıza tanımlı olması gerekmektedir.

> Bu adımlar Linux için yazılmıştır.\
\
> Aşağıda anlatılacak adımlarda Windows için birkaç değişiklikleri olduğundan dolayı Windows komutlarını https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent kaynaktan kontrol ederek ilerlerseniz olası hataları engellemiş olursunuz.


`Adım 1:` Terminali aç

`Adım 2:` SSH anahtarınızı oluşturmak için terminalde kodu çalıştır
```
$ ssh-keygen -t ed25519 -C `GitHub Email Adresiniz`
```
```
> Generating public/private ed25519 key pair.
> Enter file in which to save the key (/home/z3k/.ssh/id_ed25519): [Enter'a bas]
```
> SSH key kullanılırken güvenlik için istenecek parolayı belirle
> Parola yazılırken güvenlik için ekranda gözükmez
```
> Enter passphrase (empty for no passphrase): [Parolayı Gir]
> Enter same passphrase again: [Parolayı Tekrar Gir]
```

`Adım 3:` Oluşturulan public ve private keylerin nereye kaydedildiğine iyi bakın. Adım 2'de hiçbir şey yazmadan Enter'a bastıysanız varsayılan adrese (Linux için `/home/username/.ssh/`, Windows için `/c/Users/username/.ssh/`) kaydedilir.
```
> Your identification has been saved in /home/z3k/.ssh/id_ed25519
> Your public key has been saved in /home/z3k/.ssh/id_ed25519.pub
```

`Adım 4:` ssh-agent'ı komut ile çalıştır
```
$ eval "$(ssh-agent -s)"
```

`Adım 5:` SSH anahtarınızı bilgisayara tanıtın. Adım 2'de dosya adını ve/veya yolunu değiştirdiyseniz komutta da ilgili yeri değiştirmeniz gerekir
```
$ ssh-add ~/.ssh/id_ed25519
```
> Adım 2'de verdiğin parolayı gir
```
> Enter passphrase for /home/z3k/.ssh/id_ed25519: [Parolayı Gir]
```
```
> Identity added: /home/z3k/.ssh/id_ed25519 (zekeriya@zekeriyaay.com)
```

`Adım 6:` SSH anahtarımızı GitHub hesabımıza bağlamak için https://github.com/settings/keys adresine veya `GitHub Settings` -> `SSH and GPG keys` sayfasına gir

`Adım 7:` `New SSH key` butonuna tıkla

`Adım 8:` `Title` kısmına hangi bilgisayarda kullandığını hatırlayacağın başlık ekle 

`Adım 9:` Oluşturduğun SSH anahtarının `.pub` uzantılı olan dosyasını text editör ile aç veya terminalden aşağıdaki komut ile içeriğini yazdır
> Dosya konumu ve/veya adını değiştirdiysen komutta güncelle
```
$ cat ~/.ssh/id_ed25519.pub
```
```
> ssh-ed25519 ************* [zekeriya@zekeriyaay.com]
```

`Adım 10:` `Key` kısmına Adım 9'daki anahtar çıktısını yapıştır ve `Add SSH key` butonuna basarak kaydet

---

## Çalışılacak Repoyu Çekme
