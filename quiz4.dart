import 'dart:io';
import 'dart:math';
//1- Sehirleri tutan bir liste oluşturun 4 tane il ekleyip sırasıyla yazdırın.
void main(List<String> args) {
  List<String> sehirler =  List.filled(4, "");
  sehirler[0]="Denizli";
  sehirler[1]="İzmir";
  sehirler[2]="Muğla";
  sehirler[3]="Antalya";
  for(int i = 0; i<sehirler.length; i++){
    print(sehirler[i]);
  }
  print("---------------------------");
/*
2- Keyleri string değerleri int dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın 
işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisini tutan ve ekrana yazdırın
*/
  Map<String,dynamic> pc = {};
  pc["cekirdek"]= 16;
  pc["ram"]= 8;
  pc["ssd"]= true;
  print("Bilgisayardaki");
  for(var oankiEntry in pc.entries){
    print(" ${oankiEntry.key} : ${oankiEntry.value}");
  }
  print("---------------------------------");

/*
3- Herbir elemanında keyleri string value'ları dynamic olan bir liste oluşturun. Bu listedeki herbir
eleman il adını ilçe sayısını plaka kodunu tutsun ve yazdırın.
*/
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il_adi"] = "Denizli";
  eklenecekSehir1["ilce_sayisi"] = 15;
  eklenecekSehir1["plaka_kodu"] = 20;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il_adi"] = "İzmir";
  eklenecekSehir2["ilce_sayisi"] = 30;
  eklenecekSehir2["plaka_kodu"] = 35;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il_adi"] = "Ankara";
  eklenecekSehir3["ilce_sayisi"] = 51;
  eklenecekSehir3["plaka_kodu"] = 6;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  for(int i = 0; i<iller.length; i++){
    var oankiSehirMapYapisi = iller[i];
    print("Listenin ${i+1}. elemanında bulunan şehir adı: ${oankiSehirMapYapisi['il_adi']}, ilçe sayısı: ${oankiSehirMapYapisi['ilce_sayisi']}, plaka kodu ${oankiSehirMapYapisi['plaka_kodu']}");
  }
  print("-----------------------------------------------------------------");

  /* 
  3- Beş elemanlı iki farklı liste oluşturun. Elemanlar 0-50 ye kadar rastgele oluşturulsun. Bu elemanları bir listeye aktarın.
  Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.
  */
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List.filled(5, 0);
  List<int> liste3 = [];
  var sonSetYapisi = <int>{};

  for(int i = 0; i<5; i++){
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print("İlk liste = $liste1");
  print("İkinci liste = $liste2");

  liste3 = [...liste1, ...liste2];
  

  for(int gecici in liste3){
    sonSetYapisi.add(gecici*gecici);
  }
  print("Son liste = $liste3");
  print(sonSetYapisi);

/*
Kullanıcıdan aldığınız int pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde
girilen sayıların ortalamasını ekrana yazdırın.
*/
int girilenNot= 0;
List<int> girilenNotlar =<int> [];
do{
  print("Lütfen notunuzu giriniz: çıkış için -1");
  girilenNot = int.parse(stdin.readLineSync()!);
  if(girilenNot != -1){
    girilenNotlar.add(girilenNot);
  }
}while(girilenNot != -1);

print("Girilen not sayısı: ${girilenNotlar.length}");
double ortalama = listeninOrtalamasiniBul(girilenNotlar);
print("Notların ortalaması : $ortalama");

}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for(int i = 0; i<liste.length; i++){
    toplam = toplam + liste[i];
  }
  return toplam/liste.length;
}

