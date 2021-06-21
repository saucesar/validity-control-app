import 'package:flutter/material.dart';
import 'package:validity_control_app/components/CustomDrawer.dart';
import 'package:validity_control_app/components/buttons/CardButton.dart';
import 'package:validity_control_app/components/pages/Login.dart';
import 'package:validity_control_app/components/pages/ProductsPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/home': (BuildContext context) => MyHomePage(title: 'Home'),
        '/products': (BuildContext context) => ProductsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double spacing = 10;
    double runSpacing = 10;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: CustomDrawer(context),
      body: Center(
        child: Wrap(
          spacing: spacing,
          runSpacing: runSpacing,
          children: <Widget>[
            SizedBox(
                width: (MediaQuery.of(context).size.width - spacing) / 2,
                height: 100,
                child: CardButton(
                  onPressed: () {
                    print('Products');
                    Navigator.of(context).pushNamed('/products');
                  },
                  icon: Icons.ac_unit,
                  title: 'Produtos',
                  subTitle: 'Lista de produtos',
                  context: context,
                )),
            SizedBox(
                width: (MediaQuery.of(context).size.width - 10) / 2,
                height: 100,
                child: CardButton(
                  onPressed: () {
                    print('Dates');
                  },
                  icon: Icons.calendar_today,
                  title: 'Validades',
                  subTitle: 'Lista de validades',
                  context: context,
                )),
            SizedBox(
                width: (MediaQuery.of(context).size.width - 10) / 2,
                height: 100,
                child: CardButton(
                  onPressed: () {
                    print('Categories');
                  },
                  icon: Icons.category,
                  title: 'Categorias',
                  subTitle: 'Lista de categorias',
                  context: context,
                )),
          ],
        ),
      ),
    );
  }
}
