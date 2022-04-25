import 'package:bloc_generated/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/counter');
            },
            child: const Text("Show the Counter"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).incrementCounter();
              //? Can also be done as:
              //* context.read<CounterCubit>().incrementCounter();
            },
            child: const Text("Increment Counter"),
          ),
        ],
      )),
    );
  }
}
