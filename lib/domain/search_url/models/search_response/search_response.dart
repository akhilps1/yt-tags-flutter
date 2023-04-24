import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: "items")
  List<Item>? items;

  SearchResponse({this.items});

  @override
  String toString() => 'SearchResponse(items: $items)';

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class Maxres {
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;

  Maxres({this.url, this.width, this.height});

  @override
  String toString() => 'Maxres(url: $url, width: $width, height: $height)';

  factory Maxres.fromJson(Map<String, dynamic> json) {
    return _$MaxresFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MaxresToJson(this);
}

@JsonSerializable()
class Thumbnails {
  @JsonKey(name: "maxres")
  Maxres? maxres;

  Thumbnails({this.maxres});

  @override
  String toString() => 'Thumbnails(maxres: $maxres)';

  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return _$ThumbnailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);
}

@JsonSerializable()
class Snippet {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "thumbnails")
  Thumbnails? thumbnails;
  @JsonKey(name: "tags")
  List<dynamic>? tags;

  Snippet({this.title, this.description, this.thumbnails, this.tags});

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
class Item {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "snippet")
  Snippet? snippet;

  Item({this.id, this.snippet});

  @override
  String toString() => 'Item(id: $id, snippet: $snippet)';

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
