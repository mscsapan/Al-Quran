import 'package:al_quran/src/services/arabic_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/arabic_language_model.dart';

part 'arabic_event.dart';

part 'arabic_state.dart';

class ArabicBloc extends Bloc<ArabicEvent, ArabicState> {
  ArabicBloc() : super(ArabicInitial()) {
    on<ArabicEvent>((ArabicEvent event, Emitter emit) async {
      if (event is FetchArabicLanguage) {
        try {
          emit(ArabicLoadingState());
          final List<ArabicLanguage> arabic =
              await ArabicService().getArabicLanguage();
          emit(ArabicLoadedState(arabicLanguage: arabic));
        } catch (e) {
          emit(ArabicErrorState(message: e.toString()));
        }
      }
    });
  }
}
