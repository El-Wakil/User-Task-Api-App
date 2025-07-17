import '../../../core/api_service.dart';
import '../models/user.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<List<User>> getUsers() async {
    try {
      final response = await _apiService.get('/users');
      final List<dynamic> usersJson = response.data;
      return usersJson.map((json) => User.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch users: $e');
    }
  }
}
