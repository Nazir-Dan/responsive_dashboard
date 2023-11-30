import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';

class ResentTransactions extends StatelessWidget {
  const ResentTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Column(
        children: [
          Text(
            'Recent Transactions',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              dividerThickness: 2,
              columns: [
                DataColumn(
                  label: Text(
                    'Operation',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: textColor,
                          fontSize: 10,
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Data',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: textColor,
                          fontSize: 10,
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Amount',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: textColor,
                          fontSize: 10,
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Status',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: textColor,
                          fontSize: 10,
                        ),
                  ),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Hash: 2111185372264042',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Text(
                        'Feb 17.2023',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        '\$50.000.00',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Completed',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Hash: 2111185372264042',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Text(
                        'Feb 17.2023',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        '\$50.000.00',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Completed',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Divider(
              color: textColor,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
              ),
            ),
            onPressed: () {},
            child: Text(
              'View all',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 10,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
