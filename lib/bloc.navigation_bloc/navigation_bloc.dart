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
        department: 'CIS',
        key: ValueKey('CIS'),
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.CISWordsClickedEvent:
        yield DepartmentWords(
          department: 'CIS',
          key: ValueKey('CIS'),
        );
        break;
      case NavigationEvents.PSTWordsClickedEvent:
        yield DepartmentWords(
          department: 'PST',
          key: ValueKey('PST'),
        );
        break;
      case NavigationEvents.NRWordsClickedEvent:
        yield DepartmentWords(
          department: 'NR',
          key: ValueKey('NR'),
        );
        break;
      case NavigationEvents.FSTWordsClickedEvent:
        yield DepartmentWords(
          department: 'FST',
          key: ValueKey('FST'),
        );
        break;
      case NavigationEvents.SSPEWordsClickedEvent:
        yield DepartmentWords(
          department: 'SSPE',
          key: ValueKey('SSPE'),
        );
        break;
      case NavigationEvents.ABMWordsClickedEvent:
        yield DepartmentWords(
          department: 'ABM',
          key: ValueKey('ABM'),
        );
        break;
      case NavigationEvents.EACWordsClickedEvent:
        yield DepartmentWords(
          department: 'EAC',
          key: ValueKey('EAC'),
        );
        break;
      case NavigationEvents.LSPWordsClickedEvent:
        yield DepartmentWords(
          department: 'LSP',
          key: ValueKey('LSP'),
        );
        break;
      case NavigationEvents.AFWordsClickedEvent:
        yield DepartmentWords(
          department: 'AF',
          key: ValueKey('AF'),
        );
        break;
      case NavigationEvents.BMWordsClickedEvent:
        yield DepartmentWords(
          department: 'BM',
          key: ValueKey('BM'),
        );
        break;
      case NavigationEvents.MMWordsClickedEvent:
        yield DepartmentWords(
          department: 'MM',
          key: ValueKey('MM'),
        );
        break;
      case NavigationEvents.TMWordsClickedEvent:
        yield DepartmentWords(
          department: 'TM',
          key: ValueKey('TM'),
        );
        break;
      case NavigationEvents.ESWordsClickedEvent:
        yield DepartmentWords(
          department: 'ES',
          key: ValueKey('ES'),
        );
        break;
      case NavigationEvents.ELTWordsClickedEvent:
        yield DepartmentWords(
          department: 'ELT',
          key: ValueKey('ELT'),
        );
        break;
      case NavigationEvents.GEMWordsClickedEvent:
        yield DepartmentWords(
          department: 'GEM',
          key: ValueKey('GEM'),
        );
        break;
      case NavigationEvents.LanWordsClickedEvent:
        yield DepartmentWords(
          department: 'Lan',
          key: ValueKey('Lan'),
        );
        break;
      case NavigationEvents.SSWordsClickedEvent:
        yield DepartmentWords(
          department: 'SS',
          key: ValueKey('SS'),
        );
        break;
      case NavigationEvents.RSGISWordsClickedEvent:
        yield DepartmentWords(
          department: 'RSGIS',
          key: ValueKey('RSGIS'),
        );
        break;
      case NavigationEvents.SGWordsClickedEvent:
        yield DepartmentWords(
          department: 'SG',
          key: ValueKey('SG'),
        );
        break;case NavigationEvents.BSTWordsClickedEvent:
      yield DepartmentWords(
        department: 'BST',
        key: ValueKey('BST'),
      );
      break;
      case NavigationEvents.ETWordsClickedEvent:
        yield DepartmentWords(
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
