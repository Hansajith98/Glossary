import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenue extends StatefulWidget {
  @override
  _SideMenueState createState() => _SideMenueState();
}

class _SideMenueState extends State<SideMenue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            // Faculty of Applied sciences

            ExpansionTile(title: Text('Applied sciences'), children: [
              ListTile(
                title: Text('CIS'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.CISWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('PST'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.PSTWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('NR'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.NRWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('FST'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.FSTWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('SSPE'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.SSPEWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
            ]),

            // Faculty of Agriculture

            ExpansionTile(title: Text('Agriculture'), children: [
              ListTile(
                title: Text('Agri business managment'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.CISWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Exprt agri culture'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.PSTWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Live stock production'),
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.NRWordsClickedEvent);
                  Navigator.pop(context);
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
