import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_lazyload/example_widget.dart';
import 'package:flutter_bloc_with_lazyload/users_bloc.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider(
        create: (_) => UsersBloc(),
        child: const ExampleWidget(),
      ),
    );
  }
}
