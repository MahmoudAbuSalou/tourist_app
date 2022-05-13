import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../shared/components/components.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List myList = [];
  bool love=false;
  void FillList(context) {
    myList.clear();
    myList.add(
        myListTile(context, 'سكن العائلة :', 'home.svg','يوجد العديد من العروض و المزايا '));
    myList.add(
        myListTile(context, '11 نوفمبر 2022 إلى 11 مايو 2023', 'timer.svg','يوجد العديد من العروض و المزايا '));
    myList.add(
        myListTile(context, 'كل الجماهير ، يسمح باصطحاب الأطفال', 'avatar.svg','يوجد العديد من العروض و المزايا '));
    myList.add(
        myListTile(context, '11 نوفمبر 2022 إلى 11 مايو 2023', 'timer.svg','يوجد العديد من العروض و المزايا '));
  }
  void loveButton(){
    love=!love;
    emit(changeIconLove());
  }

}
