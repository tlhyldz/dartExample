/*
Bir fonksiyon yazın bu fonkison aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye
sonunda sonuclanacaktır ve getirilen kisi bilgisi map olarak alınacaktır. Bu map yapısında username
ve id bilgisi olması yeterlidir.
*
Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon
yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları
olan bir liste döndürecektir.
*
Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu
döndüren bir fonksiyon yazın. Bu fonksiyon 1 saniye sürecektir.

 */

void main(List<String> args) {
  kisiBilgisi(5).then((value){
    print(value);
    kurslar(value['username']).then((List kurslar){
      print(kurslar);
      String ilkKurs = kurslar[0];
      yorumlar(ilkKurs).then((String yorum){
          print(yorum);
      }); 
    });
  });
}

Future<Map<String,dynamic>> kisiBilgisi(int id){
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String,dynamic>>.delayed(Duration(seconds: 4),(){
    return {'username': 'root','id':id};
  });
}

Future<List<String>> kurslar(String username){
  print("$username kullanıcısının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4),(){
    return ['flutter','python','cyber security'];
  });
}

Future<String>yorumlar(String kursAdi){
  return Future<String>.delayed(Duration(seconds: 1),(){
    return "Kurs çok faydalı";
  });
}