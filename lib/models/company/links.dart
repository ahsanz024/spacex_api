class Links {
  String _website = '';
  String _flickr = '';
  String _twitter = '';
  String _elonTwitter = '';

  Links({required String website, required String flickr, required String twitter, required String elonTwitter}) {
    this._website = website;
    this._flickr = flickr;
    this._twitter = twitter;
    this._elonTwitter = elonTwitter;
  }

  String get website => _website;
  set website(String website) => _website = website;
  String get flickr => _flickr;
  set flickr(String flickr) => _flickr = flickr;
  String get twitter => _twitter;
  set twitter(String twitter) => _twitter = twitter;
  String get elonTwitter => _elonTwitter;
  set elonTwitter(String elonTwitter) => _elonTwitter = elonTwitter;

  Links.fromJson(Map<String, dynamic> json) {
    _website = json['website'];
    _flickr = json['flickr'];
    _twitter = json['twitter'];
    _elonTwitter = json['elon_twitter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['website'] = this._website;
    data['flickr'] = this._flickr;
    data['twitter'] = this._twitter;
    data['elon_twitter'] = this._elonTwitter;
    return data;
  }
}
