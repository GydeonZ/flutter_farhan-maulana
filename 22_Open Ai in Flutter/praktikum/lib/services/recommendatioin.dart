import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:praktikum/constant/openai.dart';
import 'package:dio/dio.dart';
import 'package:praktikum/models/openai_model.dart';
import 'package:praktikum/utils/openai_utils.dart';

class RecommendationService {
  final Dio _dio = Dio();
  Future<GptData> getrecommendation({
    required String budget,
    required String camera,
    required String storage,
  }) async {
    late GptData gptData = GptData(
      id: "",
      object: "",
      created: 0,
      model: "",
      choices: [],
      usage: Usage(completionTokens: 0, promptTokens: 0, totalTokens: 0),
    );

    try {
      var url = Utils.baseurl;

      Map<String, String> headers = {
        'Content-type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey'
      };

      final formatcurrency = NumberFormat.currency(
          locale: 'id_ID', symbol: 'IDR', decimalDigits: 0);

      String smartPhoneBudget = formatcurrency.format(int.parse(budget));
      String promptdata =
          "you are a smartphone expert. Please give me a recommendation from budget equals to $smartPhoneBudget with camera requirement $camera and Internal storage size $storage";

      final data = jsonEncode({
        "model": "text-davinci-003",
        "prompt": promptdata,
        "temperature": 0.4,
        "max_tokens": 64,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0
      });
      final response =
          await _dio.post(url, options: Options(headers: headers), data: data);

      if (response.statusCode == 200) {
        gptData = gptDataFromJson(response.data);
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
    return gptData;
  }
}
