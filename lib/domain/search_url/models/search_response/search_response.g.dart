// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'snippet': instance.snippet,
    };

Snippet _$SnippetFromJson(Map<String, dynamic> json) => Snippet(
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SnippetToJson(Snippet instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'tags': instance.tags,
    };

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      maxres: Maxres.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'maxres': instance.maxres,
    };

Maxres _$MaxresFromJson(Map<String, dynamic> json) => Maxres(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MaxresToJson(Maxres instance) => <String, dynamic>{
      'url': instance.url,
    };
