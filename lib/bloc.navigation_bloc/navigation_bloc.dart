import 'package:bloc/bloc.dart';
import 'package:glossary/pages/pst_words.dart';
import '../pages/nr_words.dart';
import '../pages/cis_words.dart';
import '../pages/fst_words.dart';
import '../pages/sspe_words.dart';

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
  NavigationStates get initialState => CIS();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.CISWordsClickedEvent:
        yield CIS();
        break;
      case NavigationEvents.PSTWordsClickedEvent:
        yield PST();
        break;
      case NavigationEvents.NRWordsClickedEvent:
        yield NR();
        break;
      case NavigationEvents.FSTWordsClickedEvent:
        yield FST();
        break;
      case NavigationEvents.SSPEWordsClickedEvent:
        yield SSPE();
        break;
    }
  }
}
