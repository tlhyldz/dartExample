/*Soru1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca çevre ve alan
hesaplayan methotlar olmalı.

Soru2
Ogrenci isimli sınıf oluşturun. Bu sınıfta öğrencinin idsi ve not değeri tutulmalı. 100 elemanlı
bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri
yazdırın.
*/

import 'dart:math';

import 'cember_daire.dart';
import 'ogrenci.dart';

void main(List<String> args) {
 CemberDaire c1 = CemberDaire(4);
 print("Çevre : ${c1.cevreHesapla()}"); 
 print("Alan : ${c1.alanHesapla()}"); 


 Ogrenci ogr1=Ogrenci(id:5,notDegeri:10);
 List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());

 ogrenciListesiniDoldur(tumOgrenciler);
 for(Ogrenci oankiOgrenci in tumOgrenciler){
  print(oankiOgrenci);
 }
 print("Tüm öğrencilerin ortalaması "+ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());

}

void ogrenciListesiniDoldur(List<Ogrenci> liste){
  for (int i=0; i<liste.length; i++){
    liste[i] = Ogrenci(id:Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste){
  int toplam = 0;
  for(Ogrenci oankiOgrenci in liste){
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / liste.length;
}

