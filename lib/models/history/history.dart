import 'links.dart';

class History {
  Links _links;
  String _title;
  String _eventDateUtc;
  num _eventDateUnix;
  String _details;
  String _id;

  History(
      {Links links,
      String title,
      String eventDateUtc,
      num eventDateUnix,
      String details,
      String id}) {
    this._links = links;
    this._title = title;
    this._eventDateUtc = eventDateUtc;
    this._eventDateUnix = eventDateUnix;
    this._details = details;
    this._id = id;
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

  History.fromJson(Map<String, dynamic> json) {
    _links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    _title = json['title'];
    _eventDateUtc = json['event_date_utc'];
    _eventDateUnix = json['event_date_unix'];
    _details = json['details'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    data['title'] = this._title;
    data['event_date_utc'] = this._eventDateUtc;
    data['event_date_unix'] = this._eventDateUnix;
    data['details'] = this._details;
    data['id'] = this._id;
    return data;
  }
}
