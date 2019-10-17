import 'package:dio/dio.dart';
import 'package:request_api_equeck/api.dart';
import 'package:request_api_equeck/model/equeck_api.dart';
class ApiService {
  final _dio = Dio();
  Future<Api<Equeck>> getUrl(String url) async {
    try {
      var response = await _dio.get(url);
      return Api(Equeck.fromJson(response.data), null);
    } on DioError catch (e) {
      return Api(null, ApiError.fromRequestError(e));
    }
  }

  Future<Api<ListResponese<Equeck>>> getGitHubs(String url) async {
    try {
      Response response = await _dio.get(url);
      return Api(
          ListResponese<Equeck>(response.data, 'features',
              (item) => Equeck.fromJson(item), ),
          null);
    } on DioError catch (e) {
      return Api(null, ApiError.fromRequestError(e));
    }
  }

  // Future<List<Equeck>> getGitHubs(String url) async {
  //   List<Equeck> listResult = [];
  //   Response response = await _dio.get(url);
  //   var listItem = response.data['features'];
  //   listItem.map((i) {
  //     listResult.add(Equeck.fromJson(i));
  //   }).toList();
  //   return listResult;
  // }

}
