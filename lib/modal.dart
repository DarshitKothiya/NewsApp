class NewsData {
  String source;
  String author;
  String title;
  String description;
  String url;
  String image;
  String content;

  NewsData({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.image,
    required this.content,
  });

  factory NewsData.fromMap({required Map data}) {
    return NewsData(
      source: data['source']['name'] ?? "UNKNOWN" ,
      author: data['author'] ?? "unknown",
      title: data['title'] ?? "unknown",
      description: data['description'] ?? "unknown",
      url: data['url'] ?? "unknown",
      image: data['urlToImage'] ?? "unknown",
      content: data['content'] ?? "unknown",
    );
  }
}


class Modal{
  static List bookmarkNews = [];
}