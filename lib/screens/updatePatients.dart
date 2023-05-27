import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'components.dart';
import 'package:admin/models/UpdatePatients.dart';

class updatePatients extends StatefulWidget {
  var bmi;
  var UHID;
  updatePatients({Key? key,  this.UHID}) : super(key: key);

  @override
  State<updatePatients> createState() => _updatePatientsState();
}

class _updatePatientsState extends State<updatePatients> {


  late final controllerName;
  late final controllerUHID;
  late final controllerSPO2;
  late final controllerBloodPressure;
  late final controllerHb;
  late final controllerHbA1c;
  late final controllerFBS;
  late final controllerPPBS;
  late final controllerHeight ;
  late final controllerWeight;
  late final controllerBMI;
  late final  controllerHands;
  late final  controllerLegs;
  late final controllerFatHands ;
  late final controllerFatLegs;
  late final controllerFatTrunk ;
  late final controllerTrunk;

  late final controllerStrengthLeftHand;
  late final controllerStrengthRightHand;
  late final controllerStrengthLeftLeg ;
  late final controllerStrengthRightLeg;


  late final controllerEnduranceLeftHand ;
  late final controllerEnduranceRightHand ;
  late final controllerStrengthLeftLim;
  late final controllerStrengthRightLimb;
  late final controllerEnduranceLeftLeg ;
  late final controllerEnduranceRightLeg;
  late final controllerEnduranceWaist;
  late final controllerEnduranceHip;

  late final controllerRBC ;
  late final controllerWBC ;

  late final controllerNeutophil;
  late final controllerEosinophil;
  late final controllerLymphocyte;
  late final controllerBasophil;
  late final controllerMonocyte;
  late final controllerHctPvc ;
  late final controllerAlbumin;
  late final controllerGlobulin;
  late final controllerCreatinine ;
  late final controllerUrea ;
   late final controllerDischarge ;
  late final controllerTotalCholesterol;
  late final controllerLDLCholesterol;
  late final controllerHDLCholesterol;
  late final controllerVLDLCholesterol;
  late final controllerTriglyceride;
  late final controllerTotal;
  late final controllerFatTotal;
  late final controllerCalfSkin;
  late final controllerCalfCircumference;
  late final controllerMidArm;
  late final controllerMidQuadriceps;
  late final controllerTriceps;
  late final controllerDominantLeg;
  late final controllerDominantEnduranceLeg;



  @override
  void initState() {
    // TODO: implement initState
    
    controllerName= TextEditingController();
    controllerUHID= TextEditingController();
   controllerHb = TextEditingController();
     controllerSPO2= TextEditingController();
     controllerBloodPressure= TextEditingController();

     controllerHbA1c= TextEditingController();
     controllerFBS= TextEditingController();
     controllerPPBS= TextEditingController();
     controllerHeight = TextEditingController();
     controllerWeight= TextEditingController();
     controllerBMI= TextEditingController();
      controllerHands= TextEditingController();
      controllerLegs= TextEditingController();
    controllerFatHands = TextEditingController();
     controllerFatLegs= TextEditingController();
     controllerFatTrunk = TextEditingController();
     controllerTrunk= TextEditingController();

     controllerStrengthLeftHand= TextEditingController();
     controllerStrengthRightHand= TextEditingController();
     controllerStrengthLeftLeg = TextEditingController();
     controllerStrengthRightLeg= TextEditingController();


     controllerEnduranceLeftHand = TextEditingController();
     controllerEnduranceRightHand = TextEditingController();
     controllerStrengthLeftLim= TextEditingController();
     controllerStrengthRightLimb= TextEditingController();
     controllerEnduranceLeftLeg = TextEditingController();
     controllerEnduranceRightLeg= TextEditingController();
     controllerEnduranceWaist= TextEditingController();
     controllerEnduranceHip= TextEditingController();

     controllerRBC = TextEditingController();
     controllerWBC = TextEditingController();

     controllerNeutophil= TextEditingController();
     controllerEosinophil= TextEditingController();
     controllerLymphocyte= TextEditingController();
     controllerBasophil= TextEditingController();
     controllerMonocyte= TextEditingController();
     controllerHctPvc = TextEditingController();
     controllerAlbumin= TextEditingController();
     controllerGlobulin= TextEditingController();
     controllerCreatinine = TextEditingController();
     controllerUrea = TextEditingController();
     controllerDischarge=TextEditingController();
     controllerTotalCholesterol= TextEditingController();
     controllerLDLCholesterol= TextEditingController();
     controllerHDLCholesterol= TextEditingController();
     controllerVLDLCholesterol= TextEditingController();
     controllerTriglyceride= TextEditingController();
     controllerTotal= TextEditingController();
     controllerFatTotal= TextEditingController();
     controllerCalfSkin= TextEditingController();
     controllerCalfCircumference= TextEditingController();
     controllerMidArm= TextEditingController();
     controllerMidQuadriceps= TextEditingController();
     controllerTriceps= TextEditingController();
     controllerDominantLeg=TextEditingController();
     controllerDominantEnduranceLeg= TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    controllerName.dispose();
    controllerUHID.dispose();
    controllerHb .dispose();
    controllerSPO2.dispose();
    controllerBloodPressure.dispose();

    controllerHbA1c.dispose();
    controllerFBS.dispose();
    controllerPPBS.dispose();
    controllerHeight .dispose();
    controllerWeight.dispose();
    controllerBMI.dispose();
    controllerHands.dispose();
    controllerLegs.dispose();
    controllerFatHands .dispose();
    controllerFatLegs.dispose();
    controllerFatTrunk .dispose();
    controllerTrunk.dispose();

    controllerStrengthLeftHand.dispose();
    controllerStrengthRightHand.dispose();
    controllerStrengthLeftLeg .dispose();
    controllerStrengthRightLeg.dispose();


    controllerEnduranceLeftHand .dispose();
    controllerEnduranceRightHand .dispose();
    controllerStrengthLeftLim.dispose();
    controllerStrengthRightLimb.dispose();
    controllerEnduranceLeftLeg .dispose();
    controllerEnduranceRightLeg.dispose();
    controllerEnduranceWaist.dispose();
    controllerEnduranceHip.dispose();

    controllerRBC .dispose();
    controllerWBC .dispose();

    controllerNeutophil.dispose();
    controllerEosinophil.dispose();
    controllerLymphocyte.dispose();
    controllerBasophil.dispose();
    controllerMonocyte.dispose();
    controllerHctPvc .dispose();
    controllerAlbumin.dispose();
    controllerGlobulin.dispose();
    controllerCreatinine .dispose();
    controllerUrea .dispose();
    controllerDischarge.dispose() ;
    controllerTotalCholesterol.dispose();
    controllerLDLCholesterol.dispose();
    controllerHDLCholesterol.dispose();
    controllerVLDLCholesterol.dispose();
    controllerTriglyceride.dispose();
    controllerTotal.dispose();
    controllerFatTotal.dispose();
    controllerCalfSkin.dispose();
    controllerCalfCircumference.dispose();
    controllerMidArm.dispose();
    controllerMidQuadriceps.dispose();
    controllerTriceps.dispose();
    controllerDominantLeg.dispose();
    controllerDominantEnduranceLeg.dispose();
  }


  late String _dropDownValue = "";
  late String _dropDown=""; String date = DateFormat.yMMMMd('en_US').format(DateTime.now());


  Future<void> _updatePatients() async {
    // get the current text field contents
    final Name= controllerName.text;
    final Uhid =  int.parse(controllerUHID.text);
    final  Date= date;
    final bmi=0;
    final BloodPressure= controllerBloodPressure.text;
    final HbPercentage= controllerHb.text;
    final Sp02= controllerSPO2.text;
    final Fbs= controllerFBS.text;
    final Ppbs= controllerPPBS.text;
    final Height= double.parse(controllerHeight.text);
    final Weight= double.parse(controllerWeight.text);
    final TotalFat= controllerFatTotal.text;
    final TrunkFat= controllerFatTrunk.text;
    final HbA1c= controllerHbA1c.text;
    final HandsFat= controllerFatHands.text;
    final  TotalSkeletalMuscle= controllerTotal.text;
    final TrunkSkeletalMuscle= controllerTrunk.text;
    final LegsSkeletalMuscle=controllerLegs.text;
    final HandsSkeletal= controllerHands.text;
    final LeftHandSP= controllerStrengthLeftHand.text;
    final RightHandSP= controllerStrengthRightHand.text;
    final LeftLegSP =controllerStrengthLeftLeg.text;
    final RightLegSP= controllerStrengthRightLeg.text;
    final LegsFat= controllerFatLegs.text;
    final MidArm=controllerMidArm.text;
    final TricepsSkinFold= controllerTriceps.text;
    final CalfSkinCircumference=controllerCalfCircumference.text;
    final LeftHandEndurance=controllerEnduranceLeftHand.text;
    final RightHandEndurance=controllerEnduranceRightHand.text;
    final LeftLegEndurance=controllerEnduranceLeftLeg.text;
    final RightLegEndurance=controllerEnduranceRightLeg.text;
    final Hip= controllerEnduranceHip.text;
    final  Waist=controllerEnduranceWaist.text;
    final  RbcCount=controllerRBC.text;
    final  CalfCircumference=controllerCalfCircumference.text;
    final  Neutrophil=controllerNeutophil.text;
    final  Eosinophil=controllerEosinophil.text;
    final  Lymphocyte=controllerLymphocyte.text;
    final   Basophil=controllerBasophil.text;
    final  Monocyte=controllerMonocyte.text;
    final  HctPcv=controllerHctPvc.text;
    final  Albumin=controllerAlbumin.text;
    final WbcCount=controllerWBC.text;
    final  Creatinine=controllerCreatinine.text;
    final Urea=controllerUrea.text;
    final TotalCholesterol=controllerTotalCholesterol.text;
    final LdlCholesterol=controllerLDLCholesterol.text;
    final HdlCholesterol=controllerHDLCholesterol.text;
    final Globulin=controllerGlobulin.text;
    final Triglyceride=controllerTriglyceride.text;
    final  DischargeDate=controllerDischarge.text;
    final VldlCholesterol=controllerVLDLCholesterol.text;

    final newTodo = UpdatePatients(
        Name: Name,
        Uhid: Uhid,
        Date: Date,
        BloodPressure: BloodPressure,
        HbPercentage: HbPercentage,
        Sp02: Sp02,
        Fbs: Fbs,
        Ppbs: Ppbs,
        Height: Height,
        Weight: Weight,
        Bmi: 0,
        TrunkFat: TrunkFat,
        HbA1c: HbA1c,
        HandsFat: HandsFat,
        TotalSkeletalMuscle: TotalSkeletalMuscle,
        TrunkSkeletalMuscle: TrunkSkeletalMuscle,
        LegsSkeletalMuscle: LegsSkeletalMuscle,
        TotalFat: TotalFat,
        LeftHandSP: LeftHandSP,
        RightHandSP: RightHandSP,
        LeftLegSP: LeftLegSP,
        HandsSkeletal: HandsSkeletal,
        LegsFat: LegsFat,
        MidArm: MidArm,
        TricepsSkinFold: TricepsSkinFold,
        CalfSkinCircumference: CalfSkinCircumference,
        LeftHandEndurance: LeftHandEndurance,
        RightLegSP: RightLegSP,
        LeftLegEndurance: LeftLegEndurance,
        RightLegEndurance: RightLegEndurance,
        RightHandEndurance: RightHandEndurance,
        Waist: Waist,
        RbcCount: RbcCount,
        CalfCircumference: CalfCircumference,
        Neutrophil: Neutrophil,
        Eosinophil: Eosinophil,
        Lymphocyte: Lymphocyte,
        Basophil: Basophil,
        Monocyte: Monocyte,
        HctPcv: HctPcv,
        Hip: Hip,
        Albumin: Albumin,
        WbcCount: WbcCount,
        Creatinine: Creatinine,
        Urea: Urea,
        TotalCholesterol: TotalCholesterol,
        LdlCholesterol: LdlCholesterol,
        HdlCholesterol: HdlCholesterol,
        Globulin: Globulin,
        Triglyceride: Triglyceride,
        DischargeDate: DischargeDate,
        VldlCholesterol: VldlCholesterol
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






  @override
  Widget build(BuildContext context) {
    //final Storage storage=Storage();
    String date = DateFormat.yMMMMd('en_US').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Can-cer vive",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Text(
              "Update Patients Informations",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 10,
            ),
            Components(controllerText: controllerName, displayText: "Name"),
            SizedBox(
              height: 24,
            ),
            Components(controllerText: controllerUHID, displayText: "UHID"),
            SizedBox(
              height: 24,
            ),
            Components(controllerText: controllerSPO2, displayText: "SpO2"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerBloodPressure,
                displayText: "Blood Pressure"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerHb, displayText: "Hb%"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerHbA1c, displayText: "HbA1c"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerFBS, displayText: "FBS"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerPPBS, displayText: "PPBS"),
            SizedBox(
              height: 24,
            ),

            Text(
              "Body Composition:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerHeight, displayText: "Height"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerWeight, displayText: "Weight"),
            SizedBox(
              height: 24,
            ),


            SizedBox(
              height: 24,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Subcutaneous fat:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerFatTotal, displayText: "Total"),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerFatTrunk, displayText: "Trunk"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerFatLegs, displayText: "Legs"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerFatHands, displayText: "Hands"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Skeletal Muscle:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerTotal, displayText: "Total"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerTrunk, displayText: "Trunk"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerLegs, displayText: "Legs"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerHands, displayText: "Hands"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Strength parameters",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerStrengthLeftHand,
                displayText: "Left hand"),
            SizedBox(
              height: 24,
            ),
            Components(controllerText: controllerStrengthRightHand, displayText: "Right Hand"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerStrengthLeftLeg,
                displayText: "Left Leg"),
            SizedBox(
              height: 24,
            ),
            Components(controllerText: controllerStrengthRightLeg, displayText: "Right leg"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Circumference",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerCalfCircumference,
                displayText: "Calf Circumference"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerMidArm,
                displayText: "Mid-Arm"),
            SizedBox(
              height: 24,
            ),


            Components(
                controllerText: controllerTriceps,
                displayText: "Triceps Skinfold"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerCalfSkin,
                displayText: "Calf Skin-Circumference"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Endurance",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerEnduranceLeftHand,
                displayText: "Left Hand"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerEnduranceRightHand,
                displayText: "Right Hand"),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerEnduranceLeftLeg,
                displayText: "Left Leg"),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerEnduranceRightLeg,
                displayText: "Right Leg"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerEnduranceHip,
                displayText: "Hip"),
            SizedBox(
              height: 24,
            ),
            Components(
                controllerText: controllerEnduranceWaist,
                displayText: "Waist"),
            SizedBox(
              height: 24,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Blood parameters: ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerRBC, displayText: "RBC count"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerWBC, displayText: "WBC count"),
            SizedBox(
              height: 24,
            ),


            Components(
                controllerText: controllerNeutophil, displayText: "Neutrophil"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerEosinophil,
                displayText: "Eosinophil"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerLymphocyte,
                displayText: "Lymphocyte"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerBasophil, displayText: "Basophil"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerMonocyte, displayText: "Monocyte"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerHctPvc, displayText: "HCT/PCV"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Liver Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerAlbumin, displayText: "Albumin"),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerGlobulin, displayText: "Globulin"),
            SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Kidney Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Components(
                controllerText: controllerCreatinine,
                displayText: "Creatinine"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerUrea, displayText: "Urea"),
            SizedBox(
              height: 24,
            ),

            Text(
              "Lipid Profile Test:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerTotalCholesterol, displayText: "Total Cholesterol"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerLDLCholesterol, displayText: "LDL Cholesterol"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerHDLCholesterol, displayText: "HDL Cholesterol"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerVLDLCholesterol, displayText: "VLDL Cholesterol"),
            SizedBox(
              height: 24,
            ),

            Components(controllerText: controllerTriglyceride, displayText: "Triglyceride"),
            SizedBox(
              height: 24,
            ),

            Components(

                displayText: "Discharge Date", controllerText: controllerDischarge,),
            SizedBox(
              height: 24,
            ),

            SizedBox(
              height: 24,
            ),

            ElevatedButton(

                onPressed: () {
                  // int weight=int.parse(controllerWeight.text);
                  // int height=int.parse(controllerHeight.text);
                  // double bmi=(weight/(height*height)) as double;
                  // //TODO in that first child UHID of the current patient haku
                  // dbRef.child(widget.UHID).child("Sessions").set({
                  //   "Session $date": {
                  //     'SpO2': controllerSPO2.text,
                  //     'date':"$date",
                  //     'Blood Pressure': controllerBloodPressure.text,
                  //     'Dominant Leg': _dropDown,
                  //     'Dominant Hand': _dropDownValue,
                  //     'haemoglobin': controllerHb.text,
                  //     'HbA1c': controllerHbA1c.text,
                  //     'FBS': controllerFBS.text,
                  //     'PPBS': controllerPPBS.text,
                  //     'Height': controllerHeight.text,
                  //     'Weight': controllerWeight.text,
                  //     'BMI': bmi.toString(),
                  //     'Subcutaneous fat-Total':controllerFatTotal.text,
                  //     'Subcutaneous fat-Trunk': controllerFatTrunk.text,
                  //     'Subcutaneous fat-Hands': controllerFatHands.text,
                  //     'Subcutaneous fat-Legs': controllerFatLegs.text,
                  //     'Skeletal Muscle-Total': controllerTotal.text,
                  //     'Skeletal Muscle-Trunk': controllerTrunk.text,
                  //     'Skeletal Muscle-Hands': controllerHands.text,
                  //     'Skeletal Muscle-Legs': controllerLegs.text,
                  //     'Strength parameters Upper-Limb':
                  //     controllerStrengthUpperLimb.text,
                  //     'Strength parameters Lower-Limb':
                  //     controllerStrengthLowerLimb.text,
                  //     // final controllerStrengthLeftLimb .dispose();
                  //     // final controllerStrengthRightLimb .dispose();
                  //     // final controllerEnduranceLeftLimb .dispose();
                  //     // final controllerEnduranceRightLimb .dispose();
                  //     'Strength parameters Left-Limb':
                  //     controllerStrengthLeftLimb.text,
                  //     'Strength parameters Right-Limb':
                  //     controllerStrengthRightLimb.text,
                  //
                  //     'Calf-Circumference': controllerCalfCircumference.text,
                  //     'MidArm-Circumference': controllerMidArm.text,
                  //     'Triceps Skinfold': controllerTriceps.text,
                  //     'Calf-Skin Circumference': controllerCalfSkin.text,
                  //     'Endurance Upper-Limb': controllerEnduranceUpperLimb.text,
                  //     'Endurance Lower-Limb': controllerEnduranceLowerLimb.text,
                  //     'Endurance Left-Limb': controllerEnduranceLeftLimb.text,
                  //     'Endurance Right-Limb': controllerEnduranceRightLimb.text,
                  //     'RBC': controllerRBC.text,
                  //     'WBC':controllerWBC.text,
                  //     'Neutrinophil': controllerNeutophil.text,
                  //     'Eosinophil': controllerEosinophil.text,
                  //     'Lymphocytes': controllerLymphocyte.text,
                  //     'Basophil': controllerBasophil.text,
                  //     'Monocyte': controllerMonocyte.text,
                  //     'HCR-PCV': controllerHctPvc.text,
                  //     'Albumin': controllerAlbumin.text,
                  //     'Globulin': controllerGlobulin.text,
                  //     'Creatinine': controllerCreatinine.text,
                  //     'Urea': controllerUrea.text,
                  //     'Total Cholesterol':controllerTotalCholesterol.text,
                  //     'HDL Cholesterol':controllerHDLCholesterol.text,
                  //     'LDL Cholesterol':controllerLDLCholesterol.text,
                  //     'VLDL Cholesterol':controllerVLDLCholesterol.text,
                  //     'Triglyceride':controllerTriglyceride.text,
                  //     'Discharge Details': controllerDischarge.text
                   // }
                  //});
                  _updatePatients();
                },
                child: Text('Upload'))
          ],
        ),
      ),
    );
  }
}
