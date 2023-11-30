import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: defaultPadding / 2,
                right: defaultPadding / 2,
              ),
              child: Text(
                'John Doe',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Verified',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: textColor,
                        fontSize: 10,
                      ),
                ),
                const SizedBox(width: defaultPadding / 2),
                const Icon(
                  Icons.verified_outlined,
                  size: defaultPadding,
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ],
        ),
        ClipOval(
          child: Image.asset(
            'assets/images/person.jpg',
            height: 35,
            width: 35,
          ),
        ),
        const Icon(
          Icons.expand_more,
          color: secondaryColor,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              left: defaultPadding * 4,
            ),
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Transactions...',
                hintStyle: const TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
                fillColor: secondaryBgColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: secondaryBgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
