import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Eligibility extends ChangeNotifier{
  String _EligibilityMessage="";
  bool _isEligible= false;

  String get elibilityMessage=>_EligibilityMessage;
  bool get isEligible=>_isEligible;

  void checkEligibility(int age) {
    if (age >= 18)
      eligibleForLicense();
    else
      noteligibleForLicense();
  }

    void eligibleForLicense(){
      _EligibilityMessage="you are eligible for license";
      _isEligible=true;
      notifyListeners();
    }

    void noteligibleForLicense(){
      _EligibilityMessage="you are Not eligible for license";
      _isEligible=false;
      notifyListeners();
    }

  }






