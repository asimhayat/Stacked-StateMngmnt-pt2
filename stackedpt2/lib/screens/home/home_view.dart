import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedpt2/screens/home/home_viewmodel.dart';
import 'package:stackedpt2/screens/profile/profile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("HOME"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                viewModel.counter.toString(),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  viewModel.addValue();
                },
                child: const Text("ADD"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileView()));
                  viewModel.rebuildUi();
                },
                child: const Text("Next Page"),
              )
            ],
          )),
        );
      },
    );
  }
}
