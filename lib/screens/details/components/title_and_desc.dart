import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndDesc extends StatelessWidget {
  const TitleAndDesc({
    Key key,
    this.title,
    this.subtitle,
    this.desc,
  }) : super(key: key);

  final String title, subtitle, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            desc,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
