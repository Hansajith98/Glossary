import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenue extends StatefulWidget {
  @override
  _SideMenueState createState() => _SideMenueState();
}

class _SideMenueState extends State<SideMenue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x11111111),
      ),
      width: 250,
      child: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),

              Image(
                image: AssetImage('assets/mainLogo.jpg'),
                width: 100,
                height: 100,
              ),

              // Faculty of Applied sciences

              ExpansionTile(
                  title:
                      Text('Applied sciences', style: TextStyle(fontSize: 16)),
                  children: [
                    ListTile(
                      title: Text('Computing and information systems'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Physical science and technology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Natural resource managment'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Food science technology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.FSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Sport science and physical education'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.SSPEWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),

              // faculty of technology

              ExpansionTile(
                  title: Text('Technology', style: TextStyle(fontSize: 16)),
                  children: [
                    ListTile(
                      title: Text('BioSystems Technology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.BSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Engineering Technology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.ETWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),

              // faculty of Agriculture

              ListTile(
                title: Text('Agriculture'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.AGRWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),

              // faculty of managment studies

              ListTile(
                title: Text('Management Studies'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.MGMTWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),

              // faculty of social sciences and languages

              ListTile(
                title: Text('Social Sciences and Languages'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.FSSLWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),

              // faculty of geomatics

              ListTile(
                title: Text('Geomatics'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.GEOWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),

//              Align(
//                alignment: Alignment.center,
//                child: Text('Main Students Union'),
//              ),
//              Align(
//                alignment: Alignment.center,
//                child: Text('Sabragamuwa University of Sri Lanka'),
//              ),
              ListTile(
                leading: null,
                title: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text('Main Students Union ',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center),
                      Text('Sabragamuwa University of Sri Lanka ',textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Source Code '),
                      ImageIcon(
                        AssetImage('assets/github.png'),
                        size: 40,
                      ),
                      ImageIcon(
                        AssetImage('assets/GitHub-Mark-32px.png'),
                        size: 20,
                      ),
                    ],
                  ),
                  onTap: () => launch("https://github.com/Hansajith98/Glossary"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
