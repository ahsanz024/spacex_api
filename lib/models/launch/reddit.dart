class Reddit {
  String _campaign;
  String _launch;
  String _media;
  String _recovery;

  Reddit({String campaign, String launch, String media, String recovery}) {
    this._campaign = campaign;
    this._launch = launch;
    this._media = media;
    this._recovery = recovery;
  }

  String get campaign => _campaign;
  set campaign(String campaign) => _campaign = campaign;
  String get launch => _launch;
  set launch(String launch) => _launch = launch;
  String get media => _media;
  set media(String media) => _media = media;
  String get recovery => _recovery;
  set recovery(String recovery) => _recovery = recovery;

  Reddit.fromJson(Map<String, dynamic> json) {
    _campaign = json['campaign'];
    _launch = json['launch'];
    _media = json['media'];
    _recovery = json['recovery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campaign'] = this._campaign;
    data['launch'] = this._launch;
    data['media'] = this._media;
    data['recovery'] = this._recovery;
    return data;
  }
}
