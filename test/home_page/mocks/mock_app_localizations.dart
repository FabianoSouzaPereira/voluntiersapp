import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart' as intl;

class MockAppLocalizations extends AppLocalizations {
  final String locale;

  MockAppLocalizations(this.locale) : super(locale);

  @override
  String get addEvent => 'Add new entre';

  @override
  String leaders(num count) {
    String temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leaders',
      one: '1 leader',
      zero: 'no leaders',
    );
    return temp0;
  }

  @override
  String voluntiers(num count) {
    String temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voluntiers',
      one: 'voluntiers',
      zero: 'voluntier',
    );
    return temp0;
  }

  @override
  String teams(num count) {
    String temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count teams',
      one: 'Teams',
      zero: 'team',
    );
    return temp0;
  }

  @override
  String event(num count) {
    String temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events',
      one: 'events',
      zero: 'event',
    );
    return temp0;
  }

  @override
  String users(num count) {
    String temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count users',
      one: 'user',
      zero: 'users',
    );
    return temp0;
  }
  
  @override
  String cameras(num count) {
    // TODO: implement cameras
    throw UnimplementedError();
  }
  
  @override
  String emails(num count) {
    // TODO: implement emails
    throw UnimplementedError();
  }
  
  @override
  String favorities(num count) {
    // TODO: implement favorities
    throw UnimplementedError();
  }
  
  @override
  String notifications(num count) {
    // TODO: implement notifications
    throw UnimplementedError();
  }
  
  @override
  String settings(num count) {
    // TODO: implement settings
    throw UnimplementedError();
  }
  
  @override
  String videos(num count) {
    // TODO: implement videos
    throw UnimplementedError();
  }
  
  @override
  String younitytasks(num count) {
    // TODO: implement younitytasks
    throw UnimplementedError();
  }
}
