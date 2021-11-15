# 5. Yöntem

Bu çalışmanın amacı dağıtık notlandırma sisteminin ilk versiyonunun
geliştirilmesidir. Proje kapsamında temel olarak Frontend ve Backend
özelinde çalışmalar yapılcaktır.

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

## 3. Mimari Tasarımı

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

## 4. Servislerin Yazılması

Projemizde tüm servisler Java ve Quarkus kullanarak yazılacak. Her
bir servis kendisine ait container üzerinde saklanacak olup, kubernetes
tarafından yönetileceklerdir. 

Her servis farklı bir amaca göre hizmet vereceği için ilk olarak
domainler aracılığıyla servisler belirleniyor. Sonrasında ortak
domainler tek servise toplanıyor. İhtiyaç duyulan entity'ler,
use-case'ler de domain tarafına yazılıyor. Domain ve business-logic'ten
ayrı olan kısımlar bir üst katmana gelecek şekilde yazılıyor.

Bu mimaride dış katmandan iç katmana doğru akış sağlanması bekleniyor.
Bunu sağlayabilmek için de port'lar ve adapter'ler kullanılıyor.

## 5. Ekibin Teknik Olarak İletişimi ve Uyumu

Bu projenin en önemli özelliklerinden birisi de teknik iletişimin
yönetimi. Bunun için Git kullanılacak ve GitHub ile entegre bir
şekilde yol alınacaktır. GitHub üzerinden yapılacak her iş için
uygun dokümantasyona sahip, kimin yapacağı belli olan Issue'lar
oluşturulacak. Her Issue'ya GitHub tarafından özel bir kod atanıyor,
bu kodu kullanarak o işi yapacak ekip üyesi Git üzerinden uygun
ada ve koda sahip (örnek: doc-12) branch oluşturacak. Burada
yapmış olduğu değişiklikleri küçük parçalar halinde commit atarak
kayıt altına alacak. Ekip üyesi yapması gereken işi bitirdiğinde de 
ekip liderini reviewer olarak seçip GitHub üzerinden ekip liderinin
branch'ine olacak şekilde Pull Request oluşturacak. Ekip lideride
bu çalışmayı inceleyip eğer testleri geçiyorsa da kendi branch'ine
açılmış olan Pull Request'i kabul edecek. Yapılan yazılım geliştirmesi
bu şekilde her ekip üyesi ve ekip lideri için devam edecek.

## 6. Teknik Dokümantasyon

Projenin yeni ekip üyelerine veya diğer yazılımcılara kolay bir şekilde
anlatılabilmesi için teknik dokümantasyona ihtiyaç vardır. Bunun için de
MkDocs yazılımı kullanılacak. Her ekip üyesi yeni eklediği özellik veya
düzenlemeler için GitHub üzerinde bulunan repository içinde Markdown
formatında metin hazırlayacak. Daha sonrasında hazırlamış olduğumuz
otomasyon sayesinde bu değişikliler otomatik olarak internet ortamına
internet sitesi şeklinde çıkacak.
