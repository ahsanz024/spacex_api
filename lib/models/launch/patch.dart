class Patch {
  String _small;
  String _large;

  Patch({String small, String large}) {
    this._small = small;
    this._large = large;
  }

  String get small => _small;
  set small(String small) => _small = small;
  String get large => _large;
  set large(String large) => _large = large;

  Patch.fromJson(Map<String, dynamic> json) {
    _small = json['small'];
    _large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this._small;
    data['large'] = this._large;
    return data;
  }
}
