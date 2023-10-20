// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future deleteExpiredDocOnDelay() async {
  // Delete any "products" documents with a "product_expiration_date" one day before the current date
// Get the current date
  DateTime currentDate = DateTime.now();

  // Calculate the expiration date
  DateTime expirationDate = currentDate.subtract(Duration(days: 1));

  // Get the Firestore instance
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Get the collection reference for "products"
  CollectionReference productsRef = firestore.collection("products");

  // Query for documents with an expiration date of one day before the current date
  QuerySnapshot querySnapshot = await productsRef
      .where("product_expiration_date", isLessThan: expirationDate)
      .get();

  // Delete each document found in the query
  querySnapshot.docs.forEach((doc) async {
    await doc.reference.delete();
  });
}
