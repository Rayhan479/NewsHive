import 'package:flutter/material.dart';
import 'package:newshive/views/login_page.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Register", 
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
              ),
              const SizedBox(height: 14),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "input nama lengkap",
                  labelText: "nama lengkap",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.abc)
                ),
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
              TextFormField(
                obscureText: isObsecure,
                decoration: InputDecoration(
                  hintText: "input konfirmasi password",
                  labelText: "Konfirmasi password",
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
                  onPressed: (){}, 
                  child: const Text("Register", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sudah punya akun"),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text("Login"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}