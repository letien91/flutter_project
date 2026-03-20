import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_project/app/presentaion/pages/welcome_screen/bloc/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState());
}
