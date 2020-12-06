import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import '../screens/department_words.dart';

enum NavigationEvents {
  CISWordsClickedEvent,
  PSTWordsClickedEvent,
  NRWordsClickedEvent,
  SSPEWordsClickedEvent,
  FSTWordsClickedEvent
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
    }
  }
}
