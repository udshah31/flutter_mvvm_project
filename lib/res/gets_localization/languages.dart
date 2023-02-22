import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'sign_in': 'Sign In',
          'create_account': 'Create Account',
          'email_hint': 'Email / Username / PhoneNumber',
          'password_hint': 'Password',
          'forget_password':'Forget Password?',
          'no_account':"Don't have an account ? ",
          'register':'REGISTER',
        },


        'np_NEP': {'email_hint': 'इमेल प्रविष्ट गर्नुहोस्'}
      };
}
