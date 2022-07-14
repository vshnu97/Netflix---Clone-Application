import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_){

    BlocProvider.of<SearchBloc>(context).add(const Initialize());

    });

  
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(.45),
            style: const TextStyle(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
          ),

          const Expanded(child: SearchIdleWidget()),
          //const Expanded(child: SearchResultWidget()),
        ],
      ),
    ));
  }
}
