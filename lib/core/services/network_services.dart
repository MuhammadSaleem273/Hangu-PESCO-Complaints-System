import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkServices {
  /// Use service account credentials to get an authenticated and auto refreshing client.
  static Future<String> obtainAuthenticatedClient() async {
    

    AuthClient client =
        await clientViaServiceAccount(accountCredentials, scopes);
    return client.credentials.accessToken.data;
  }

  static Future sendNotification(
      {String? token, String? title, String? body}) async {
    String accessToken = await obtainAuthenticatedClient();
    String serverKey = 'Bearer ' + accessToken;
    Map<String, String> headerMap = {
      "Content-Type": "application/json",
      "Authorization": serverKey
    };

    Map notificationMap = {'title': title, 'body': body};

    Map dataMap = {
      "click_action": "FLUTTER_NOTIFICATION_CLICK",
      "id": "1",
      "status": "done",
    };

    Map bodyMap = {
      "message": {
        "token": token,
        "notification": notificationMap,
        "data": dataMap,
      }
    };
    var response = await http.post(
        Uri.parse(
            'https://fcm.googleapis.com/v1/projects/hangu-pesco-complaint/messages:send'),
        headers: headerMap,
        body: jsonEncode(bodyMap));
    print("Response code: ${response.statusCode}");
    print("Response body: ${response.body}");
    var data = jsonDecode(response.body);
    return;
  }
}
