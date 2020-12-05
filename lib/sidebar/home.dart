import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glossary/pages/searchResult.dart';
import 'package:glossary/sidebar/search.dart';
import 'package:glossary/sidebar/sidebar.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'dart:async';
import '../pages/searchResult.dart';

class SideBarLayout extends StatefulWidget {
  @override
  _SideBarLayoutState createState() => _SideBarLayoutState();
}

class _SideBarLayoutState extends State<SideBarLayout> {
  TextEditingController _controller = TextEditingController();

  Timer _debounce;

  Seacrh search = new Seacrh();

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
