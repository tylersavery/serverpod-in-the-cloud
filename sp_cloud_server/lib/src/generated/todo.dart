/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Todo extends _i1.TableRow implements _i1.ProtocolSerialization {
  Todo._({
    int? id,
    required this.taskName,
    required this.isCompleted,
  }) : super(id);

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

  static final t = TodoTable();

  static const db = TodoRepository._();

  String taskName;

  bool isCompleted;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'taskName': taskName,
      'isCompleted': isCompleted,
    };
  }

  static TodoInclude include() {
    return TodoInclude._();
  }

  static TodoIncludeList includeList({
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    TodoInclude? include,
  }) {
    return TodoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Todo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Todo.t),
      include: include,
    );
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

class TodoTable extends _i1.Table {
  TodoTable({super.tableRelation}) : super(tableName: 'todo') {
    taskName = _i1.ColumnString(
      'taskName',
      this,
    );
    isCompleted = _i1.ColumnBool(
      'isCompleted',
      this,
    );
  }

  late final _i1.ColumnString taskName;

  late final _i1.ColumnBool isCompleted;

  @override
  List<_i1.Column> get columns => [
        id,
        taskName,
        isCompleted,
      ];
}

class TodoInclude extends _i1.IncludeObject {
  TodoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Todo.t;
}

class TodoIncludeList extends _i1.IncludeList {
  TodoIncludeList._({
    _i1.WhereExpressionBuilder<TodoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Todo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Todo.t;
}

class TodoRepository {
  const TodoRepository._();

  Future<List<Todo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Todo>(
      where: where?.call(Todo.t),
      orderBy: orderBy?.call(Todo.t),
      orderByList: orderByList?.call(Todo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Todo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Todo>(
      where: where?.call(Todo.t),
      orderBy: orderBy?.call(Todo.t),
      orderByList: orderByList?.call(Todo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Todo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Todo>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Todo>> insert(
    _i1.Session session,
    List<Todo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Todo>(
      rows,
      transaction: transaction,
    );
  }

  Future<Todo> insertRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Todo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Todo>> update(
    _i1.Session session,
    List<Todo> rows, {
    _i1.ColumnSelections<TodoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Todo>(
      rows,
      columns: columns?.call(Todo.t),
      transaction: transaction,
    );
  }

  Future<Todo> updateRow(
    _i1.Session session,
    Todo row, {
    _i1.ColumnSelections<TodoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Todo>(
      row,
      columns: columns?.call(Todo.t),
      transaction: transaction,
    );
  }

  Future<List<Todo>> delete(
    _i1.Session session,
    List<Todo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Todo>(
      rows,
      transaction: transaction,
    );
  }

  Future<Todo> deleteRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Todo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Todo>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TodoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Todo>(
      where: where(Todo.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Todo>(
      where: where?.call(Todo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
