// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaexoedientespageStruct extends BaseStruct {
  ListaexoedientespageStruct({
    int? total,
    List<ItemsStruct>? items,
  })  : _total = total,
        _items = items;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "items" field.
  List<ItemsStruct>? _items;
  List<ItemsStruct> get items => _items ?? const [];
  set items(List<ItemsStruct>? val) => _items = val;

  void updateItems(Function(List<ItemsStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  static ListaexoedientespageStruct fromMap(Map<String, dynamic> data) =>
      ListaexoedientespageStruct(
        total: castToType<int>(data['total']),
        items: getStructList(
          data['items'],
          ItemsStruct.fromMap,
        ),
      );

  static ListaexoedientespageStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaexoedientespageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'items': _items?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListaexoedientespageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListaexoedientespageStruct(
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        items: deserializeStructParam<ItemsStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: ItemsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListaexoedientespageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListaexoedientespageStruct &&
        total == other.total &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode => const ListEquality().hash([total, items]);
}

ListaexoedientespageStruct createListaexoedientespageStruct({
  int? total,
}) =>
    ListaexoedientespageStruct(
      total: total,
    );
