import 'package:deneme5ulan_app/chart/bar_chart.dart';
import 'package:deneme5ulan_app/chart/line_chart.dart';
import 'package:deneme5ulan_app/services/auth.dart';
import 'package:deneme5ulan_app/widgets/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../chart_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("BOTAŞ"),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                Provider.of<Auth>(context, listen: false).signOut();
                print("logout tıklandııııı");
              },
            )
          ],
        ),
        body: Container(
          color: Color(0xfff0f0f0),
          child: ListView(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            children: <Widget>[
              ChartContainer(
                title: 'Ham Petrol Kullanımı(m^3)',
                color: Color.fromRGBO(45, 108, 223, 1),
                chart: LineChartContent(),
              ),
              SizedBox(height: 30),
              ChartContainer(
                  title: 'Doğalgaz Kullanımı(m^3)',
                  color: Color(0xfffc5185),
                  chart: BarChartContent()),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}
