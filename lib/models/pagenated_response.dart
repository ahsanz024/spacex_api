class PagenatedResponse<T> {
  List<T> docs;
  int totalDocs;
  int offset;
  int limit;
  int totalPages;
  int page;
  int pagingCounter;
  bool hasPrevPage;
  bool hasNextPage;
  int? prevPage; // Nullable fields do not need to be initialized immediately.
  int? nextPage; // Nullable fields do not need to be initialized immediately.

  PagenatedResponse({
    required this.docs,
    required this.totalDocs,
    required this.offset,
    required this.limit,
    required this.totalPages,
    required this.page,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    this.prevPage, // Nullable, hence not required.
    this.nextPage, // Nullable, hence not required.
  });

  factory PagenatedResponse.fromJson(Map<String, dynamic> json) {
    return PagenatedResponse<T>(
      docs: (json['docs'] as List).map((e) => e as T).toList(),
      totalDocs: json['totalDocs'],
      offset: json['offset'],
      limit: json['limit'],
      totalPages: json['totalPages'],
      page: json['page'],
      pagingCounter: json['pagingCounter'],
      hasPrevPage: json['hasPrevPage'],
      hasNextPage: json['hasNextPage'],
      prevPage: json['prevPage'],
      nextPage: json['nextPage'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (docs.isNotEmpty) {
      // Check if T has a toJson method, otherwise just set the value.
      data['docs'] = docs
          .where((v) => v != null)
          .map((v) => (v as dynamic).toJson())
          .toList();
    } else {
      data['docs'] = [];
    }
    data['totalDocs'] = totalDocs;
    data['offset'] = offset;
    data['limit'] = limit;
    data['totalPages'] = totalPages;
    data['page'] = page;
    data['pagingCounter'] = pagingCounter;
    data['hasPrevPage'] = hasPrevPage;
    data['hasNextPage'] = hasNextPage;
    data['prevPage'] = prevPage;
    data['nextPage'] = nextPage;
    return data;
  }
}
