import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gate Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          ClientInfoCard(
            imageScr: "assets/images/person_darkblue.png",
            title: "Dimond client",
            amountOfFiles: "54 underivered",
            numOfFiles: 132,
          ),
          ClientInfoCard(
            imageScr: "assets/images/person_blue.png",
            title: "Platinum client",
            amountOfFiles: "131 underivered",
            numOfFiles: 132,
          ),
          ClientInfoCard(
            imageScr: "assets/images/person_yellow.png",
            title: "Gold client",
            amountOfFiles: "120 underivered",
            numOfFiles: 132,
          ),
          ClientInfoCard(
            imageScr: "assets/images/person_red.png",
            title: "Unknown",
            amountOfFiles: "73 underivered",
            numOfFiles: 14,
          ),
        ],
      ),
    );
  }
}
