import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldselver/cubit/states.dart';

import '../network/dio_helper.dart';

class MainCubit extends Cubit<States> {
  MainCubit() : super(InitState());

  static MainCubit get(context) => BlocProvider.of(context);

  double? goldD;
  int? goldI;

  void getGoldPrice() {
    DioHepler.getData("XAU/USD/")?.then((value) {
      goldD = value.data["price"];
      goldI = goldD!.toInt();
      emit(GetGoldPrice());
      print(goldI);
      print("Done");
    }).catchError((onError) {
      print("Error$onError");
    });
  }

  double? silverD;
  int? silverI;

  void getSilverPrice() {
    DioHepler.getData("XAG/USD/")?.then((value) {
      silverD = value.data["price"];
      silverI = silverD!.toInt();
      emit(GetSilverPrice());
      print(silverI);
    }).catchError((onError) {
      print("Error$onError");
    });
  }
}
