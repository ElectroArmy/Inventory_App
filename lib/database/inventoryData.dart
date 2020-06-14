import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:inventory_app/Model/inventory.dart';

import '../utils.dart';

class InventoryData extends ChangeNotifier{
  static const String _boxName = "inventoryBox";

  List<Inventory> _inventory = [];

  Inventory _activeInventory;

  void getInventories() async {
    var box = await Hive.openBox<Inventory>(_boxName);

    _inventory = box.values.toList();

    notifyListeners();
  }

  Inventory getInventory(index){
    return _inventory[index];
  }

  void addInventory(Inventory inventory) async{
    var box = await Hive.openBox<Inventory>(_boxName);

    await box.add(inventory);

    _inventory = box.values.toList();

    notifyListeners();
  }

  void deleteInventory(key) async{
    var box = await Hive.openBox<Inventory>(_boxName);

    await box.add(key);

    Log.i("Deleted inventory with key " + key.toString());

    notifyListeners();
  }

  void editInventory({Inventory inventory, int inventoryKey}) async {
    var box = await Hive.openBox<Inventory>(_boxName);

    await box.put(inventoryKey, inventory);

    _inventory = box.values.toList();

    _activeInventory = box.get(inventoryKey);

    Log.i("Edited" + inventory.productName);

    notifyListeners();
  }

  void setActiveAssociate(key) async {
    var box = await Hive.openBox<Inventory>(_boxName);

    _activeInventory = box.get(key);

    notifyListeners();
  }

  Inventory getActiveInventory(){
    return _activeInventory;
  }

  int get inventoryCount{
    return _inventory.length;
  }
}