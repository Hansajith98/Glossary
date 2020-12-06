import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glossary/screens/search.dart';
import 'package:glossary/screens/sidebar.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      create: (context) => NavigationBloc(),
      child: Scaffold(
        drawer: SideMenue(),
        appBar: AppBar(
          title: Align(alignment: Alignment.center, child: Text('Glossary')),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blueAccent,
              ),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
          ],
        ),
      ),
    );
  }
}
