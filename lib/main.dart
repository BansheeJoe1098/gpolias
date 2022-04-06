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

       primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),

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
            backgroundColor: Color(0xff5808e5),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
                Tab(text: 'CATS', icon: Icon(Icons.music_note)),
                //Tab(text: 'BIRDS', icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('DOGS')),
              Center(child: Text('CATS')),
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
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),

              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario o Correo Electronico',
                  icon: Icon(Icons.ac_unit_outlined),
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


