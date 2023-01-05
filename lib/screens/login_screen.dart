//? importaciones terceros

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/providers/providers.dart';

//? importaciones propias 

import 'package:prueba_tecnica/ui/ui.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {

   static String nameroute = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundLogin(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 300),

              CardLogin(
                child: Column(
                  children:  [

                    const SizedBox(height: 20),


                    const Text(
                      'Inicia Seción',
                      style: TextStyle(fontSize: 50,  ),
                    ),
                    
                    const SizedBox(height: 20),

                    ChangeNotifierProvider(
                    create: (_) => LoginFormProvider(),
                    child: _LoginForm(), 
                    ),

                  ],
                ))

            ]),
        )
      )
    );
  }
}

  class _LoginForm extends StatelessWidget {
    

    @override
    Widget build(BuildContext context) {

      final loginForm = Provider.of<LoginFormProvider>(context);

      return Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: loginForm.formKey,

            autovalidateMode: AutovalidateMode.onUserInteraction,

            child: Column(
              children: [
                
                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                    icon: Icons.alternate_email_outlined , 
                    labelText: 'E - mail', 
                    hintText: 'E-mail'),
                  validator: (value) {

                    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp  = RegExp(pattern);

                    return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El valor ingresado no luce Como un correo';
                  },
                ),

                const SizedBox( height: 30),

                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  obscureText: true,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecorations.authInputDecoration(
                    icon: Icons.password, 
                    labelText: 'Password', 
                    hintText: 'Password'),
                  validator: (value) {
                    return (value != null && value.length >= 6)
                    ? null
                    : 'La contaseña debe ser mayor a 6 Caracteres';
                  },
                ),

                const SizedBox( height: 30),

                Container(
                padding: const EdgeInsets.all(10),
                  child: Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 5,
                        backgroundColor: const Color.fromRGBO(36, 206, 158, 1),
                      ),
                      onPressed: loginForm.isLoading ? null : () async {

                        FocusScope.of(context).unfocus();

                        loginForm.isValidForm();

                        if ( !loginForm.isValidForm()) return;
                        
                        loginForm.isLoading = true;

                        await Future.delayed(const Duration(seconds: 3));

                        loginForm.isLoading = false;

                        Navigator.pushReplacementNamed(context, 'HomeScreen');
                      },
                      child: Container(                        
                        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            loginForm.isLoading 
                            ? 'Espere...'
                            : 'Ingresar ',
                            style: const TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      )
                    ),
                  ),
                )

              ],
            )
          )
        );
    }
  }



