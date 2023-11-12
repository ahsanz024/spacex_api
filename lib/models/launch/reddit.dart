class Reddit {
  String _campaign;
  String _launch;
  String _media;
  String _recovery;

  // Use the required keyword to indicate that the parameters must not be null
  Reddit({required String campaign, required String launch, required String media, required String recovery})
      : _campaign = campaign,  // Initialize using the initializer list
        _launch = launch,      // Initialize using the initializer list
        _media = media,        // Initialize using the initializer list
        _recovery = recovery;  // Initialize using the initializer list

  String get campaign => _campaign;
  set campaign(String campaign) => _campaign = campaign;
  String get launch => _launch;
  set launch(String launch) => _launch = launch;
  String get media => _media;
  set media(String media) => _media = media;
  String get recovery => _recovery;
  set recovery(String recovery) => _recovery = recovery;

  Reddit.fromJson(Map<String, dynamic> json)
      : _campaign = json['campaign']!,  // Use the null assertion operator if you are sure the value won't be null
        _launch = json['launch']!,      // Use the null assertion operator if you are sure the value won't be null
        _media = json['media']!,        // Use the null assertion operator if you are sure the value won't be null
        _recovery = json['recovery']!;  // Use the null assertion operator if you are sure the value won't be null

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campaign'] = this._campaign;
    data['launch'] = this._launch;
    data['media'] = this._media;
    data['recovery'] = this._recovery;
    return data;
  }
}
