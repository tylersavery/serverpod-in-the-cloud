/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Todo implements _i1.SerializableModel {
  Todo._({
    this.id,
    required this.taskName,
    required this.isCompleted,
  });

  factory Todo({
    int? id,
    required String taskName,
    required bool isCompleted,
  }) = _TodoImpl;

  factory Todo.fromJson(Map<String, dynamic> jsonSerialization) {
    return Todo(
      id: jsonSerialization['id'] as int?,
      taskName: jsonSerialization['taskName'] as String,
      isCompleted: jsonSerialization['isCompleted'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String taskName;

  bool isCompleted;

  Todo copyWith({
    int? id,
    String? taskName,
    bool? isCompleted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'taskName': taskName,
      'isCompleted': isCompleted,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TodoImpl extends Todo {
  _TodoImpl({
    int? id,
    required String taskName,
    required bool isCompleted,
  }) : super._(
          id: id,
          taskName: taskName,
          isCompleted: isCompleted,
        );

  @override
  Todo copyWith({
    Object? id = _Undefined,
    String? taskName,
    bool? isCompleted,
  }) {
    return Todo(
      id: id is int? ? id : this.id,
      taskName: taskName ?? this.taskName,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
