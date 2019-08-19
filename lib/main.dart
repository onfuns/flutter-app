import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/stores/homeStore.dart';
import 'router.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<HomeStore>(
          builder: (_) => HomeStore(),
        )
      ],
      child: Routers(),
    ));
