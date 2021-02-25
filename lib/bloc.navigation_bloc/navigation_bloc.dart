import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import '../screens/department_words.dart';

enum NavigationEvents {
  CISWordsClickedEvent,
  PSTWordsClickedEvent,
  NRWordsClickedEvent,
  SSPEWordsClickedEvent,
  FSTWordsClickedEvent,
  AGRWordsClickedEvent,
  MGMTWordsClickedEvent,
  FSSLWordsClickedEvent,
  BSTWordsClickedEvent,
  ETWordsClickedEvent,
  GEOWordsClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => DepartmentWords(
        name: 'Computing and information systems',
        department: 'CIS',
        key: ValueKey('CIS'),
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.CISWordsClickedEvent:
        yield DepartmentWords(
          name: 'Computing and information systems',
          department: 'CIS',
          key: ValueKey('CIS'),
        );
        break;
      case NavigationEvents.PSTWordsClickedEvent:
        yield DepartmentWords(
          name: 'Physical science and technology',
          department: 'PST',
          key: ValueKey('PST'),
        );
        break;
      case NavigationEvents.NRWordsClickedEvent:
        yield DepartmentWords(
          name: 'Natural resource managment',
          department: 'NR',
          key: ValueKey('NR'),
        );
        break;
      case NavigationEvents.FSTWordsClickedEvent:
        yield DepartmentWords(
          name: 'Food science technology',
          department: 'FST',
          key: ValueKey('FST'),
        );
        break;
      case NavigationEvents.SSPEWordsClickedEvent:
        yield DepartmentWords(
          name: 'Sport science and physical education',
          department: 'SSPE',
          key: ValueKey('SSPE'),
        );
        break;
        case NavigationEvents.BSTWordsClickedEvent:
        yield DepartmentWords(
          name: 'BioSystems Technology',
          department: 'BST',
          key: ValueKey('BST'),
        );
      break;
      case NavigationEvents.ETWordsClickedEvent:
        yield DepartmentWords(
          name: 'Engineering Technology',
          department: 'ET',
          key: ValueKey('ET'),
        );
        break;
      case NavigationEvents.MGMTWordsClickedEvent:
        yield DepartmentWords(
          name: 'Management Studies',
          department: 'MGMT',
          key: ValueKey('MGMT'),
        );
        break;
      case NavigationEvents.FSSLWordsClickedEvent:
        yield DepartmentWords(
          name: 'Social Sciences and Languages',
          department: 'FSSL',
          key: ValueKey('FSSL'),
        );
        break;
      case NavigationEvents.AGRWordsClickedEvent:
        yield DepartmentWords(
          name: 'Agriculture',
          department: 'AGR',
          key: ValueKey('AGR'),
        );
        break;
      case NavigationEvents.GEOWordsClickedEvent:
        yield DepartmentWords(
          name: 'Geomatics',
          department: 'GEO',
          key: ValueKey('GEO'),
        );
        break;
    }

  }
}
