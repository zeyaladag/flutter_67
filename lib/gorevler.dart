

var hdf = ["""
1. Plastik Atığını ve Ambalajını Azaltın 
2. Kullanmadığınız Fişi Çekin 
3. Dijital Temizlik Yapın 
4. Daha Az Su Harcayın 
5. Yürümeyi Tercih Edin 
6. Kâğıt Tüketimini Azaltın 
7. Kompost Yapın
8. Geri Dönüşüm Kutularını Kullanın"""];
var b = [];


var a = ["""Plastik Tüketimini Azaltmak için önerimiz;
•	Dışarı her çıktığınızda marketten su almak yerine yeniden kullanabileceğiniz mataraları seçerek gereksiz plastik kirliliğinin önüne geçebilirsiniz.""",
"""Plastik Tüketimini Azaltmak için önerimiz;
•	Planlı gezileriniz için plastik çatal, bıçak, bardak yerine evden getirdiğimiz mutfak malzemelerini kullanmayı tercih edebilirsiniz.""",
"""Plastik Tüketimini Azaltmak İçin önerimiz; 
•	Restorana gittiğinizde içecekle birlikte plastik pipet kullanmak istemediğinizi özellikle belirtebilirsiniz.""",
"""Plastik Tüketimini Azaltmak için önerimiz;
•	Plastik poşetler yerine tekrar tekrar kullanabileceğiniz bez poşetler edinebilirsiniz.""",
"""Plastik Tüketimini Azaltmak için önerimiz;
•	Hazırlıksız yakalanmamak için çantanıza ve arabanıza yedek bez poşetler koymak sürdürülebilir yaşam için iyi bir fikir olabilir.""","""•	Bazı aletler kullanmadığınız zaman bile prize bağlı ise elektrik harcayabiliyor. Fön makinesi, TV, oyun konsolları, şarj aletleri gibi bu elektrik vampirleri sizin düşündüğünüzden çok daha fazla enerji harcıyor.""",
  """•	Enerji tasarruflu ampul kullanalım. LED, kompakt floresan ampul ve halojen lambalar eski lamba modellerine göre %80’e kadar daha az enerji tüketmekle birlikte %25 daha uzun ömürlüdürler.
""", """Dijital Temizlik İçin Önerimiz;
•	Gereksiz e-posta ve ilgilenmediğimiz tanıtım maillerini haftalık silebiliriz.""",
  """Dijital Temizlik İçin Önerimiz;
•	Telefonumuzda en güzel kareyi yakalayana kadar çektiğimiz ve beğenmediğimiz fotoğrafları silmekle devam edebiliriz.""",
  """Dijital Temizlik İçin Önerimiz;
•	Bir şekilde kaydolduğumuz ama zamanla ilgimizi çekmeyen konularda gelen düzenli bülten aboneliklerinden çıkabiliriz.""",
  """Dijital Temizlik İçin Önerimiz;
•	Telefonumuza yükleyip kullanmaktan vazgeçtiğimiz uygulamaları telefonumuzdan kaldırabiliriz
""", """Daha Az Su Harcaman için yapabileceğiniz küçük görünen büyük adımlar; 
•	Yeşillikleri yıkadığınız ya da yumurta kaynattığınız suyu çiçeklerinize vererek değerlendirmeye ne dersiniz?""",
"""Daha Az Su Harcaman için yapabileceğiniz küçük görünen büyük adımlar; 
•	Balkonu her zaman yıkamak yerine arada  silmeyi tercih etmenin bile sürdürülebilir yaşama katkı sağlayacağını unutmayın.""",
"""Daha Az Su Harcaman için yapabileceğiniz küçük görünen büyük adımlar; 
•	Banyo sırasındaki biriken sularınızı balkonun kaba kirini almak için kullanabilirsiniz.
""", """Yürüme konusunda devlet bazında atılacak büyük adımlar olmakla birlikte işte bireysel olarak yapabilecekleriniz;
•	Hem kilo kontrolü hem de doğa için en güzeli yürümek. Sağlığınız ve zamanınız el veriyorsa her zaman yürümeyi tercih edin. """,
  """Yürüme konusunda devlet bazında atılacak büyük adımlar olmakla birlikte işte bireysel olarak yapabilecekleriniz;
•	Yürümek için zamanınız yoksa sırasıyla bisiklet, toplu taşıma gibi alternatiflere yönelebilirsiniz. Sonuçta her gün çoğumuz aynı yerden aynı yöne gidiyoruz.
""", """Kâğıt Tüketimini Azaltmak için yapabilecekleriniz;
•	Bir kişinin faturaları her yıl en az 2 kiloya yakın kâğıt atık oluşturuyor. Bu kâğıtların çöpe gitmesini faturalarınızı internetten ödeyerek önleyebilirsiniz. Hata bazı şirketler faturalarını internetten ödeyenlere indirim sunuyor.""",
  """Kâğıt Tüketimini Azaltmak için yapabilecekleriniz;
•	Gerçekten gerekli ise çıktı almayı alışkanlık haline getirebiliriz. Kullanılmış kâğıtları not almak için tekrar tekrar kullanmak da sürdürülebilirlik açısından çok değerli bir alışkanlıktır.
""",
  """Kompost o kadar değerli ki, ismi siyah altın olarak anılmakta. Her gün çıkardığınız çöpün neredeyse yarısı organik maddelerden oluşuyor. Bu maddeleri yeniden değerlendirerek toprağı zenginleştirecek ve bitkileri güçlendirecek kompost üretmek mümkün. 
• Et, balık ve süt ürünlerini kompostlamaktan kaçının.
• Çöpleri Ayrıştırın """,
  """Geri Dönüşüm için önerimiz;
• Pil Kutusuna Atın """,
  """Geri Dönüşüm için önerimiz;
• Kullanmadığınız Giysileri Giysi Kutusuna Atın""",
  """Geri Dönüşüm için önerimiz;  
• Kullanılmış Kitapları Geri Dönüşüme Verin"""
];

var k = ["•	Bazı aletler kullanmadığınız zaman bile prize bağlı ise elektrik harcayabiliyor. Fön makinesi, TV, oyun konsolları, şarj aletleri gibi bu elektrik vampirleri sizin düşündüğünüzden çok daha fazla enerji harcıyor.",
"•	Enerji tasarruflu ampul kullanalım. LED, kompakt floresan ampul ve halojen lambalar eski lamba modellerine göre %80’e kadar daha az enerji tüketmekle birlikte %25 daha uzun ömürlüdürler."];


var di = ["•	Gereksiz e-posta ve ilgilenmediğimiz tanıtım maillerini haftalık silebiliriz.",
  "•	Telefonumuzda en güzel kareyi yakalayana kadar çektiğimiz ve beğenmediğimiz fotoğrafları silmekle devam edebiliriz.",
  "•	Bir şekilde kaydolduğumuz ama zamanla ilgimizi çekmeyen konularda gelen düzenli bülten aboneliklerinden çıkabiliriz.",
  "•	Son olarak, telefonumuza yükleyip kullanmaktan vazgeçtiğimiz uygulamaları telefonumuzdan kaldırabiliriz."];


var da = ["•	Yeşillikleri yıkadığınız ya da yumurta kaynattığınız suyu çiçeklerinize vererek değerlendirmeye ne dersiniz?",
  "•	Balkonu her zaman yıkamak yerine arada  silmeyi tercih etmenin bile sürdürülebilir yaşama katkı sağlayacağını unutmayın.",
  "•	Banyo sırasındaki biriken sularınızı balkonun kaba kirini almak için kullanabilirsiniz."];


var y = ["•	Hem kilo kontrolü hem de doğa için en güzeli yürümek. Sağlığınız ve zamanınız el veriyorsa her zaman yürümeyi tercih edin. ",
  "•	Yürümek için zamanınız yoksa sırasıyla bisiklet, toplu taşıma gibi alternatiflere yönelebilirsiniz. Sonuçta her gün çoğumuz aynı yerden aynı yöne gidiyoruz."];


var ka = ["•	Bir kişinin faturaları her yıl en az 2 kiloya yakın kâğıt atık oluşturuyor. Bu kâğıtların çöpe gitmesini faturalarınızı internetten ödeyerek önleyebilirsiniz. Hata bazı şirketler faturalarını internetten ödeyenlere indirim sunuyor.",
  "•	Gerçekten gerekli ise çıktı almayı alışkanlık haline getirebiliriz. Kullanılmış kâğıtları not almak için tekrar tekrar kullanmak da sürdürülebilirlik açısından çok değerli bir alışkanlıktır."];


var ko = ["Et, balık ve süt ürünlerini kompostlamaktan kaçının."];

var p = ["•	Dışarı her çıktığınızda marketten su almak yerine yeniden kullanabileceğiniz mataraları seçerek gereksiz plastik kirliliğinin önüne geçebilirsiniz.",
"•	Planlı gezileriniz için plastik çatal, bıçak, bardak yerine evden getirdiğimiz mutfak malzemelerini kullanmayı tercih edebilirsiniz.",
" •	Restorana gittiğinizde içecekle birlikte plastik pipet kullanmak istemediğinizi özellikle belirtebilirsiniz.",
"•	Plastik poşetler yerine tekrar tekrar kullanabileceğiniz bez poşetler edinebilirsiniz.",
"•	Hazırlıksız yakalanmamak için çantanıza ve arabanıza yedek bez poşetler koymak sürdürülebilir yaşam için iyi bir fikir olabilir."];

var ge = ["• Pil Kutusuna Atın ",
  "• Kullanmadığınız Giysileri Giysi Kutusuna Atın",
  "• Kullanılmış Kitapları Geri Dönüşüme Verin"];