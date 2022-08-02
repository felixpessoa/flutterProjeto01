import 'package:flutter/material.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository_imp.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ValueListenableBuilder<List<PostModel>>(
              valueListenable: _controller.posts,
              builder: (_, list, __) {
                return ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (_, idx) => ListTile(
                    title: Text(list[idx].title),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => _controller.fetch(),
              child: Text('Reload'),
            ),
          ],
        ),
      ),
    );
  }
}
