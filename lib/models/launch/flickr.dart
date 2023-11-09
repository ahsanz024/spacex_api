class Flickr {
  List<String> _small;
  List<String> _original;

  Flickr({List<String> small, List<String> original}) {
    this._small = small;
    this._original = original;
  }

  List<String> get small => _small;
  set small(List<String> small) => _small = small;
  List<String> get original => _original;
  set original(List<String> original) => _original = original;

  Flickr.fromJson(Map<String, dynamic> json) {
    if (json['small'] != null) {
      _small = new List<String>();
      json['small'].forEach((v) {
        _small.add(v);
      });
    }
    if (json['original'] != null) {
      _original = new List<String>();
      json['original'].forEach((v) {
        _original.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this._small.map((v) => v).toList();
      data['original'] = this._original.map((v) => v).toList();
      return data;
  }
}
