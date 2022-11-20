class RequestPost {
  var username;
  var password;
  var email;

  RequestPost({
    this.username,
    this.password,
    this.email,
  });

  Map<String, dynamic> insertInfo() {
    Map<String, dynamic> data = {};
    data['username'] = username.toString();
    data['password'] = password.toString();
    data['email'] = email.toString();
    return data;
  }

  Map<String, dynamic> login() {
    Map<String, dynamic> data = {};
    data['username'] = username.toString();
    data['password'] = password.toString();
    return data;
  }

  Map<String, dynamic> put() {
    Map<String, dynamic> data = {};
    data['password'] = password.toString();
    data['email'] = email.toString();
    return data;
  }

  @override
  String toString() {
    return 'RequestPost{username: $username, password: $password, email: $email}';
  }
}
