class Flickr {
  List<String> _small;
  List<String> _original;

  // Use required keyword to ensure these fields are passed when the object is instantiated.
  // Provide a default empty list to avoid null errors.
  Flickr({
    required List<String> small,
    required List<String> original,
  })  : _small = small,
        _original = original;

  List<String> get small => _small;
  set small(List<String> small) => _small = small;
  List<String> get original => _original;
  set original(List<String> original) => _original = original;

  Flickr.fromJson(Map<String, dynamic> json)
      : _small = List<String>.from(json['small'] ?? []),
        _original = List<String>.from(json['original'] ?? []);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this._small;
    data['original'] = this._original;
    return data;
  }
}
