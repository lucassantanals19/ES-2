import 'package:flutter/material.dart';
import 'package:marketplace_online/Tabs/home_tab.dart';
import 'package:marketplace_online/Widgets/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(), //_pageController),
          //floatingActionButton: CartButton(),
        ),
        // Scaffold(
        //   appBar: AppBar(
        //     title: Text("Produtos"),
        //     centerTitle: true,
        //   ),
        //   drawer: CustomDrawer(_pageController),
        //   body: ProductsTab(),
        //   floatingActionButton: CartButton(),
        // ),
        // Scaffold(
        //   appBar: AppBar(
        //     title: Text("Lojas"),
        //     centerTitle: true,
        //   ),
        //   body: PlacesTab(),
        //   drawer: CustomDrawer(_pageController),
        // ),
        // Scaffold(
        //   appBar: AppBar(
        //     title: Text("Meus Pedidos"),
        //     centerTitle: true,
        //   ),
        //   body: OrdersTab(),
        //   drawer: CustomDrawer(_pageController),
        // )
      ],
    );
  }
}
// /// Flutter code sample for Scaffold

// // This example shows a [Scaffold] with a blueGrey [backgroundColor], [body]
// // and [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in
// // order to center the text within the [Scaffold]. The [FloatingActionButton]
// // is connected to a callback that increments a counter.
// //
// // ![](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold_background_color.png)

// import 'package:flutter/material.dart';

// void main() => runApp(const HomeScreen());

// /// This is the main application widget.
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// /// This is the stateful widget that the main application instantiates.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

/// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample Code'),
//       ),
//       body: Center(child: Text('You have pressed the button $_count times.')),
//       backgroundColor: Colors.blueGrey.shade200,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() => _count++),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
