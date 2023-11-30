import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        Row(
          children: [
            Text(
              'USD Balance',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: textColor,
                    fontSize: 10,
                  ),
            ),
            const Icon(
              Icons.expand_more,
              color: secondaryColor,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            text: '1.445.00   ',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
            children: [
              TextSpan(
                text: 'USD',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: defaultPadding / 2,
            bottom: defaultPadding,
          ),
          child: Text(
            'Wallet Id: 2QVTCCOLOWEJ',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: textColor,
                  fontSize: 10,
                ),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Deposit',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            const SizedBox(width: defaultPadding),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryBgColor,
              ),
              onPressed: () {},
              child: const Text(
                'withdraw',
                style: TextStyle(color: textColor, fontSize: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
