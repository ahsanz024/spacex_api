class Patch {
  String _small;
  String _large;

  // Use the required keyword to indicate that the parameters must not be null
  Patch({required String small, required String large})
      : _small = small, // Initialize using the initializer list
        _large = large; // Initialize using the initializer list

  String get small => _small;
  set small(String small) => _small = small;
  String get large => _large;
  set large(String large) => _large = large;

  Patch.fromJson(Map<String, dynamic> json)
      : _small = json['small']!, // Use the null assertion operator if you are sure the value won't be null
        _large = json['large']!; // Use the null assertion operator if you are sure the value won't be null

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this._small;
    data['large'] = this._large;
    return data;
  }
}
