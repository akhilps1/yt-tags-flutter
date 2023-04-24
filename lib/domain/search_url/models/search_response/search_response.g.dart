// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

Maxres _$MaxresFromJson(Map<String, dynamic> json) => Maxres(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$MaxresToJson(Maxres instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      maxres: json['maxres'] == null
          ? null
          : Maxres.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'maxres': instance.maxres,
    };

Snippet _$SnippetFromJson(Map<String, dynamic> json) => Snippet(
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$SnippetToJson(Snippet instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'tags': instance.tags,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String?,
      snippet: json['snippet'] == null
          ? null
          : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
    };
