import 'package:Cuponzim/routes/app_routes.dart';
import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}
// variables

final nomeController = TextEditingController();
final passwordController = TextEditingController();
bool visible = true;

class _RegisterState extends State<Register> {
  @override
  void initState() {
    nomeController.clear();
    passwordController.clear();
    super.initState();
  }

  Widget build(BuildContext context) {
    Text header = Text(
      'Cadastro',
      style: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    );

    TextFormField senha = TextFormField(
      keyboardType: TextInputType.text,
      controller: passwordController,
      obscureText: visible,
      style: new TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
      validator: (value) => value.isEmpty ? 'Digite seu senha' : null,
      decoration: InputDecoration(
          fillColor: Color(0xFFFFFFFF),
          suffixIcon: new GestureDetector(
              onTap: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(visible ? Icons.visibility : Icons.visibility_off,
                    color: primaryColor),
              )),
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(25.0, 20.0, 30.0, 20.0),
          hintText: "Senha",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Color(0xFFFFFFFF),
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: primaryColor, width: 2.0),
          )),
    );

    TextFormField name = TextFormField(
      keyboardType: TextInputType.text,
      controller: nomeController,
      style: new TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
      decoration: InputDecoration(
          fillColor: Color(0xFFFFFFFF),
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(25.0, 20.0, 30.0, 20.0),
          hintText: "Usuário",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Color(0xFFFFFFFF),
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: primaryColor, width: 2.0),
          )),
    );

    final finaltext = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Já possui uma conta?',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w300, color: Colors.grey)),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Text('Entrar',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: primaryColor))
      ],
    );
    RaisedButton cadastrar = RaisedButton(
      onPressed: () {
        /*  Navigator.of(context).pushNamed(AppRoutes.Onboarding); */
        /*  postData(); */
      },
      color: primaryColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        'Cadastrar',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: lightColor,
        ),
      ),
    );

    /* Future<String> postData() async {
      try {
        http.Response response = await http.post(
            Uri.encodeFull(DotEnv().env['HTTP_ENDPOINT'] + "auth/users/"),
            body: {
              "username": nomeController.text,
              "password": passwordController.text,
            });
        var jsonData = response.body;
        var parsedJson = json.decode(jsonData);
        var check = parsedJson['id'];
        print(parsedJson);
        if (check == null) {
          _errorSheet(context);
          Future.delayed(const Duration(seconds: 3), () {
            Navigator.pop(context);
          });
        } else {
          _okSheet(context);
          Future.delayed(const Duration(seconds: 3), () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(AppRoutes.LOGIN_PAGE);
          });
        }
        /* var status = parsedJson['success']; */

      } catch (e) {
        print(e);
      }
    } */

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light // Dark == white status bar -- for IOS.
        ));
    return Scaffold(
        backgroundColor: lightColor,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back,
                              size: 32, color: primaryColor),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        header,
                        Padding(
                          padding: EdgeInsets.all(70.0),
                        ),
                        name,
                        Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        senha,
                        Padding(
                          padding: EdgeInsets.all(30.0),
                        ),
                        cadastrar,
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.LOGIN_PAGE);
                            },
                            child: Center(
                              child: finaltext,
                            )),
                      ],
                    )))));
  }
}
