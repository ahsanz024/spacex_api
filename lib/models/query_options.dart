class QueryOptions {
  var select;
  var sort;
  num offset;
  num page;
  num limit;
  bool pagination;
  var populate;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['select'] = this.select;
    data['sort'] = this.sort;
    data['offset'] = this.offset;
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['pagination'] = this.pagination;
    data['populate'] = this.populate;
    data.removeWhere((key, value) => key == null || value == null);
    final Map<String, dynamic> options = new Map<String, dynamic>();
    options['options'] = data;
    return options;
  }
}
