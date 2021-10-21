class AuthRepository{
  Future<void> login() async{
    print("Un momento porfavor");
    Future.delayed(Duration(seconds: 3));
    print("Iniciando sesion");
  }
}