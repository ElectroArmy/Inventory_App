import 'package:hive/hive.dart';

part 'inventory.g.dart';

@HiveType(typeId: 0)
class Inventory{

  @HiveField(0)
  final String purchaseNumber;

  @HiveField(1)
  final String companyName;

  @HiveField(2)
  final String productName;

  @HiveField(3)
  final int quantity;

  @HiveField(4)
  final String comment;

  @HiveField(5)
  final DateTime purchasedDate;

  Inventory(this.purchaseNumber, this.companyName, this.productName, this.quantity, this.comment, this.purchasedDate);


}