import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  // method/ function for add employee details from employee page to database
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }

//   for get all the details from the firebase database
  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }


//   for update button

  Future updateEmployeeDetails(
      String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .update(updateInfo);
  }

//   for delete employee details
Future deleteEmployeeDetails(String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
}
}
