
import 'package:flutter/material.dart';
import 'categories_list_view.dart';
import 'news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        title:const Center(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News',
                style: TextStyle(color: Colors.black),),
              Text('Cloud',
                style: TextStyle(color: Colors.orange),),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),

            ),

            NewsListViewBuilder(
              category:"general",
            ),


          ],
        ),
      ),
    );
  }
}


