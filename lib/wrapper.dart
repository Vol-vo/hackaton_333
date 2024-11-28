import 'package:flutter/material.dart';
import 'package:hackaton_333/home_page.dart';

class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
    // return MultiBlocProvider(providers: [
    //   // BlocProvider<SendAndLoadingFileBloc>( оставил для примера
    //   //     create: (context) => SendAndLoadingFileBloc()),

    // ], child: const MyHomePage());
  }
}