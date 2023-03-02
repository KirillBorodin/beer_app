
import 'package:beer_app/home/data_sources/remote/endpoints.dart';
import 'package:beer_app/home/dtos/beer_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'beers_api.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class BeersApi {
  factory BeersApi(Dio dio) = _BeersApi;

  @GET(Endpoints.beers)
  Future<List<BeerDto>> fetchBeers();
}
