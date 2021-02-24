import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import '../screens/department_words.dart';

enum NavigationEvents {
  CISWordsClickedEvent,
  PSTWordsClickedEvent,
  NRWordsClickedEvent,
  SSPEWordsClickedEvent,
  FSTWordsClickedEvent,
  ABMWordsClickedEvent,
  EACWordsClickedEvent,
  LSPWordsClickedEvent,
  AFWordsClickedEvent,
  BMWordsClickedEvent,
  MMWordsClickedEvent,
  TMWordsClickedEvent,
  ESWordsClickedEvent,
  ELTWordsClickedEvent,
  GEMWordsClickedEvent,
  LanWordsClickedEvent,
  SSWordsClickedEvent,
  RSGISWordsClickedEvent,
  SGWordsClickedEvent,
  BSTWordsClickedEvent,
  ETWordsClickedEvent,
  AnaWordsClickedEvent,
  BioCWordsClickedEvent,
  CMWordsClickedEvent,
  FMWordsClickedEvent,
  FMTWordsClickedEvent,
  MedWordsClickedEvent,
  MicroBWordsClickedEvent,
  OGWordsClickedEvent,
  PaedWordsClickedEvent,
  PathWordsClickedEvent,
  PharWordsClickedEvent,
  PhysWordsClickedEvent,
  PsyWordsClickedEvent,
  SurWordsClickedEvent

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
      case NavigationEvents.ABMWordsClickedEvent:
        yield DepartmentWords(
          name: 'Agri business managment',
          department: 'ABM',
          key: ValueKey('ABM'),
        );
        break;
      case NavigationEvents.EACWordsClickedEvent:
        yield DepartmentWords(
          name: 'Exprt agri culture',
          department: 'EAC',
          key: ValueKey('EAC'),
        );
        break;
      case NavigationEvents.LSPWordsClickedEvent:
        yield DepartmentWords(
          name: 'Live stock production',
          department: 'LSP',
          key: ValueKey('LSP'),
        );
        break;
      case NavigationEvents.AFWordsClickedEvent:
        yield DepartmentWords(
          name: 'Accountancy and Finance',
          department: 'AF',
          key: ValueKey('AF'),
        );
        break;
      case NavigationEvents.BMWordsClickedEvent:
        yield DepartmentWords(
          name: 'Business Managment',
          department: 'BM',
          key: ValueKey('BM'),
        );
        break;
      case NavigationEvents.MMWordsClickedEvent:
        yield DepartmentWords(
          name: 'Marketing Managment',
          department: 'MM',
          key: ValueKey('MM'),
        );
        break;
      case NavigationEvents.TMWordsClickedEvent:
        yield DepartmentWords(
          name: 'Tourism Managment',
          department: 'TM',
          key: ValueKey('TM'),
        );
        break;
      case NavigationEvents.ESWordsClickedEvent:
        yield DepartmentWords(
          name: 'Economics and statistics',
          department: 'ES',
          key: ValueKey('ES'),
        );
        break;
      case NavigationEvents.ELTWordsClickedEvent:
        yield DepartmentWords(
          name: 'English language and teaching',
          department: 'ELT',
          key: ValueKey('ELT'),
        );
        break;
      case NavigationEvents.GEMWordsClickedEvent:
        yield DepartmentWords(
          name: 'Geography and Environmental Managment',
          department: 'GEM',
          key: ValueKey('GEM'),
        );
        break;
      case NavigationEvents.LanWordsClickedEvent:
        yield DepartmentWords(
          name: 'Languages',
          department: 'Lan',
          key: ValueKey('Lan'),
        );
        break;
      case NavigationEvents.SSWordsClickedEvent:
        yield DepartmentWords(
          name: 'Social Sciences',
          department: 'SS',
          key: ValueKey('SS'),
        );
        break;
      case NavigationEvents.RSGISWordsClickedEvent:
        yield DepartmentWords(
          name: 'Remote sensing and GIS',
          department: 'RSGIS',
          key: ValueKey('RSGIS'),
        );
        break;
      case NavigationEvents.SGWordsClickedEvent:
        yield DepartmentWords(
          name: 'Surveying and Geodesy',
          department: 'SG',
          key: ValueKey('SG'),
        );
        break;case NavigationEvents.BSTWordsClickedEvent:
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
      case NavigationEvents.AnaWordsClickedEvent:
        yield DepartmentWords(
          department: 'Ana',
          key: ValueKey('Ana'),
        );
        break;
      case NavigationEvents.BioCWordsClickedEvent:
        yield DepartmentWords(
          department: 'BioC',
          key: ValueKey('BioC'),
        );
        break;
      case NavigationEvents.CMWordsClickedEvent:
        yield DepartmentWords(
          department: 'CM',
          key: ValueKey('CM'),
        );
        break;
      case NavigationEvents.FMWordsClickedEvent:
        yield DepartmentWords(
          department: 'FM',
          key: ValueKey('FM'),
        );
        break;
      case NavigationEvents.FMTWordsClickedEvent:
        yield DepartmentWords(
          department: 'FMT',
          key: ValueKey('FMT'),
        );
        break;case NavigationEvents.MedWordsClickedEvent:
      yield DepartmentWords(
        department: 'Med',
        key: ValueKey('Med'),
      );
      break;
      case NavigationEvents.MicroBWordsClickedEvent:
        yield DepartmentWords(
          department: 'MicroB',
          key: ValueKey('MicroB'),
        );
        break;
      case NavigationEvents.OGWordsClickedEvent:
        yield DepartmentWords(
          department: 'OG',
          key: ValueKey('OG'),
        );
        break;
      case NavigationEvents.PaedWordsClickedEvent:
        yield DepartmentWords(
          department: 'Paed',
          key: ValueKey('Paed'),
        );
        break;
      case NavigationEvents.PathWordsClickedEvent:
        yield DepartmentWords(
          department: 'Path',
          key: ValueKey('Path'),
        );
        break;
      case NavigationEvents.PharWordsClickedEvent:
        yield DepartmentWords(
          department: 'Phar',
          key: ValueKey('Phar'),
        );
        break;
      case NavigationEvents.PhysWordsClickedEvent:
        yield DepartmentWords(
          department: 'Phys',
          key: ValueKey('Phys'),
        );
        break;
      case NavigationEvents.PsyWordsClickedEvent:
        yield DepartmentWords(
          department: 'Psy',
          key: ValueKey('Psy'),
        );
        break;
      case NavigationEvents.SurWordsClickedEvent:
        yield DepartmentWords(
          department: 'Sur',
          key: ValueKey('Sur'),
        );
        break;
    }

  }
}
