import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

class Links {
  Patch _patch;
  Reddit _reddit;
  Flickr _flickr;
  String _presskit;
  String _webcast;
  String _youtubeId;
  String _article;
  String _wikipedia;

  Links({
    Patch patch,
    Reddit reddit,
    Flickr flickr,
    String presskit,
    String webcast,
    String youtubeId,
    String article,
    String wikipedia,
  }) {
    this._patch = patch;
    this._reddit = reddit;
    this._flickr = flickr;
    this._presskit = presskit;
    this._webcast = webcast;
    this._youtubeId = youtubeId;
    this._article = article;
    this._wikipedia = wikipedia;
  }

  Patch get patch => _patch;
  set patch(Patch patch) => _patch = patch;
  Reddit get reddit => _reddit;
  set reddit(Reddit reddit) => _reddit = reddit;
  Flickr get flickr => _flickr;
  set flickr(Flickr flickr) => _flickr = flickr;
  String get presskit => _presskit;
  set presskit(String presskit) => _presskit = presskit;
  String get webcast => _webcast;
  set webcast(String webcast) => _webcast = webcast;
  String get youtubeId => _youtubeId;
  set youtubeId(String youtubeId) => _youtubeId = youtubeId;
  String get article => _article;
  set article(String article) => _article = article;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;

  Links.fromJson(Map<String, dynamic> json) {
    _patch = json['patch'] != null ? new Patch.fromJson(json['patch']) : null;
    _reddit =
        json['reddit'] != null ? new Reddit.fromJson(json['reddit']) : null;
    _flickr =
        json['flickr'] != null ? new Flickr.fromJson(json['flickr']) : null;
    _presskit = json['presskit'];
    _webcast = json['webcast'];
    _youtubeId = json['youtube_id'];
    _article = json['article'];
    _wikipedia = json['wikipedia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patch'] = this._patch.toJson();
      data['reddit'] = this._reddit.toJson();
      data['flickr'] = this._flickr.toJson();
      data['presskit'] = this._presskit;
    data['webcast'] = this._webcast;
    data['youtube_id'] = this._youtubeId;
    data['article'] = this._article;
    data['wikipedia'] = this._wikipedia;
    return data;
  }
}
