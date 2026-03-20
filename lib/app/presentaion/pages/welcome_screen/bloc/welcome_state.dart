import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_project/utils/enums/screen_state.dart';

part 'welcome_state.freezed.dart';

@freezed
abstract class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    String? message,
    @Default(ScreenState.initialize) ScreenState screenState,
  }) = _WelcomeState;
}
