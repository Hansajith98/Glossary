import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glossary/pages/searchResult.dart';
import 'package:glossary/services/WordService.dart';
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

class DataSearch extends SearchDelegate<String> {
  var _wordservices = WordService();

  var recentS = ["ss"];
  var search = ["Ee", "##"];

  getWords() async {
    var words = await _wordservices.readWords();
    return words;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          Navigator.pop(context);
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        });
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty
        ? recentS
        : search.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.access_time),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
    throw UnimplementedError();
  }
}
