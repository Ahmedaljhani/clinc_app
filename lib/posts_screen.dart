import 'package:first_class/provider/posts_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  //List<dynamic>? response;

  @override
  void initState() {
    super.initState();
    print("initState");
    context.read<PostsProvider>().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<PostsProvider>();
    var response = provider.data;

    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: response == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(response[index].title ?? "null"),
                    SizedBox(height: 8,),
                    Image.network(response[index].picture ?? "")
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemCount: response!.length),
    );
  }
}