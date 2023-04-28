import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: 'items')
  List<Items>? items;

  SearchResponse({this.items});

  @override
  String toString() => 'SearchResponse(items: $items)';

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class Items {
  @JsonKey(name: 'snippet')
  Snippet snippet;

  Items({required this.snippet});

  @override
  String toString() => 'Items(snippet: $snippet)';

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class Snippet {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'description')
  String? description = "";
  @JsonKey(name: 'thumbnails')
  Thumbnails thumbnails;
  @JsonKey(name: 'tags')
  List<String>? tags = [];

  Snippet({this.title, this.description, required this.thumbnails, this.tags});

  @override
  String toString() {
    return 'Snippet(title: $title, description: $description, thumbnails: $thumbnails, tags: $tags)';
  }

  factory Snippet.fromJson(Map<String, dynamic> json) {
    return _$SnippetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SnippetToJson(this);
}

@JsonSerializable()
class Thumbnails {
  @JsonKey(name: 'maxres')
  Maxres maxres = Maxres(url: "");

  Thumbnails({required this.maxres});

  @override
  String toString() => 'Thumbnails(maxres: $maxres)';

  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return _$ThumbnailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);
}

@JsonSerializable()
class Maxres {
  @JsonKey(name: 'url')
  String? url = "";

  Maxres({this.url});

  @override
  String toString() => 'Maxres(url: $url)';

  factory Maxres.fromJson(Map<String, dynamic> json) {
    return _$MaxresFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MaxresToJson(this);
}
