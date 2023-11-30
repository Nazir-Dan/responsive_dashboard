import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/balance/balance_widget.dart';
import 'package:responsive_dashboard/widgets/portfolio/digital_currency_details.dart';
import 'package:responsive_dashboard/widgets/portfolio/doughnut_chart.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';
import 'package:responsive_dashboard/widgets/recent_transactions.dart';
import 'package:responsive_dashboard/widgets/total_portfolio/total_portfolio_chart.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: secondaryColor,
      ),
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        padding: const EdgeInsets.only(
          right: defaultPadding,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: defaultPadding,
          ),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderWidget(),
                        const SizedBox(height: defaultPadding * 2.5),
                        SizedBox(
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
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultPadding),
                          child: Divider(
                            color: textColor,
                          ),
                        ),
                        const TotalPortfolioChart(),
                        const SizedBox(height: defaultPadding * 2),
                        const ResentTransactions(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
