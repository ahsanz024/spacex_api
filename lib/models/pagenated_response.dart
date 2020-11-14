class PagenatedResponse {
  List docs;
  int totalDocs;
  int offset;
  int limit;
  int totalPages;
  int page;
  int pagingCounter;
  bool hasPrevPage;
  bool hasNextPage;
  Null prevPage;
  int nextPage;

  PagenatedResponse({
    this.docs,
    this.totalDocs,
    this.offset,
    this.limit,
    this.totalPages,
    this.page,
    this.pagingCounter,
    this.hasPrevPage,
    this.hasNextPage,
    this.prevPage,
    this.nextPage,
  });

  PagenatedResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = new List();
      json['docs'].forEach((v) {
        docs.add(v);
      });
    }
    totalDocs = json['totalDocs'];
    offset = json['offset'];
    limit = json['limit'];
    totalPages = json['totalPages'];
    page = json['page'];
    pagingCounter = json['pagingCounter'];
    hasPrevPage = json['hasPrevPage'];
    hasNextPage = json['hasNextPage'];
    prevPage = json['prevPage'];
    nextPage = json['nextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.docs != null) {
      data['docs'] = this.docs.map((v) => v.toJson()).toList();
    }
    data['totalDocs'] = this.totalDocs;
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    data['totalPages'] = this.totalPages;
    data['page'] = this.page;
    data['pagingCounter'] = this.pagingCounter;
    data['hasPrevPage'] = this.hasPrevPage;
    data['hasNextPage'] = this.hasNextPage;
    data['prevPage'] = this.prevPage;
    data['nextPage'] = this.nextPage;
    return data;
  }
}
