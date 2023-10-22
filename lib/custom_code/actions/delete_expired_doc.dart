// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future deleteExpiredDoc() async {
  // Delete any "products" documents that have a "product_expiration_date" older than the current date
// Get the current date
  DateTime currentDate = DateTime.now();

  // Get a reference to the "products" collection
  CollectionReference productsRef =
      FirebaseFirestore.instance.collection('products');

  // Query for documents where the "product_expiration_date" is older than the current date
  QuerySnapshot expiredDocs = await productsRef
      .where('product_expiration_date', isLessThan: currentDate)
      .get();

  // Loop through the expired documents and delete them
  expiredDocs.docs.forEach((doc) async {
    await doc.reference.delete();
  });
}
