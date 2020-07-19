class Wallpaper {
  String photographer;
  String photographerUrl;
  int photographerId;
  Source source;

  Wallpaper({
    this.source,
    this.photographer,
    this.photographerId,
    this.photographerUrl,
  });

  factory Wallpaper.fromMap(Map<String, dynamic> data) {
    return Wallpaper(
      source: Source.fromMap(data['src']),
      photographer: data['photographer'],
      photographerId: data['photogapher_id'],
      photographerUrl: data['photographer_url'],
    );
  }
}

class Source {
  String original;
  String small;
  String portrait;

  Source({
    this.original,
    this.small,
    this.portrait,
  });

  factory Source.fromMap(Map<String, dynamic> source) {
    return Source(
      original: source['original'],
      small: source['small'],
      portrait: source['portrait'],
    );
  }
}
