import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/feature/home/view/screens/cubit/text_state.dart';

class TextCubit extends Cubit<TextState> {
  TextCubit() : super(TextInitial());

  void alamdulAlah() {
    emit(AlamdulAlah());
  }

  void alahAkbar() {
    emit(AlahAkbar());
  }

  void laElahElaAlah() {
    emit(LaElahElaAlah());
  }

  void sobhanAlah() {
    emit(SobhanAlah());
  }

  void laQoutaElaBAlah() {
    emit(LaQoutaElaBAlah());
  }
}
