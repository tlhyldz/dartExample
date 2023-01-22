/*Odev
1- Ad,soyad ve yaşı farklı değişkenlerde saklayıp ekrana 
"Benim adım cengiz han , yaşım 20 ve tüm ismimdeki karakter sayısı 9'dur." yazdır

2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini yazdır,
birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12 dir */


//Cevaplar
void main(List<String> args) {
  String ad = "Cengiz";
  String soyAd = "Han";
  int yas = 20;

  print("Benim adım $ad $soyAd, yaşım $yas ve tüm ismimdeki karakter sayısı: ${(ad+soyAd).length}'dur.");

  int kenar1 = 3;
  int kenar2 = 4;
  int kenar3 = 5;
  print("Birinci kenar $kenar1, ikinci kenar $kenar2, üçüncü kenar $kenar3 ve üçgenin çevresi ${kenar1+kenar2+kenar3}'dir.");

}