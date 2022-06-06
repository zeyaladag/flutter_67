import 'package:authentication123/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'gorevler.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );


}
// ignore: deprecated_member_use
var abc = FirebaseDatabase.instance.reference();





class Bubble extends StatelessWidget {
  const Bubble({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AliskanlikWidget(),
    );
  }
}

class AliskanlikWidget extends StatefulWidget {
  const AliskanlikWidget({Key? key}) : super(key: key);



  @override
  _AliskanlikWidgetState createState() => _AliskanlikWidgetState();

}


class _AliskanlikWidgetState extends State<AliskanlikWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String sec = "Aşağıdaki Hedeflerden Birini Şeçin";
  String hedef = "Sürdürülebilir Kalkınma Geleceğimiz Ve Dünya'nın Daha Temiz Olabilmesi İçin Çok Önemlidir";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5B6999),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 50, 30, 50),
                    child: Column(

                      mainAxisSize: MainAxisSize.max,

                      children: [

                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                              child: Text(
                                'Alışkanlık Takibi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 35.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 180, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x5B000000),
                          offset: Offset(0, -2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(41),
                        topRight: Radius.circular(41),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return (Loginpage());
                                }),
                              );

                            },

                            child: const Text("Çıkış Yap")),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 20, 20, 20),
                                  child: Text(
                                    'Görevler',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1E9DD),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Text(
                                                sec,

                                                textAlign: TextAlign.start,

                                                style: const TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFDE6F2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children:  [

                                           ElevatedButton(
                                               onPressed: () {
                                                 setState(() {
                                                   b.add(sec);
                                                 });

                                               abc.child('Tamamlanan Görevler').set(b);

                                               sec = "Görev Tamamlandı. Yeni Bir Hedef Belirleyin.";
                                           },

                                               child: const Text (
                                                 'Tamamlandı',
                                               )),
                                            TextButton(
                                              child: const Text('Plastik Atık ve Ambalaj'),

                                              onPressed: () {

                                                hedef = "Eğer bir geri dönüşüm poşeti kullanıyorsanız günlük hayatımızda ne kadar fazla tek kullanımlık ambalaj atığı çıktığına şahit olmuşsunuzdur. Plastik veya cam atıkların geri dönüştürüldüğünü düşünerek içimizi rahatlatsak da durum zannettiğimizden biraz farklıdır. Dünya üzerindeki plastiklerin %91’ i geri dönüştürülememektedir. Tek kullanımlık bıçak, çatal, pipet gibi küçük parçalar geri dönüşüm makineleri için uygun olmadığından bu döngünün içine bile alınmazlar. Üstelik bilinenin aksine plastikler, doğada çözünmez sadece ayrışırlar. Ayrışan bu mikro plastikler ise toprağa ve denize karışarak vücudumuza dönerler. Ancak ekolojik ürün kullanımının artması ve toplumsal bilinçlenme ile bu gidişatı yavaşlatmak bizim elimizde.";
                                                setState(() {
                                                var randomItem = p[Random()
                                                    .nextInt(p.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Dijital Temizlik'),

                                              onPressed: () {

                                                hedef = "Bilgisayarınızda veya bulut sağlayıcılarda sakladığınız mailleri silerek sürdürülebilir yaşama katkı sağlayabileceğinizi biliyor muydunuz? Nasıl dediğinizi duyar gibiyiz. Her gün posta kutumuza çoğu spam veya tanıtım içerikli yüzlerce posta alıyoruz. Aldığımız her e-posta, bulut sağlayıcıda sakladığımız her fotoğraf veya belge ise birden fazla sunucuda saklanıyor. Sunucular ise çok yüksek elektrik tüketen veri toplama merkezlerinde bulunuyor. Yapılan araştırmalar gösteriyor ki; her elektronik posta yaklaşık 0.3 gr karbon salınımı üretiyor. ";
                                                setState(() {
                                                var randomItem = di[Random()
                                                    .nextInt(di.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Su Tüketimi'),

                                              onPressed: () {

                                                hedef = "Dünyamızın %70’ ten fazlası su ile kaplı. Ancak bu suyun yaklaşık %98’ i okyanuslardaki tuzlu su. Kalan kısmın ise sadece % 0,5’ ine ulaşabiliyoruz. Bu oran ise dünyadaki toplam nüfus için yeterli değil. Suya erişebilen şanslı ülkelerden olsak da sürdürülebilir yaşam için suyu daha efektif kullanmamız gerekmekte. Çünkü ne yazık ki su oranı sabitken su kullanımı nüfusun artması ile paralel bile değil. Son yıllarda yapılan araştırmalara göre dünya nüfusu 4 kat artmış olmasına rağmen su tüketimi 9 kat artmış durumda.";
                                                setState(() {
                                                var randomItem = da[Random()
                                                    .nextInt(da.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Kâğıt Tüketimi'),

                                              onPressed: () {

                                                hedef = "Artık sürdürülebilir yaşam için en önemli noktanın enerji tüketimini azaltmak olduğunu biliyoruz. Peki, dünyada en çok enerji tüketen 5. büyük endüstrinin kağıt endüstrisi olduğunu biliyor muydunuz? Yani yaygın bilginin aksine, kağıt tüketimini azaltmakla sadece daha az sayıda ağaç kesilmesine engel olmaz aynı zamanda daha az enerji tüketimine de katkıda bulunabilirsiniz. Üstelik kağıtların ağartılması aşamasında kullanılan kimyasal miktarını azaltarak su ve toprak kirliliğinin azaltılmasına da katkı sağlayabilirsiniz.";
                                                setState(() {
                                                var randomItem = ka[Random()
                                                    .nextInt(ka.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Kompost Yapın'),

                                              onPressed: () {

                                                hedef = "Kompost o kadar değerli ki, ismi siyah altın olarak anılmakta. Her gün çıkardığınız çöpün neredeyse yarısı organik maddelerden oluşuyor. Bu maddeleri yeniden değerlendirerek toprağı zenginleştirecek ve bitkileri güçlendirecek kompost üretmek mümkün.";
                                                setState(() {
                                                var randomItem = ko[Random()
                                                    .nextInt(ko.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Geri Dönüşüm'),

                                              onPressed: () {

                                                hedef = """Geri dönüşüm oldukça önemli ve etkili bir yöntemdir. Geri dönüşümün oldukça fazla faydası bulunmaktadır. Geri dönüşümün ülkede yaygınlaşması hem ülke için hem bireysel olarak oldukça etkilidir. 
Geri dönüşümün en önemli faydaları; 
- Doğal kaynakların azalmasında oldukça önemli bir etkiye sahiptir.
- Her anlamda enerji tasarrufu sağlar.
- Atık çöp miktarını azaltır.
- Doğan'ın daha temiz kalmasını sağlar.""";
                                                setState(() {
                                                var randomItem = ge[Random()
                                                    .nextInt(ge.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Kullanmadığınız Fişi Çekin '),

                                              onPressed: () {
                                                hedef = "Enerji üretimi doğaya büyük zararlar vermektedir. Elektirik tüketiminizi azaltarak bu zararı azaltabilirsiniz.";
                                                setState(() {
                                                var randomItem = k[Random()
                                                    .nextInt(k.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                            TextButton(
                                              child: const Text('Yürümeyi Tercih Edin'),

                                              onPressed: () {

                                                hedef = "Atmosferdeki ısıyı tutan sera gazları, atmosferde olması gerekenden fazla olduğu takdirde dünyanın ateşinin çıkmasına ve iklim değişikliğine sebep olmakta. Şehirleşmeye bağlı olarak bireysel otomobil kullanımının artması atmosferdeki sera gazı artışındaki önemli sebeplerden.";
                                                setState(() {
                                                var randomItem = y[Random()
                                                    .nextInt(y.length)];
                                                sec = randomItem;

                                                return;
                                              });}
                                            ),
                                         ]
                                        ),
                                      ),

                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Text(
                                  'Bilgi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children:  [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Text(
                                                hedef,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Text(
                                                """Yapmış olduğunuz bu görevler sayesinde Dünya daha temiz ve sürdürülebilir hale geliyor. 
                                                
       TEŞEKKÜR EDERİZ!
       
NOT: Unutmayın Bu Hedefleri ve Görevleri Alışkanlık Haline Getirmek Hem Sizin Sağlığınız İçin Hem de Dünya'nın Temizliği için Çok Önemli. 
NOT: Bu Uygulamanın Amacı İnsanları Sürdürüle Bilir Yaşamla İlgili Bilgilendirmektir.""",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                                    ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
