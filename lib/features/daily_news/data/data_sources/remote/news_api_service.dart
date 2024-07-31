import 'package:news_app/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/constants.dart';
import 'package:dio/dio.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/everything')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("q") String ? q,
    @Query("from") String ? from,
    @Query("sortBy") String ? sortBy,
    @Query("apiKey") String ? apiKey,
  });
}