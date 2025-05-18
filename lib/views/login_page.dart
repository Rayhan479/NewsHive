import 'package:flutter/material.dart';

import 'package:newshive/views/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObsecure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Login", 
                  style: TextStyle(
                    fontSize: 36, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 14),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "input username",
                    labelText: "username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    // jangan kosong (null atau "")
                    if (text == null || text.isEmpty) {
                      return "Username Wajib Di isi";
                    }
                    // harus sama dengan 6 karakter 
                    else if(text.length != 6){
                      return "Username Harus 6 karakter";
                    }else{
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 14),
                TextFormField(
                  obscureText: isObsecure,
                  decoration: InputDecoration(
                    hintText: "input password",
                    labelText: "password",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                       
                      icon: isObsecure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off))
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        
                      }
                    }, 
                    child: const Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum punya akun"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                    }, child: const Text("register"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}