import 'package:flutter/material.dart';
import 'package:stayhome/util/models.dart';
import 'package:stayhome/widget/cases_widget.dart';

class CountryStats extends StatelessWidget {
  const CountryStats({Key key, @required this.stats}) : super(key: key);

  final Statistic stats;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CasesWidget(
            picture: 'case',
            name: 'Confirmés',
            value: stats.totalCases,
          ),
          CasesWidget(
            picture: 'recovered',
            name: 'guéries',
            value: stats.recovereds,
          ),
          CasesWidget(
            picture: 'death',
            name: 'Décès',
            value: stats.totalDeaths,
          ),
        ],
      ),
    );
  }
}
