import '../../constants.dart';
import "../../cubits/add_note_cubit/add_note_cubit.dart";
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isActive, this.color});

  final bool? isActive;

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}
