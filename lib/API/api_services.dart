import 'package:http/http.dart' as http;

class MyServices{

    static Future fetchData()async{
      var request = http.Request('GET', Uri.parse('https://www.episodate.com/api/most-popular?page=1'));


      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var res = await response.stream.bytesToString();
        return res;
      }
      else {
      print(response.reasonPhrase);
      return null;
      }

    }


  static Future fetchDescription(id)async{
    var request = http.Request('GET', Uri.parse('https://www.episodate.com/api/show-details?q=$id'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      return res;
    }
    else {
      print(response.reasonPhrase);
      return null;
    }

  }
}