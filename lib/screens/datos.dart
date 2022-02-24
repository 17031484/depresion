import 'package:depresion/screens/principal_screen.dart';
import 'package:depresion/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class DatosScreen extends StatefulWidget {
  DatosScreen({Key? key}) : super(key: key);

  @override
  _DatosScreenState createState() => _DatosScreenState();
}

class _DatosScreenState extends State<DatosScreen> {
  final keyForm = GlobalKey<FormState>(); //valiación del formulario
  TextEditingController _controllerNombre = TextEditingController();
  TextEditingController _controllerTel = TextEditingController();
  late final String nombre;
  late final String tel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              TextFormField(
                validator: (valor) {
                  if (valor!.isEmpty) {
                    return "Campo obligatorio";
                  }
                  return null; //sin error
                },
                controller: _controllerNombre,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    icon: const Icon(Icons.person),
                    hintText: 'Nombre completo',
                    labelText: 'Nombre completo',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (valor) {
                  if (valor!.isEmpty) {
                    return "Campo obligatorio";
                  }
                  return null; //sin error
                },
                controller: _controllerTel,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    filled: true,
                    icon: const Icon(Icons.phone),
                    hintText: 'Teléfono de contacto',
                    labelText: 'Teléfono de contacto',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (keyForm.currentState!.validate()) {
                      nombre = _controllerNombre.text;
                      tel = _controllerTel.text;
                      Navigator.pushNamed(
                        context,
                        PrincipalScreen.routeName,
                        arguments: ScreenArguments(
                          nombre,
                          tel,
                        ),
                      ).whenComplete(() => setState(() {}));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Revise formulario')));
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Guardar',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String name;
  final String tel;

  ScreenArguments(this.name, this.tel);
}
