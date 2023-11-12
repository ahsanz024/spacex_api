import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

class Links {
  late Patch _patch; // Marked as late
  late Reddit _reddit; // Marked as late
  late Flickr _flickr; // Marked as late
  late String _presskit; // Marked as late
  late String _webcast; // Marked as late
  late String _youtubeId; // Marked as late
  late String _article; // Marked as late
  late String _wikipedia; // Marked as late

  Links({
    required Patch patch, // Made required
    required Reddit reddit, // Made required
    required Flickr flickr, // Made required
    required String presskit, // Made required
    required String webcast, // Made required
    required String youtubeId, // Made required
    required String article, // Made required
    required String wikipedia, // Made required
  }) {
    _patch = patch;
    _reddit = reddit;
    _flickr = flickr;
    _presskit = presskit;
    _webcast = webcast;
    _youtubeId = youtubeId;
    _article = article;
    _wikipedia = wikipedia;
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
    _patch = Patch.fromJson(json['patch'] ?? {}); // Assuming Patch has a non-nullable default constructor
    _reddit = Reddit.fromJson(json['reddit'] ?? {}); // Assuming Reddit has a non-nullable default constructor
    _flickr = Flickr.fromJson(json['flickr'] ?? {}); // Assuming Flickr has a non-nullable default constructor
    _presskit = json['presskit'] ?? ''; // Assuming empty string as default
    _webcast = json['webcast'] ?? ''; // Assuming empty string as default
    _youtubeId = json['youtube_id'] ?? ''; // Assuming empty string as default
    _article = json['article'] ?? ''; // Assuming empty string as default
    _wikipedia = json['wikipedia'] ?? ''; // Assuming empty string as default
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
