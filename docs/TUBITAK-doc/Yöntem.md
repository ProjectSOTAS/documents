# 5. Yöntem

Bu çalışmanın amacı dağıtık notlandırma sisteminin ilk versiyonunun
geliştirilmesidir.

## 1. Arayüz Tasarımı:

Projenin kullanıcı arayüzü website şeklinde olacaktır. Böylelikle
farklı türdeki cihazlarda erişim sağlayabilecek. Tasarımlarımızı
Figma kullanarak Frontend ekibimiz geliştirmektedir.

Ortak bir tasarım çizgisine sahip olabilmek için ekibimiz ilk olarak
bir tasarım sistemi (design system) geliştirmekle işe başladı. Bu
sistem Angular üzerinde kullanmayı hedeflediğimiz Material kütüphanesi
ile uyumlu şekilde tasarlandı.

Tasarımlarımızı ilk olarak mobil cihazlara göre tasarlayıp tamamladıktan
sonra masaüstü cihazlara göre tasarladık.

## 2. Arayüzün Koda Dökülmesi

Projede web client Javascript ve Angular kullanılarak kodlanacak.
Ekibimizin uyumlu ve hızlı iş çıkarabilmesi için de Angular Material
adlı component kütüphanesinden yararlanıcaz. Süreç içerisinde ekstra
tasarımsal kodlama gerektiğinde de SCSS teknolojisi kullanılacak.

## 3. Mimarisi Tasarımı

Projemizde kullanıcağımız servisler için hexagonal mimariyi seçtik.
Hexagonal mimari kullanarak uygulamayı temelde domain ve teknolojik alt
yapı olarak ikiye bölmüş oluyoruz. Domain üzerinde projenin use-case'leri
entity'leri ve business-logic gibi konuları programlıyoruz, teknolojik alt
yapı dediğimiz alanda ise diğer servislerle,
veritabanları ve eventler ile nasıl iletişim sağlanacağını ayarlıyoruz. 

Frontend servislere REST API şeklinde bağlantı kuracak olup, servisler
de kendi aralarında REST API kullanarak iletişim sağlayacaktır. Verileri
saklamak için Cassandra kullanılacak. Tek bir ana veritabanı olacağından
sistemin tıkanmaması için de kafka ile servisler veritabanıyla iletişim
kuracaklar.

Servislerin gereken ihtiyaca kolayca karşılık verebilmeleri ve sistem
performansının verimli kullanılması için kubernetes kullanılcaktır.
Kubernetes sayesinde bir servise normaldan fazla talep gelirse
sistem otomatik olarak talep gören servisi çoğaltabilecektir. Aynı
şekilde talep azaldığında da gerekli servisin miktarı azaltılabilir.
