class Options {
  var select;
  var sort;
  late num offset; // marking as late if you intend to initialize them later
  late num page; // marking as late if you intend to initialize them later
  late num limit; // marking as late if you intend to initialize them later
  late bool
      pagination; // marking as late if you intend to initialize them later
  var populate;

  // You can initialize the non-nullable variables with default values by adding a constructor
  Options({
    this.select,
    this.sort,
    num? offset,
    num? page,
    num? limit,
    bool? pagination,
    this.populate,
  })  : offset = offset ?? 0, // Providing default values if none were passed
        page = page ?? 0,
        limit = limit ?? 10, // For example, default limit of 10
        pagination = pagination ?? true; // Defaulting to true for pagination

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['select'] = this.select;
    data['sort'] = this.sort;
    data['offset'] = this.offset;
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['pagination'] = this.pagination;
    data['populate'] = this.populate;
    data.removeWhere((key, value) => value == null);
    final Map<String, dynamic> options = new Map<String, dynamic>();
    options['options'] = data;
    return options;
  }
}
