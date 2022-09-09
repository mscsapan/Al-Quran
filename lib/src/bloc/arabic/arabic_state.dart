part of 'arabic_bloc.dart';

abstract class ArabicState extends Equatable {
  const ArabicState();
}

class ArabicInitial extends ArabicState {
  @override
  List<Object> get props => [];
}

class ArabicLoadingState extends ArabicState {
  @override
  List<Object> get props => [];
}

class ArabicLoadedState extends ArabicState {
  final List<ArabicLanguage> arabicLanguage;

  const ArabicLoadedState({required this.arabicLanguage});

  @override
  List<Object> get props => [arabicLanguage];
}

class ArabicErrorState extends ArabicState {
  final String message;

  const ArabicErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
