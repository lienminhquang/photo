
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get loginButton => 'LOG IN';

  @override
  String get registerButton => 'REGISTER';

  @override
  String get registerHeader => 'Register';

  @override
  String get loginHeader => 'Log in';

  @override
  String get discoverHeader => 'Discover';

  @override
  String get browseAll => 'BROWSE ALL';

  @override
  String get seeMore => 'SEE MORE';

  @override
  String get whatIsNewToday => 'WHAT\'S NEW TODAY';

  @override
  String get passwordHint => 'Password';

  @override
  String get usernameHint => 'Username';

  @override
  String get pleaseEnterPassword => 'Please enter password';

  @override
  String get pleaseEnterUsername => 'Please eneter username';

  @override
  String get passwordIsNotMatch => 'Password is not match';

  @override
  String get registerSuccessed => 'Register successed';

  @override
  String get termOfServicesAndPrivacyPolicy => 'By signing up, you agree to Photo’s Terms of Service and Privacy Policy.';

  @override
  String get termOfServices => 'Terms of Service';

  @override
  String get privacyPolicy => 'Privacy Policy';
}
