import 'package:flutter/material.dart';

void main() {
  runApp(BanamenApp());
}

class BanamenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banamen',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final Color guinda = const Color(0xFF7B1E1E); // Color guinda personalizado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Encabezado compacto con ícono dentro de círculo blanco
          Container(
            color: guinda,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26,
                  child: Icon(Icons.account_balance,
                      color: Colors.black, size: 30),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Banamen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                  ),
                ),
              ],
            ),
          ),

          // Contenido
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Iniciar Sesion",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontFamily: 'serif',
                      ),
                    ),
                    const SizedBox(height: 30),
                    buildLabel("Nombre:"),
                    buildTextField("Nombre"),
                    const SizedBox(height: 20),
                    buildLabel("Correo electronico:"),
                    buildTextField("Correo electronico"),
                    const SizedBox(height: 20),
                    buildLabel("Contraseña:"),
                    buildTextField("Contraseña", obscureText: true),
                    const SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: guinda,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text(
                          "Iniciar Sesión",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'serif'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "¿No tienes una cuenta? ",
                          style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'serif'),
                        ),
                        Text(
                          "Registrarse",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'serif',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        fontFamily: 'serif',
      ),
    );
  }

  Widget buildTextField(String hint, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
    );
  }
}
