
import 'package:flutter/material.dart';
import 'package:second_project/model/graph_mode.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  const BarGraphModel(
      {required this.label, required this.color, required this.graph});
}