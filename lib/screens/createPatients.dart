import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/CreatePatients.dart';
import 'entry.dart';


class createPatients extends StatefulWidget {
  const createPatients({Key? key}) : super(key: key);

  @override
  State<createPatients> createState() => _createPatientsState();
}

class _createPatientsState extends State<createPatients> {
  late final controllerName;
  late final controllerAge;
  late final controllerMartialStatus;
  late final controllerChildren;
  late final controllerGender;
  late final controllerHospital;
  late final controllerDoctor;
  late final controllerUHID;
  late final controllerPhoneNo;
  late final controllerCanerType;
  late final controllerStage;
  late final controllerTreatmentPlan;
  late final controllerComorbidities;
  late final controllerHistory;
  late final controllerSocialHistory;
  late final controllerFamilyHistory;
  late final controllerAddress;
  late final controllerPass;

  late String _dropDownValue = "";
  late String _dropDown = "";

  @override
  void initState() {
    // TODO: implement initState
    controllerName = TextEditingController();
    controllerAge = TextEditingController();
    controllerMartialStatus = TextEditingController();
    controllerChildren = TextEditingController();
    controllerGender = TextEditingController();
    controllerHospital = TextEditingController();
    controllerDoctor = TextEditingController();
    controllerUHID = TextEditingController();
    controllerPhoneNo = TextEditingController();
    controllerCanerType = TextEditingController();
    controllerStage = TextEditingController();
    controllerTreatmentPlan = TextEditingController();
    controllerComorbidities = TextEditingController();
    controllerHistory = TextEditingController();
    controllerSocialHistory = TextEditingController();
    controllerFamilyHistory = TextEditingController();
    controllerAddress = TextEditingController();
    controllerPass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerName.dispose();
    controllerAge.dispose();
    controllerMartialStatus.dispose();
    controllerChildren.dispose();
    controllerGender.dispose();
    controllerHospital.dispose();
    controllerDoctor.dispose();
    controllerUHID.dispose();
    controllerPhoneNo.dispose();
    controllerCanerType.dispose();
    controllerStage.dispose();
    controllerTreatmentPlan.dispose();
    controllerComorbidities.dispose();
    controllerHistory.dispose();
    controllerSocialHistory.dispose();
    controllerFamilyHistory.dispose();
    controllerAddress.dispose();
    controllerPass.dispose();
  }


  Future<void> _savePatients() async {
    // get the current text field contents
    final name = controllerName.text;
    final age = controllerAge.text;
    final  martialStatus= controllerMartialStatus.text;
    final children = int.parse(controllerChildren.text);
    final gender = controllerGender.text;
    final hospital = controllerHospital.text;
    final doctor = controllerDoctor.text;
    final uhid = int.parse(controllerUHID.text);
    final phoneNumber = controllerPhoneNo.text;
    final cancerType = controllerCanerType.text;
    final stage = controllerStage.text;
    final comorbidities = controllerComorbidities.text;
    final  treatmentPlan= controllerTreatmentPlan.text;
    final history = controllerHistory.text;
    final familyHistory = controllerFamilyHistory.text;
    final socialHistory = controllerSocialHistory.text;
    final address = controllerAddress.text;

    final newTodo = CreatePatients(
      Name: name,
      Age: age,
      MaritalStatus: martialStatus,
      Children: children,
      Gender: gender,
      Hospital: hospital,
      Doctor: doctor,
      Uhid: uhid,
      PhoneNumber: phoneNumber,
      CancerType: cancerType,
      Stage: stage,
      TreatmentPlan: treatmentPlan,
      Comorbidities: comorbidities,
      History: history,
      SocialHistory: socialHistory,
      FamilyHistory: familyHistory,
      Address: address,
    );
    try {
      // to write data to DataStore, you simply pass an instance of a model to
      // Amplify.DataStore.save()
      await Amplify.DataStore.save(newTodo);
      // after creating a new Todo, close the form
      // Be sure the context at that moment is still valid and mounted
      // if (mounted) {
      //   Navigator.of(context).pop();
      // }
      Navigator.of(context).pop();
    } catch (e) {
      safePrint('An error occurred while saving Todo: $e');
    }
  }

  // AuthUser _user;

  // @override
  // void initState() {
  //   super.initState();
  //   Amplify.Auth.getCurrentUser().then((user) {
  //     setState(() {
  //       _user = user;
  //     });
  //   }).catchError((error) {
  //     print((error as AuthException).message);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Patients'),
        //actions: [
        //   MaterialButton(
        //     onPressed: () {
        //       Amplify.Auth.signOut();
        //       Navigator.pushReplacement(
        //           context, MaterialPageRoute(builder: (_) => EntryScreen()));
        //     },
        //     child: Icon(
        //       Icons.logout,
        //       color: Colors.white,
        //     ),
        //   )
        // ],
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
            child: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Text(
              "Add New Patients:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerName,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      suffixIcon: Icon(Icons.person),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerAge,
                  decoration: InputDecoration(
                      labelText: 'Age',
                      suffixIcon: Icon(Icons.numbers),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: DropdownButton(
                  hint: _dropDown.isEmpty
                      ? const Text(
                    'Marital Status',
                    style:
                    TextStyle(color: Color(0xff5A5A5A), fontSize: 15),
                  )
                      : Text(
                    _dropDown,
                    style: TextStyle(color: Colors.blue),
                  ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.grey[600]),
                  items: ['Single', 'Married', 'Divorced', 'Widowed'].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                          () {
                        _dropDown = val as String;
                        //controllerGender=_dropDownValue;
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       border: Border.all(color: Colors.white),
            //       borderRadius: BorderRadius.circular(12)),
            //   child: Padding(
            //     padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
            //     child: TextField(
            //       controller: controllerHistory,
            //       decoration: InputDecoration(
            //           labelText: 'Marital Status',
            //           //suffixIcon: Icon(Icons.type_specimen),
            //           // hintText: 'Password',
            //           border: InputBorder.none),
            //     ),
            //   ),
            // ),
            //
            // //TODO dicvoureced and awinndowed and maqriied
            // //TODO gender
            // SizedBox(
            //   height: 24,
            // ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerChildren,
                  decoration: InputDecoration(
                      labelText: 'Children',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: DropdownButton(
                  hint: _dropDownValue.isEmpty
                      ? const Text(
                    'Gender',
                    style:
                    TextStyle(color: Color(0xff5A5A5A), fontSize: 15),
                  )
                      : Text(
                    _dropDownValue,
                    style: TextStyle(color: Colors.blue),
                  ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.grey[600]),
                  items: ['Male', 'Female', 'Others'].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                          () {
                        _dropDownValue = val as String;
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerHospital,
                  decoration: InputDecoration(
                      labelText: 'Hospital',
                      suffixIcon: Icon(Icons.local_hospital),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerDoctor,
                  decoration: InputDecoration(
                      labelText: 'Doctor',
                      suffixIcon: Icon(Icons.person),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerUHID,
                  decoration: InputDecoration(
                      labelText: 'UHID',
                      suffixIcon: Icon(Icons.numbers),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerPhoneNo,
                  decoration: InputDecoration(
                      labelText: 'Phone No.',
                      suffixIcon: Icon(Icons.mobile_friendly),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerCanerType,
                  decoration: InputDecoration(
                      labelText: 'Cancer Type',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerStage,
                  decoration: InputDecoration(
                      labelText: 'Stage',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerTreatmentPlan,
                  decoration: InputDecoration(
                      labelText: 'Treatment Plan',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerComorbidities,
                  decoration: InputDecoration(
                      labelText: 'Comorbidities',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerHistory,
                  decoration: InputDecoration(
                      labelText: 'History',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerSocialHistory,
                  decoration: InputDecoration(
                      labelText: 'Social History',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerFamilyHistory,
                  decoration: InputDecoration(
                      labelText: 'Family History',
                      //suffixIcon: Icon(Icons.type_specimen),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 5),
                child: TextField(
                  controller: controllerAddress,
                  decoration: InputDecoration(
                      labelText: 'Address',
                      suffixIcon: Icon(Icons.location_city),
                      // hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () async {
                  _savePatients();
                },
                child: Text('Create'))
          ],
        ),
      ),
    );
  }
}
