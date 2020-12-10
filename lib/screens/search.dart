import 'package:glossary/services/WordService.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  var _wordservices = WordService();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
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
  }

  @override
  Widget buildResults(BuildContext context) {
    var resultList = _wordservices.searchWords(query);

    return FutureBuilder<Object>(
        future: resultList,
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            List<Map> resultList = snapshot.data;
            return ListView.builder(
              itemCount: resultList.length,
              itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(resultList[index]['englishword']),
                  subtitle: Text(resultList[index]['sinhalaword'])),
            );
          } else {
            return Container();
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var suggestionList = _wordservices.suggestWords(query);

    return FutureBuilder<Object>(
        future: suggestionList,
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            List<Map> suggestionList = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  query = suggestionList[index]['englishword'];
                  showResults(context);
                },
                leading: Icon(Icons.access_time),
                title: RichText(
                  text: TextSpan(
                    text: suggestionList[index]['englishword']
                        .substring(0, query.length),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                    children: [
                      TextSpan(
                        text: suggestionList[index]['englishword']
                            .substring(query.length),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              itemCount: suggestionList.length<5 ? suggestionList.length:5,
            );
          } else {
            return Container();
          }
        });
  }
}
