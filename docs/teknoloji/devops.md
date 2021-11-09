# DevOps

## Nedir bu DevOps?

DevOps, fikirlerin production'a deploylanmasından çıkan problemlerden ders alınmasına kadarki
süreçtir.

## Neden DevOps?

Bir projeyi master branch üzerinde bir commit ile tamamlamak her ne kadar cazip gözüksede
bizce bir katliamdır. Bir projeyi ekip halinde gerçekleştirecek ve yaşatmaya devam edeceksek
kimin ne yapacağı, nasıl yapacağı ve neler olacağı çok önemlidir. DevOps bu noktada bize 
yardımcı olmaktadır.

## 0'dan Sonuca Süreç

### Issue Oluşturma

Geliştirmek veya eklenmek istenen özellik hakkında halihazırda bulunan issue templatelerinden yararlanarak
detaylı bir issue oluşturulmalıdır. Oluşturulan issue:

- En az 1 kişiye atanmalı
- Uygun label'ı içermeli
- Bir projeye bağlanmalı
- Uygun milestone'a bağlanmalı

### Issue Üzerinde Çalışmaya Başlama

Üzerinde çalışmak istediğiniz issue'yu ilk olarak proje içerisinde **Todo**'dan **In Progress**'e  alınmalıdır
ki ekibin kimin ne şu anda ne yaptığıyla ilgili genel bir fikri olabilsin.


Eğer bu issue ile ilk defa çalışmaya başlandıysa ona ait bir branch oluşturulmalı. Branch adı dokümantasyonlar için
**doc-issueKodu**, frontend için **f-issueKodu** ve backend için **b-issueKodu** olmalıdır. Issue kodları
başlığın yanında bulunan **`#`** işaretiyle başlayan sayılardır.

### Testler

Projelerin can damarı olan testler koda girişmeden önce belirlenmeli ve yazılmalıdır. Yazılmış olan testler karşılandığında
pull request açılabilir ve kimsenin kodu etkilenmeden sürece devam edilebilir.

### Yapılan Çalışmada İlerleme

Yapılan geliştirme hangi konu ile ilgili olursa olsun mutlaka küçük commitler atılarak ilerlenmelidir. Böylelikle
herhangi bir sorunda geriye dönüş kolaylaşmış oluyor.


Issue için belirlenmiş hedefleri karşıladığınızda da ekip liderinizin branchine olacak şekilde veya ihtiyaca
göre master'a olacak şekilde ekip liderinizi reviewer olarak işaretleyip pull request oluşturmalısınız.


Pull request açtığınızda otomatik olarak kodunuz test edilir ve sistem tarafından uygun olup olmadığına karar
verilir. Sistemin uygun görmediği pull requestler tekrardan incelenmeli ve hataları düzeltildikten sonra
tekrar oluşturulmalıdır.

### Code Review

Code review sürecinde tamamlamış olduğunuz iş ekip liderinizce kontrol edilir ve uygun görülürse gerekli branch'e eklenir.


Kodu inceleyecek kişinin kodu anlayabilmesi de sağlıklı ilerleyebilmek için çok kritiktir. Bu noktada temiz ve anlaşılır 
kod yazmak önemlidir.


Onaylanmış olmasına rağmen ileriki süreçte hata çıkaran pull requestlerin sorumluluğu code review yapan kişiyle
pull request isteğini açan kişidedir. Bu sebeple kodları inceleyecek arkadaşların emin olduktan sonra merge
etmeleri kendileri için ve proje için büyük öneme sahiptir.

### Deployment

Her repositorynin master (veya main) branch'i o projenin son halini temsil eder ve çalışabilir durumda olmalıdır.

Otomatik deployment sayesinde ana branchlerde bir değişiklik yapıldığında demo sunucularına deploy edilir.
