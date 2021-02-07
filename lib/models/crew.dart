class Crew {
  String _name;
  String _agency;
  String _image;
  String _wikipedia;
  List<String> _launches;
  String _status;
  String _id;

  Crew(
      {String name,
      String agency,
      String image,
      String wikipedia,
      List<String> launches,
      String status,
      String id}) {
    this._name = name;
    this._agency = agency;
    this._image = image;
    this._wikipedia = wikipedia;
    this._launches = launches;
    this._status = status;
    this._id = id;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get agency => _agency;
  set agency(String agency) => _agency = agency;
  String get image => _image;
  set image(String image) => _image = image;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;
  List<String> get launches => _launches;
  set launches(List<String> launches) => _launches = launches;
  String get status => _status;
  set status(String status) => _status = status;
  String get id => _id;
  set id(String id) => _id = id;

  /// Deserialize recieved data
  Crew.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _agency = json['agency'];
    _image = json['image'];
    _wikipedia = json['wikipedia'];
    _launches = json['launches']?.cast<String>();
    _status = json['status'];
    _id = json['id'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['agency'] = this._agency;
    data['image'] = this._image;
    data['wikipedia'] = this._wikipedia;
    data['launches'] = this._launches;
    data['status'] = this._status;
    data['id'] = this._id;
    return data;
  }
}
