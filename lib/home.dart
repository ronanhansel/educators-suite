import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            expandedHeight: height * 0.25,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Ronan SAT Suite'),
              background: Image.network(
                'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text('Item ${1 + index}'),
              );
            },
          ))
        ],
      ),
    );
  }
}
