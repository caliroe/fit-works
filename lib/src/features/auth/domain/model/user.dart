class User {
  final String username;
  final String password;

  const User(this.username, this.password);
  
  static User getUser() {
    User user = const User(
        'gabriel@iesb.edu',
        '123');

    return user;
  }
}
