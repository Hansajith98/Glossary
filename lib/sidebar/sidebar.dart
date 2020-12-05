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
                image: AssetImage('assets/logo.png'),
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

              // Faculty of Agriculture

              ExpansionTile(
                  title: Text(
                    'Agriculture',
                    style: TextStyle(fontSize: 16),
                  ),
                  children: [
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

              // faculty of managment studies

              ExpansionTile(
                  title: Text(
                    'Management studies',
                    style: TextStyle(fontSize: 16),
                  ),
                  children: [
                    ListTile(
                      title: Text('Accountancy and Finance'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Business Managment'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Marketing Managment'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Tourism Managment'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),

              // faculty of social sciences and languages

              ExpansionTile(
                  title: Text('Social Sciences and Languages',
                      style: TextStyle(fontSize: 16)),
                  children: [
                    ListTile(
                      title: Text('Economics and statistics'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('English language and teaching'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Geography and Environmental Managment'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Languages'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Social Sciences'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.NRWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),

              // faculty of geomatics

              ExpansionTile(
                  title: Text('Geomatics', style: TextStyle(fontSize: 16)),
                  children: [
                    ListTile(
                      title: Text('Remote sensing and GIS'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Surveying and Geodesy'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
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
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Engineering Technology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),

              // faculty of medicine

              ExpansionTile(
                  title: Text('Medicine', style: TextStyle(fontSize: 16)),
                  children: [
                    ListTile(
                      title: Text('Anatomy'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.CISWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Biochemistry'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Community Medicine'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Family Medicine'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Forensic Medicine & Toxicology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Biochemistry'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Medicine'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Microbiology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Obstetrics And Gynaecology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Paediatrics'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Pathology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Pharmacology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Physiology'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Psychiatry'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Surgery'),
                      onTap: () {
                        BlocProvider.of<NavigationBloc>(context)
                            .add(NavigationEvents.PSTWordsClickedEvent);
                        Navigator.pop(context);
                      },
                    ),
                  ]),
              Align(
                alignment: Alignment.center,
                child: Text('Main Students Union '),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Sabragamuwa University of Sri Lanka '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
