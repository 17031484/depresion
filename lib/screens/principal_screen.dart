import 'package:depresion/models/diagnostico.dart';
import 'package:depresion/provider/firebase_provider.dart';
import 'package:depresion/screens/datos.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  PrincipalScreen({Key? key}) : super(key: key);
  static const routeName = '/principal';
  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  int r1 = 0;
  int r2 = 0;
  int r3 = 0;
  int r4 = 0;
  int r5 = 0;
  int r6 = 0;
  int r7 = 0;
  int r8 = 0;
  int r9 = 0;
  String dropdownValue1 = '0';
  String dropdownValue2 = '0';
  String dropdownValue3 = '0';
  String dropdownValue4 = '0';
  String dropdownValue5 = '0';
  String dropdownValue6 = '0';
  String dropdownValue7 = '0';
  String dropdownValue8 = '0';
  String dropdownValue9 = '0';
  Diagnostico? _diagnostico;
  String? mensaje;
  late FirebaseProvider _provider;
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _provider = FirebaseProvider();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Form(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Detección de depresión'),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              children: [
                Text('Paciente: '),
                Text(
                  args.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    'Durante las ultimas 2 semanas ¿Qué tan seguido \nha tenido molestias debido a los siguientes\nproblemas?'),
              ],
            ),
            Column(
              children: [
                Text(
                  '0 para ningún día\n1 para varios días\n2 para más de la mitad de los días\n3 para casi todos los días',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('1. Poco interés o placer en hacer cosas'),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                      r1 = int.parse(dropdownValue1);
                    });
                  },
                  value: dropdownValue1,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Text(
                    '2. Se ha sentido decaido(a), deprimido(a),\no sin esperanzas'),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                      r2 = int.parse(dropdownValue2);
                    });
                  },
                  value: dropdownValue2,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text(
                    '3. Ha tenido dificultad para quedarse o \npermanecer dormido(a), o ha dormido \ndemasiado '),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                      r3 = int.parse(dropdownValue3);
                    });
                  },
                  value: dropdownValue3,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text('4. Se ha sentido cansado(a) o con poca \nenergía'),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue4 = newValue!;
                      r4 = int.parse(dropdownValue4);
                    });
                  },
                  value: dropdownValue4,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text('5. Sin apetito o a comido en exceso'),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue5 = newValue!;
                      r5 = int.parse(dropdownValue5);
                    });
                  },
                  value: dropdownValue5,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text(
                    '6. Se ha sentido mal con usted mismo(a)\no que es un fracaso o que ha quedado mal\ncon usted mismo o con su familia'),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue6 = newValue!;
                      r6 = int.parse(dropdownValue6);
                    });
                  },
                  value: dropdownValue6,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text(
                    '7. Ha tenido difucultad para concentrarse en\nciertas actividades, tales como leer el \nperiódico o ver la televisión'),
                SizedBox(
                  width: 10.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue7 = newValue!;
                      r7 = int.parse(dropdownValue7);
                    });
                  },
                  value: dropdownValue7,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text(
                    '8. ¿Se ha movido o hablado tan lento que\notras personas podrían haberlo notado?\no de lo contrario muy inquieto(a) o agitado(a)\nque ha estado moviéndose mucho más de lo \nnormal'),
                SizedBox(
                  width: 15.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue8 = newValue!;
                      r8 = int.parse(dropdownValue8);
                    });
                  },
                  value: dropdownValue8,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(
              children: [
                Text(
                    '9. Pensamientos de que estaría mejor\nmuerto(a) o de lastimarse de alguna manera'),
                SizedBox(
                  width: 15.0,
                ),
                DropdownButton(
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue9 = newValue!;
                      r9 = int.parse(dropdownValue9);
                    });
                  },
                  value: dropdownValue9,
                  items: <String>['0', '1', '2', '3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                _diagnostico = Diagnostico(
                    nombre: args.name,
                    tel: args.tel,
                    r1: r1,
                    r2: r2,
                    r3: r3,
                    r4: r4,
                    r5: r5,
                    r6: r6,
                    r7: r7,
                    r8: r8,
                    r9: r9);
                int total_diag = _diagnostico!.calcResultado();
                print(total_diag);
                if (total_diag == 1) {
                  mensaje =
                      'Usted se encuentra dentro del rango mínimo de depresión, si usted se siente mal es importante que acuda con un psicólogo. Recuerde que no está solo';
                } else if (total_diag == 2) {
                  mensaje =
                      'Usted se encuentra dentro del rango medio de depresión, su estabilidad es lo más importante, recibirá instrucciones a la brevedad de nuestro experto. Recuerde que no está solo.';
                } else if (total_diag == 3) {
                  mensaje =
                      'Usted se encuentra dentro del rango grave de depresión, será agendado los más pronto posible para una cita con nuestro experto.';
                }

                try {
                  _provider.saveDiagnostico(_diagnostico!); //guardamos en DB
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Datos guardados correctamente')));
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Error al guardar los datos')));
                }
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Diagnóstico'),
                          content: Text(mensaje!),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/barra'),
                              child: const Text('Aceptar'),
                            ),
                          ],
                        ));
              },
              child: const Text('Enviar'),
            )
          ],
        ),
      ),
    ));
  }
}
