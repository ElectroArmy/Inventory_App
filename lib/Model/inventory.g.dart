// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryAdapter extends TypeAdapter<Inventory> {
  @override
  Inventory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Inventory(
      purchaseNumber: fields[0] as String,
      companyName: fields[1] as String,
      productName: fields[2] as String,
      quantity: fields[3] as int,
      comment: fields[4] as String,
      purchasedDate: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Inventory obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.purchaseNumber)
      ..writeByte(1)
      ..write(obj.companyName)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.comment)
      ..writeByte(5)
      ..write(obj.purchasedDate);
  }

  @override
  // TODO: implement typeId
  int get typeId => throw UnimplementedError();
}
