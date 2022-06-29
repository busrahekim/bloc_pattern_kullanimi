import 'package:bloc_pattern_kullanimi/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfaCubit extends Cubit<int> {
  AnaSayfaCubit() : super(0); //default gönderilen int deger

  var mrepo = MatematikRepository();

  void toplama(String a1, String a2) {
    emit(mrepo.toplama(a1, a2));
  }

  void carpma(String a1, String a2) {
    emit(mrepo.carpma(a1, a2));
  }
}
