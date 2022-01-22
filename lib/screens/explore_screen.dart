
import 'package:flutter/material.dart';
import '../models/models.dart';
import '../api/mock_fooder_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({ Key? key }) : super(key: key);
  // 1
  final mockService = const MockFooderService();

  @override
  Widget build(BuildContext context) {
    //2 
    // todo add TodayrecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}