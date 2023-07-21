

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enteredEmail = '';
  var enteredPassword = '';
  
  void submit(){
    final _isvalid = form.currentState!.validate();

    if(!_isvalid){
      return;
    }

    form.currentState!.save();
  }

}