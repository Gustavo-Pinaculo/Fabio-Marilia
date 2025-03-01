import 'package:flutter/widgets.dart';

double height(BuildContext context, double height) {
  return MediaQuery.of(context).size.height * height;
}

double width(BuildContext context, double width) {
  return MediaQuery.of(context).size.width * width;
}

double statusBar(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}
