import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karaoke_api/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../component/splash_screen_load.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var authApi = AuthApi();
  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 134.h,
                      left: 34.w,right: 34.w),
                  child: Column(children:  [
                    const Text("Welcome back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      // child: Image(image: AssetImage("assets/images/mobile.png"),width: 180.w,),
                      child: const Icon(Icons.person,size: 40,),
                    )
                  ],),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username...",
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),

                  ),
                  validator: (username){
                    if(username == null || username.isEmpty){
                      return "username không được để trống!";
                    }
                  },
                  onChanged: (value){
                    username = value;
                  },
                ),
                SizedBox(height: 30.h,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password...",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                  ),
                  validator: (password){
                    if(password == null || password.isEmpty){
                      return "username không được để trống!";
                    }
                  },
                  onChanged: (value){
                    password = value;
                  },
                ),
                ElevatedButton(onPressed: () async {
                  print("ahihiihihi $username $password");
                  if(_formKey.currentState!.validate()){
                    var response =await authApi.login(LoginRequest(
                        username: username,
                        password: password
                    ));
                    print("khoaine ${username}");
                    if(response == null){
                      showDialog(context: (context), builder: (context)=>const AlertDialog(
                        title: Text("Thông báo!"),
                        content: Text("Thông tin đăng nhập không hợp lệ"),
                      ));
                    }else{
                      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                      await sharedPreferences.setString(
                          "token", response.token ?? '');
                      defaultApiClient = ApiClient(
                          authentication: HttpBearerAuth()
                      );
                      (defaultApiClient.authentication as HttpBearerAuth).accessToken = (sharedPreferences.getString('token')??'');

                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          SplashScreenLoad()), (Route<dynamic> route) => false);
                    }
                  }
                }, child: Text("Đăng nhập"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
