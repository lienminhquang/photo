import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';

class PrivacyPolicyLinkAndTermsOfService extends StatelessWidget {
  const PrivacyPolicyLinkAndTermsOfService() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ParsedText(
      text: AppLocalizations.of(context)!.termOfServicesAndPrivacyPolicy,
      style: Theme.of(context).textTheme.bodyText2,
      parse: <MatchText>[
        MatchText(
          type: ParsedType.CUSTOM,
          pattern: AppLocalizations.of(context)!.termOfServices,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(decoration: TextDecoration.underline),
          onTap: (url) {
            //launch("mailto:" + url);
          },
        ),
        MatchText(
          type: ParsedType.CUSTOM,
          pattern: AppLocalizations.of(context)!.privacyPolicy,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(decoration: TextDecoration.underline),
          onTap: (url) {
            //launch("mailto:" + url);
          },
        ),
      ],
    ));
  }
}
