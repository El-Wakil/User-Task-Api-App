import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/user_repository.dart';
import 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final UserRepository _userRepository;

  UsersCubit(this._userRepository) : super(UsersInitial());

  Future<void> fetchUsers() async {
    emit(UsersLoading());
    try {
      final users = await _userRepository.getUsers();
      emit(UsersLoaded(users));
    } catch (e) {
      emit(UsersError(e.toString()));
    }
  }
}
