# SOTAS Test Stratejisi Dokümantasyonu

## Kapsam

- SOTAS projesinde tüm ekip üyeleri geliştirme, düzenleme veya ekleme yaparken
test yazmakla sorumludur.
- Önceden kararlaşıtırılmış veya beklenmedik durumlar dışında yapılan tüm pull requestlerin
code reviewları üyelerin ekip liderlerince yapılmalıdır. Ör: Ekip 1 içerisindeki tüm üyeler
ekip Ekip 1 liderine code review yaptırmalıdır. Ekip 1'in üstündeki ekibe ise Ekip 1'in lideri
pull request açıp üst ekip liderine kodları onaylatmalıdır.
- Gerek frontend gerekse de backend geliştirmeleri yapılırken ilk olarak yapılan geliştirme
için test yazılmalıdır. Test yazılmadan kabul edilen code reviewlardan ekip liderleri
sorumlu olacaktır.

## Yaklaşım

- Yapılan her geliştirme için problemi kapsayacak kadar unit test yazılmalıdır.
- Çeşitli servislerin, 3. parti API'ların ve sistemin entegrasyonunu kontrol edebilmek
için belli aralıklarla smoke testler, performance testleri ve integration testleri
yazılabilir.

## Ortam

- Her bir veritabanı modeli için seeder yazılmalı ve hangi ortamda test yapılırsa yapılsın
bu seederlar ile veri üretilmelidir.
- Mikroservislerin teker teker testi için Docker yüklü ve çalışıyor olan herhangi bir
cihaz üzerinde testler yapılabilir.
- Pull Request yapıldığında önceden belirlenmiş olan pipeline üzerinden automated testler
çalıştırılır. Linux tabanlı cihazlar tercih edilmelidir.
- Kritik dosyalar ve veritabanları herhangi bir testten önce mutlaka yedeklenmelidir ki
herhangi bir veri kaybı yaşanmasın.

## Araçlar

- Test yazarken kullanılan frameworkün sunmuş olduğu test yapısı kullanılmalıdır. Özellikle
unit testlerin proje ile tam entegre olması beklenir.
- Load testing ve proje bütününün testlerinde aracı programlar kullanılabilir ve kullanılmalıdır.

## Yayınlama

- Herhangi bir test içermeyen veya hata veren testleri bulunan pull requestler kesinlikle
kabul kabul edilemez. Çözmek istenen probleme uygun test mutlaka ve mutlaka yazılmalıdır.
- Testleri başarıyla geçen pull requestler ekip liderlerince projeye merge edilebilir.
