import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('users');

class Database {
  static String? userUid;


  static Future<void> addUser(
    {required String name, required String email, required String uid})
    async {
      DocumentReference referencer = _mainCollection.doc(uid);

       Map<String, dynamic> data = <String, dynamic>{
      "name": name,
      "email": email,
      };
      await referencer
        .set(data)
        .whenComplete(() => print("Name item added to the database"))
        .catchError((e) => print(e));
    }

/*   static Future<void> addItem(s
      {required String title, required String note}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc();


    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "note": note,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item added to the database"))
        .catchError((e) => print(e));
  }
 */
  static Future<void> updateItem(
      {required String title,
      required String note,
      required String docId}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "note": note,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
        _mainCollection.doc(userUid).collection('items');

    return notesItemCollection.snapshots();
  }

  static Future<void> deleteItem({required String docId}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
  }
/* 
    static String<void> getItem({required String docId}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);
  String x = '';
    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
        return x;
  } */
}
