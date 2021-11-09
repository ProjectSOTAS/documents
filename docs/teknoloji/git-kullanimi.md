# Git Kullanımı

- Projede Git ve GitHub kullanımı için çektiğimiz videoyu izleyebilir ve/veya aşağıdaki yazılı kılavuzu takip edebilirsin.
  - [Git ve Github Kullanımı Videosu](https://youtu.be/yPl6P1tXTH8)

---

## Git Kurulumu
Bilgisayarınızda Git kurulu değilse [git-scm.com/downloads](https://git-scm.com/downloads) adresinden işletim sisteminize uygun şekilde kurulum adımlarını takip ederek kurulumu yapmanız gerekiyor.

> Windows kullanıcıları terminal gerektiren işleri `PowerShell` veya sorun çıkarırsa `Git Bash`(Git kurulumunda yükleniyor) kullanarak adımları gerçekleştirebilir.

---

## SSH Key Oluşturma & GitHub'a Ekleme
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

## Repoyu Klonlama
Çalışacağın repoyu bilgisayarına klonla
```
$ git clone git@github.com:ProjectSOTAS/<REPO_ADI>.git
```
> SSH anahtarımız için parola isterse parolayı gir

```
$ cd <REPO_ADI>
```

---

## Yeni Branch Açma
```
$ git switch -c <BRANCH_ADI>
```
> Mevcut branch'i kontrol edin
```
$ git branch
```

---

## Değişiklikleri Yayınlama
> Dosyalardaki değişiklikleri kontrol etmek için
```
$ git status
```

> Commit atılacak değişiklikleri seçin
```
$ git add <DEĞİŞİKLİK_DOSYA_ADI>
```

> Seçilen değişikliklere commit ekle
```
$ git commit -m "COMMIT MESAJI"
```

> Eğer ilk defa commit ekliyorsanız config ayarları olmadığı için hata verecek
```
$ git config --global user.email <GITHUB_MAIL_ADRESIN>

$ git config --global user.name <GITHUB_ADIN>
```

> Eklenen commitleri yayınlayın
```
$ git push
```

> Eğer kullandığınız branch'i daha önceden yayınlamadıysanız hata verecek
```
$ git push --set-upstream origin <BRANCH_ADI>
```

---

## Pul Request Açma
`Adım 1:` Tarayıcıda repoyu açtığınızda `Compare & pull request` butonuna tıklayarak yayınladığınız branch için pr açın

`Adım 2:` PR için issue ile ilgili başlık ekle

`Adım 3:` Açıklama kısmına `#<ISSUE_NO>` ve gerekli açıklamaları yaz

`Adım 4:` `Reviewers` kısmına PR'ı onaylayacak ekip liderini ekle

`Adım 5:` `Projects` kısmına issue'nun bulunduğu projeyi seç

`Adım 6:` Herşey hazır ise `Create pull request` butonuna bas

`Adım 7:` Eklenen değişikliklerin hangi issue için olduğunu `Linked issues` kısmında seç

`Adım 8:` Geriye sadece ekip liderinin, açtığın PR'ı inceleyip merge etmesi kalıyor. Senin başka işin kalmadı. Teşekkürler...
