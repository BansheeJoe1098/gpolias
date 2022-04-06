import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'GpoLias';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(

       primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(


        ),
        body: const MyStatefulWidget(
          title: _title,),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(''),

            automaticallyImplyLeading: false,
            backgroundColor: Colors.amber,
            bottom: TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                    text: 'Trabajos Realizados',
                    icon: Icon(Icons.alarm_on_rounded)),
                Tab(
                    text: 'Trabajos Pendientes',
                    icon: Icon(Icons.warning)),
                //Tab(text: 'BIRDS', icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    title: Text('Plomeria'),
                    leading: Icon(Icons.label),
                    trailing: Text('Privada del Rocio #36,Col.Vista Hermosa'),
                    isThreeLine: true,
                    subtitle: Text('Secondary text\nTertiary text'),
                  ),
                  ListTile(
                    title: Text('Plomeria'),
                    leading: Icon(Icons.label),
                    trailing: Text('Privada del Rocio #36,Col.Vista Hermosa'),
                  ),
                ],
              ),
              Center(
                  child:
                  Text('CATS')),
              //Center(child: Text('BIRDS')),
            ],
          ),
        ),
      ),
    );
  }
}





class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.asset('imagenes/Lias.png',width: 250, height: 250,),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),

              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario o Correo Electronico',
                  icon: Icon(Icons.account_circle),
                ),
              ),

            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contarseña',
                  icon: Icon(Icons.admin_panel_settings),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Olvido la Contrseña?',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    //print(nameController.text);
                    //print(passwordController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('No tienes cuenta'),
                TextButton(
                  child: const Text(
                    'Crear Cuenta',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}


