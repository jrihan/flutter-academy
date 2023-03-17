class DocumentEntity {
  final String title;
  final String description;
  final String type;
  final String url;
  final String author;
  final String college;

  DocumentEntity({
    required this.title,
    required this.description,
    required this.type,
    required this.url,
    required this.author,
    required this.college,
  });

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'type': type,
        'url': url,
        'author': author,
        'college': college
      };

  static DocumentEntity fromJson(Map<String, dynamic> json) => DocumentEntity(
        title: json['title'],
        description: json['description'],
        type: json['type'],
        url: json['url'],
        author: json['author'],
        college: json['college'],
      );
}
