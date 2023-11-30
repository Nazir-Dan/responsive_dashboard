import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/total_portfolio/btn_container.dart';
import 'package:responsive_dashboard/widgets/total_portfolio/chart_area.dart';
import 'package:flutter/material.dart';

class TotalPortfolioChart extends StatelessWidget {
  const TotalPortfolioChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Total Portfolio',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: defaultPadding),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              padding: const EdgeInsets.symmetric(
                //horizontal: defaultPadding * 2,
                vertical: defaultPadding * 1.5,
              ),
              decoration: BoxDecoration(
                color: secondaryBgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BtnContainer(
                        label: '1m',
                        bgColor: Colors.white,
                        labelColor: secondaryColor,
                      ),
                      BtnContainer(
                        label: '3m',
                        bgColor: Colors.white,
                        labelColor: secondaryColor,
                      ),
                      BtnContainer(
                        label: '6m',
                        bgColor: secondaryColor,
                        labelColor: Colors.white,
                      ),
                      BtnContainer(
                        label: '12m',
                        bgColor: Colors.white,
                        labelColor: secondaryColor,
                      ),
                      SizedBox(width: defaultPadding),
                      // Text(
                      //   'Monthly',
                      //   style:
                      //       Theme.of(context).textTheme.displayMedium!.copyWith(
                      //             color: textColor,
                      //             fontSize: 10,
                      //           ),
                      // ),
                      // const Icon(
                      //   Icons.expand_more,
                      //   color: secondaryColor,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  ChartArea(),
                  SizedBox(height: defaultPadding),
                  BtnContainer(
                    label: 'more details',
                    bgColor: secondaryColor,
                    labelColor: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: secondaryColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
