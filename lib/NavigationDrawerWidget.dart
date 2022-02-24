import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 75, 190, .7),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Diagnóstico'),
              accountEmail: Text('Sistema experto IA'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.vexels.com/media/users/3/151709/isolated/preview/098c4aad185294e67a3f695b3e64a2ec-icono-de-avatar-de-doctor.png'),
              ),
              decoration: BoxDecoration(color: Color.fromARGB(1, 37, 86, 247)),
            ),
            ListTile(
              title: Text('Lista de diagnósticos'),
              subtitle: Text('Ver lista'),
              leading: Icon(Icons.remove_red_eye),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/ver');
              },
            ),
          ],
        ),
      ),
    );
  }
}
