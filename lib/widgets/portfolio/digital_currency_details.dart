import 'package:responsive_dashboard/widgets/portfolio/digital_currency_card.dart';
import 'package:flutter/material.dart';

class DigitalCurrencyDetails extends StatelessWidget {
  const DigitalCurrencyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DigitalCurrencyCard(
          svgSrc: 'assets/icons/btc.svg',
          svgColor: Color.fromARGB(255, 209, 133, 18),
          currencySubName: 'BTC',
          currencyName: 'Bitcoin',
          amountInDollars: '550.25 USD',
          percentage: '\$32 (2%)',
          perColor: Colors.redAccent,
          perIcon: Icons.arrow_drop_down,
        ),
        DigitalCurrencyCard(
          svgSrc: 'assets/icons/eth.svg',
          svgColor: Color.fromARGB(255, 99, 104, 144),
          currencySubName: 'ETH',
          currencyName: 'Ethereum',
          amountInDollars: '445.75 USD',
          percentage: '\$32 (2%)',
          perColor: Colors.green,
          perIcon: Icons.arrow_drop_up,
        ),
        DigitalCurrencyCard(
          svgSrc: 'assets/icons/bnb.svg',
          svgColor: null,
          currencySubName: 'BNB',
          currencyName: 'Binance',
          amountInDollars: '449.00 USD',
          percentage: '\$20 (1%)',
          perColor: Colors.green,
          perIcon: Icons.arrow_drop_up,
        ),
      ],
    );
  }
}
