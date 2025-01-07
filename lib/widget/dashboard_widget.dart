import 'package:flutter/material.dart';
import 'package:second_project/widget/header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            //const ActivityDetailsCard(),
            const SizedBox(height: 18),
            //const LineChartCard(),
            const SizedBox(height: 18),
            //const BarGraphCard(),
            const SizedBox(height: 18),
            //if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}