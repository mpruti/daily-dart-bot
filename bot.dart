import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_button_test');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    print('Siteye başarıyla girildi.');

    // Butona tıklama gibi bir istek gönderilecekse buraya ekle
    final buttonResponse = await http.post(
      Uri.parse('https://example.com/button-click'),
    );

    if (buttonResponse.statusCode == 200) {
      print('Butona başarıyla tıklandı.');
    } else {
      print('Butona tıklanamadı: ${buttonResponse.statusCode}');
    }
  } else {
    print('Siteye erişilemedi: ${response.statusCode}');
  }
}
