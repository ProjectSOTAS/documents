# 4. Özgün Değer

Projemiz günümüz eğitim ve öğretimdeki ödev notlandırmaya farklı
bir bakış açısı getiriyor. Üniversitelerde hocaların veya araştırma
görevlilerin ödevleri kontrol etmesi yerine öğrencilerin kendi arasında
ödevleri kontrol etmesini amaçlıyoruz.


Asıl farklı ve öne çıkan yönü ise öğrencilerin birbirlerine
nasıl not vereceği. Her öğrenciyi birbirine sayı şeklinde not verdirtmek
yerine sistem tarafından karşılarına gelen ödevleri sıralamalarını
isteyeceğiz. Böylelikle toplu şekilde herkesin birbirine yüksek vermesi
veya herkesin birbirine düşük not vermesini önlemiş olacağız. Örnek olarak
120 kişilik bir sınıfta, yazmış olduğumuz algoritmanın belirleyeceği
sayıya göre gruplar oluşturulacak. Bu grupların boyutları 5 ile 20 arasında
algoritmaya göre değişiklik gösterebilir. 120 kişilik sınıf örneği için
10 kişilik bir gruplandırma uygun olabilir. Bu gruplar kendi aralarında
anonim bir şekilde kimse kimseyi bilmeden birbirlerinin ödevlerini
en iyiden en kötüye olacak şekilde sıralayacak (lider tablosu gibi). Yapılan sıralamalar
servisler aracılığıyla değerlendirilip kayıt altına alınacak. Bu kayıtlar
sonucu yazmış olduğumuz algoritma her öğrencinin ödevine not üretecek.
Üretilen notların ortalaması da 50 olacak şekilde ayarlanacak. Böylelikle
çan eğrisi sağlanmış olacak.


# **4-) Özgün Değer**

 Dağıtık ders ve notlandırma sistemi benzerlerinin aksine tamamen farklı ve yeni bir sistem üzerine oturtulmuştur. Bu sistem oluşturulurken temel amaç adaletli bir notlandırma ve ders işlenişini kolay bir hale getirmektir. Güvensizlik oluşumunu önlemek için her senaryoyu düşünen ve bu sebeple bilirkişi kavramını ortaya çıkaran alanında ilk projedir. Projenin geliştirilmesinde kullanılan teknolojilerde verilerin güvenliği ve yüksek performansa önem verilmiş bu sebeple temelde **quarkus** ve  **Angular** problemleri çözmeye en uygun teknolojiler olarak seçilmiştir.

Bu proje kapsamında önerdiklerimiz aşağıdaki sebeplerden dolayı özgündür:

**1**.  Ders içeriğindeki notlandırmalar dağıtık sisteme göre oluşturulmuştur. Grup içerisindeki puanlamalar tek bir elden değil grup içerisindekiler tarafından verilmektedir. Bu nedenle daha güvenilir ve adaletli bir sistem oluşturularak grup içerisindeki herkesi çalışma yönünden motive edecek bir yapı kurulmuştur.


**2**.  Olası sorunları çözmek için grup içerisinden belirlenecek olan bilirkişi kavramı kullanılmıştır. Bu sayede olası sorunların çözümleri yine grubun kararı neticesinde çözülecektir.
