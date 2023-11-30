import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DigitalCurrencyCard extends StatelessWidget {
  final String svgSrc;
  final Color? svgColor;
  final String currencySubName;
  final String currencyName;
  final String amountInDollars;
  final String percentage;
  final Color perColor;
  final IconData perIcon;
  const DigitalCurrencyCard({
    super.key,
    required this.svgSrc,
    required this.svgColor,
    required this.currencySubName,
    required this.currencyName,
    required this.amountInDollars,
    required this.percentage,
    required this.perColor,
    required this.perIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              svgSrc,
              colorFilter: svgColor != null
                  ? ColorFilter.mode(
                      svgColor!,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currencySubName,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                ),
                Text(
                  currencyName,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amountInDollars,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    perIcon,
                    color: perColor,
                  ),
                  Text(
                    percentage,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: perColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
