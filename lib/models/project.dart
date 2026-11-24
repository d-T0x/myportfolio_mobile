import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

/// Portfolio project synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    this.id,
    required this.title,
    required this.description,
    this.category = 'misc',
    required this.createdAt,
    required this.programs,
    required this.link,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  @JsonKey(defaultValue: 'misc')
  final String category;
  final String createdAt;
  final String programs;
  final String link;

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
