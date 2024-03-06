class Users {
  final String name;
  final String email;
  final String password;

  Users (this.name, this.email, this.password);

  static List<Users> users = [];

  static void registerUser(String name, String email, String password)
  {
    Users user = new Users(name, email, password);
    users.add(user);
  }

  static String getUser(String gemail, String gpassword)
  {
    for(var user in users)
      {
        if((user.email == gemail) && (user.password == gpassword))
          {
            return user.name;
          }
      }
    return "User not found";
  }
}