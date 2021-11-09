# Teknoloji Dokümentasyonu

Bu dokümantasyon kullanılan teknolojileri ve neden kullanıldıklarını açıklar.

---

# Front-end

## Angular
 
 - Google tarafından ortaya çıkarılan ve günümüzde hala gelişmekte olan Angular’ın kullanılmasının en büyük nedenlerinden biri diğer frameworklerden daha esnek kullanışa sahip olması ve modüler kullanım tekniğidir. Bunların yanında içinde bulunan paketlerin hazır olarak gelmesi ve hemen kullanılabilir olması en büyük avantajlarındandır. Performans ve hız bakımından oldukça tatmin edicidir. Bir uygulamanın aynı anda çapraz platformlara hızlıca çıkması isteniyorsa angular bu konuda en büyük yardımcıdır.

 - Angular, React ve diğer modern çerçeveler gibi, HTML'i sunucuda veya hatta bir web çalışanında işleyerek performans kazanımlarından yararlanabilir. Uygulama/site tasarımına bağlı olarak bu eş biçimli işleme, kullanıcının deneyimini daha da anlık hissettirebilir.
Angular için koyabilirsiniz daha yazmadıysanız
 
 
## Angular Material

- Angular'ın resmi olarak geliştirdiği bir kütüphanedir.

- Google'ın Material Design tasarımını Angular componentleri olarak karşımıza çıkarır.

- Ortak bir tasarım sistemine sahip olabilmek için tercih ettik.

## SCSS  

- Kendimiz component geliştirdiğimiz zaman CSS'in biraz daha güzeli olan SCSS'i kullanıcaz.

- SCSS içinde fonksiyonlar oluşturabilir daha gelişmiş değişken sistemleri kullanabiliyoruz.

## Netlify

- Netlify ile Javascript ile geliştirmiş olduğumuz frontend projelerimizi ücretsiz olarak barındırabiliyoruz.

- GitHub ile olan entegrasyonu sayesinde master branch güncellendiğinde otomatik olarak Netlify üzerindeki demo
projemizde güncellenebilecek.

# Back-end

## Quarkus

 - Quarkus, OpenJDK ve GraalVM için sektördeki önemli library’leri içinde barındırarak hazırlanmış bir Kubernetes Java Stack.

 - ### Neden Quarkus Kullanmalı?

    1. Memory consumption değerleri daha az, düşünün ki daha az memory ile aynı işi yapmak, çok iyi bir tercih sebebi olabilir.

    2. Cloud tarafında Serverless mimarisinin ortaya çıkmasının en önemli nedenlerinden biri Cost Reduction yapmaktı. Gerektiğinde
kaynaklar ayakta olmalı, kapalı olduğunda ise; ihtiyaç duyulduğunda çok hızlı bir şekilde cevap vermesiydi. Java tarafında kalmak
isteyen organizasyonlar için boot time ne kadar değerli olduğunu tahmin edebiliyorsunuzdur işte bu yüzden Quarkus biçilmiş kaftan olabilir.

## Maven

 - Maven genellikle Java platformunda yer alan komutların derlenmesi sırasında kullanılan otomasyon ve inşa aracıdır.

 - Maven proje dosyasına eklenen bağımlılıklar/kütüphaneler ile kolay bir şekilde indirmeyi ve proje yerleştirmeyi sağlar.

## GraalVM

 - GraalVM Oracle tarafından geliştirilen bir sanal makine. Java, JVM tabanlı diğer diller, Javascript, Ruby, Python, R,
C/C++ ve diğer Low Level Virtual Machine(LLVM) desteği sağlayan dilleri farklı deployment senaryolarında çalıştırabiliyor.
LLVM sayesinde adaptörünü yazdığını herhangi bir dili de GraalVM’de çalıştırmak mümkün.
 
 - Native image yazabiliyor. 

## Kubernetes

 - Kubernetes Google tarafından GO dilinde geliştirilmiş Cloud Native Computing Foundation tarafından desteklenen mevcut konteyner
haline getirilmiş uygulamalarınızı otomatik deploy etmek, sayılarını arttırıp azaltmak gibi işlemler ile birlikte yönetmenizi sağlayan
bir Konteyner kümeleme (container cluster) aracıdır.

 - Bu teknolojiyi kullanarak uygulamalarımızı mikroservis mimarisi aracılığıyla daha kolay yönetebilir , daha kolay sorunlarımıza
çözüm bulabilir ve daha da önemlisi taşınabilir bir ortam sağladığı için uygulamalarımızı çok kolay bir şekilde taşıyabiliriz.
Sürüm geçişlerini de bu sayede kolay bir şekilde yapabiliriz.

## Cassandra DB

 - Cassandra, Java ile geliştirilmiş, açık kaynak(open source), nosql veritabanı tipidir. Okulda öğrendiğimiz Mysql bir ilişkisel veri tabanı mesela.
İlişkisel veritabanı alışılagelmiş adıyla RDBMS (Relational Database Managament Systems)’de sorgulama için SQL dili kullanılırken, Nosql’de sorgular yer almıyor.
Verilerimiz tablolarda tutulmuyor, onun yerine JSON ya da XML formatında column base yapısını kullanarak kaydediliyor. 
 
 - Column base derken Cassandra bir kaç farklı sunucuda üzerinde dağıtık şekilde çalışabildiği için verileri yatay olarak ölçekleyebiliyoruz.

## Hexagonal Architecture

 - Hexagonal Mimari, ortak katmanlı mimari tasarımlarında gördüğümüz bir sistemin çekirdeğini oluşturan temel iş mantıklarının bulunduğu modüler parçaların
diğer katmanlarla iç içe olacak şekilde tasarlandığı bu yüzden sisteminizi dışarıya açan katmanların ve temel iş mantıklarını yöneten servis katmanlarının
birbirine bağımlı şekilde davranmasına yol açan mimarilerin aksine, katmanlar arasındaki bağımlılığı “domain” dediğimiz tamamen iş mantıklarının olduğu
en içte bulunan katmana doğru bağımlı olacak şekilde tasarladığımız Domain-Driver Design mimarisinin özelleşmiş bir versiyonudur

#### *Temel Bileşenleri*

##### *1. Domain*

Domain için sadece iş kurallarından oluşan, bu kuralların entity’ler vasıtasıyla tanımlandığı ve işlendiği, uygulamanın hiçbir katmanı ile bağımlılığı
olmayan aslında uygulamanın temel işlevinin ne olduğunu anlamamızı kolaylaştıran saf kod blokları diyebiliriz.

##### *2. Use-Case*

İş kurallarını etkileyen, uygulamayı çağıran birincil portların kullandığı senaryoları içeren ve ortak katmanlı mimaride gördüğümüz servis
kısmında bulunan senaryoların tek tek ayrıştırılmış hali diyebiliriz.

Bir use-case, domainde olduğu gibi uygulamanın core katmanında bulunur ve dışardaki katmanlarla bağımlılığı bulunmaz.

##### *3. Input & Output Ports*

Uygulamanın dışarı ile iletişimi input ve output portları üzerinden gerçekleşir.
Bir input port, uygulamadaki use-case tarafından implement edilen basit bir arayüzü ifade eder. Dış katmanda bulunan bir input adaptör
tarafından çağrılarak uygulamanın dışarı ile iletişimene olanak sağlar.


Bir output portu, uygulamanın dışarıdan bir şeye ihtiyaç duyması halinde use-case tarafından çağrılabilen basit bir arayüzdür.
Örneğin, veritabanı erişimini yapan ve use-case’in ihtiyacı olan veriyi elde etmemizi sağlayan basit bir arayüzü düşünebiliriz.

Output port dış katmanda bulunan bir output adaptör tarafından implement edilir. Böylece use-case ’in dış ortama bağlılığı ortadan kalkmış olur.
Ayrıca input ve output portları sayesinde bir sisteme verinin nerden geldiğini ve sistem tarafından oluşturulan verilerin nasıl dışarıya
aktarıldığını rahatlıkla tespit edebiliriz.

##### *4. Input & Output Adapters*

Hexagonal mimaride adaptörler en dıştaki katmanları oluşturur. Uygulamanın çekirdeğinin bir parçası değillerdir fakat input ve output portları
üzerinden dolaylı olarak uygulama ile iletişime geçerler.


Input adaptörlere bir web arayüzü ya da bir job örnek verilebilir. Bu adaptörler input portlarını çağırarak uygulamanız üzerinde bir istek oluştururlar.
Output adaptörler ise output portlarını implement eder ve bir use-case üzerinden çağrılırlar. Bir veritabanına bağlanıp veriyi kaydetme
ya da veriyi okuma işlemi örnek gösterilebilir.


Hexagonal mimari, bir uygulamanın kolay geliştirilebilmesine ve kolay deploy edilebilmesine, bakım maliyeti az olan sistemlerin tasarlanmasına, eğer
ekip olarak bir ürün üzerinde çalışıyorsanız aynı perspektif ile ürüne yaklaşmanıza olanak sağlayan bir mimari modeldir.
