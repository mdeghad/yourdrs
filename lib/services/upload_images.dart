import 'dart:convert';
import 'package:YOURDRS_FlutterAPP/common/app_constants.dart';
import 'package:YOURDRS_FlutterAPP/data/model/upload_image.dart';
import 'package:YOURDRS_FlutterAPP/ui/patient_details/uploaded_images.dart';
import 'package:http/http.dart' as http;
import 'package:YOURDRS_FlutterAPP/common/app_strings.dart';
class PinGenerateResponse {

  Future<UploadImage> postApiMethod(int MemberId,String Pin) async {
    String apiUrl = AppConstants.apiUrl;

    final json = {
      "memberId": MemberId,
      "imageName": Pin,
    };

    http.Response response = await http.post(
      apiUrl,
      body: jsonEncode(json),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    return UploadImage().fromJson(jsonResponse);
  }}