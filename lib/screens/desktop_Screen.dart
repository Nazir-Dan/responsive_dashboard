import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/balance/balance_widget.dart';
import 'package:responsive_dashboard/widgets/portfolio/digital_currency_details.dart';
import 'package:responsive_dashboard/widgets/portfolio/doughnut_chart.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';
import 'package:responsive_dashboard/widgets/recent_transactions.dart';
import 'package:responsive_dashboard/widgets/total_portfolio/total_portfolio_chart.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          right: defaultPadding,
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: AppDrawer(),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding,
                ),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeaderWidget(),
                              SizedBox(height: defaultPadding * 2.5),
                              TotalPortfolioChart(),
                              SizedBox(height: defaultPadding * 2),
                              ResentTransactions(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BalanceWidget(),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: defaultPadding * 3,
                                  bottom: defaultPadding,
                                ),
                                child: Text(
                                  'My Portfolio',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        color: secondaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(
                                  defaultPadding,
                                ),
                                decoration: BoxDecoration(
                                  color: secondaryBgColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                  children: [
                                    DoughnutChart(),
                                    DigitalCurrencyDetails(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
