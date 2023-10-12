class AppException implements Exception {
  final String? title;
  final String? message;
  final String? lottiePath;
  final String? imagePath;

  AppException({
    this.title = "Error",
    this.message = "Some other errors",
    this.lottiePath,
    this.imagePath,
  });
  @override
  String toString() {
    return "title : $title\nmessage: $message ${lottiePath == null ? "" : "\nlottiePath: $lottiePath"} ${imagePath == null ? "" : "\nlottiePath: $imagePath"}";
  }
}
