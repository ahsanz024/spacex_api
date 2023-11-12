import 'links.dart';

class History {
  Links _links;
  String _title;
  String _eventDateUtc;
  num _eventDateUnix;
  String _details;
  String _id;

  History({
    required Links links,
    required String title,
    required String eventDateUtc,
    required num eventDateUnix,
    required String details,
    required String id,
  })  : _links = links,
        _title = title,
        _eventDateUtc = eventDateUtc,
        _eventDateUnix = eventDateUnix,
        _details = details,
        _id = id;

  factory History.fromJson(Map<String, dynamic> json) {
    if (json['links'] == null) throw ArgumentError('links cannot be null');
    if (json['title'] == null) throw ArgumentError('title cannot be null');
    if (json['event_date_utc'] == null) throw ArgumentError('event_date_utc cannot be null');
    if (json['event_date_unix'] == null) throw ArgumentError('event_date_unix cannot be null');
    if (json['details'] == null) throw ArgumentError('details cannot be null');
    if (json['id'] == null) throw ArgumentError('id cannot be null');

    return History(
      links: Links.fromJson(json['links']),
      title: json['title'],
      eventDateUtc: json['event_date_utc'],
      eventDateUnix: json['event_date_unix'],
      details: json['details'],
      id: json['id'],
    );
  }

  Links get links => _links;
  set links(Links links) => _links = links;
  String get title => _title;
  set title(String title) => _title = title;
  String get eventDateUtc => _eventDateUtc;
  set eventDateUtc(String eventDateUtc) => _eventDateUtc = eventDateUtc;
  num get eventDateUnix => _eventDateUnix;
  set eventDateUnix(num eventDateUnix) => _eventDateUnix = eventDateUnix;
  String get details => _details;
  set details(String details) => _details = details;
  String get id => _id;
  set id(String id) => _id = id;

  Map<String, dynamic> toJson() {
    return {
      'links': this._links.toJson(),
      'title': this._title,
      'event_date_utc': this._eventDateUtc,
      'event_date_unix': this._eventDateUnix,
      'details': this._details,
      'id': this._id,
    };
  }
}
