class Links {
  String _article;

  Links({required String article}) : _article = article;

  String get article => _article;
  set article(String article) => _article = article;

  Links.fromJson(Map<String, dynamic> json) : _article = json['article'] ?? '';

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['article'] = this._article;
    return data;
  }
}
