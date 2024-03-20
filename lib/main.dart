import 'package:facebook_interface_flutter/pages/principal.dart';
import 'package:facebook_interface_flutter/utils/paleta_cores.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Facebook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: PaletaCores.scaffold),
      home: Principal(),
    ),
  );
}
