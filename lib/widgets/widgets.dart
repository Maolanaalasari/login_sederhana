import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget wApploading() {
  return Center(
    child: Platform.isIOS
        ? CupertinoActivityIndicator()
        : CircularProgressIndicator(),
  );
}
