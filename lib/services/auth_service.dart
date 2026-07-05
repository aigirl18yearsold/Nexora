class AuthService {

  Future<void> signIn({
    required String email,
    required String password,
  }) async {

    // Firebase login will be added later

  }

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {

    // Firebase signup will be added later

  }

  Future<void> resetPassword(
    String email,
  ) async {

    // Firebase reset password

  }

  Future<void> signOut() async {

    // Firebase logout

  }

}
