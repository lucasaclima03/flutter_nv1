import 'package:flutter_nv1/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
