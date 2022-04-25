import 'package:flutter_bloc/flutter_bloc.dart';

class CheckCircleCubit extends Bloc<bool, bool> {
  CheckCircleCubit() : super(false);

  void checkCircle() {
    emit(!state);
  }
}
