/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the UpdatePatients type in your schema. */
@immutable
class UpdatePatients extends Model {
  static const classType = const _UpdatePatientsModelType();
  final String id;
  final String? _Name;
  final int? _Uhid;
  final String? _Date;
  final String? _BloodPressure;
  final String? _HbPercentage;
  final String? _Sp02;
  final String? _Fbs;
  final String? _Ppbs;
  final double? _Height;
  final double? _Weight;
  final double? _Bmi;
  final String? _TrunkFat;
  final String? _HbA1c;
  final String? _HandsFat;
  final String? _TotalSkeletalMuscle;
  final String? _TrunkSkeletalMuscle;
  final String? _LegsSkeletalMuscle;
  final String? _TotalFat;
  final String? _LeftHandSP;
  final String? _RightHandSP;
  final String? _LeftLegSP;
  final String? _HandsSkeletal;
  final String? _LegsFat;
  final String? _MidArm;
  final String? _TricepsSkinFold;
  final String? _CalfSkinCircumference;
  final String? _LeftHandEndurance;
  final String? _RightLegSP;
  final String? _LeftLegEndurance;
  final String? _RightLegEndurance;
  final String? _RightHandEndurance;
  final String? _Waist;
  final String? _RbcCount;
  final String? _CalfCircumference;
  final String? _Neutrophil;
  final String? _Eosinophil;
  final String? _Lymphocyte;
  final String? _Basophil;
  final String? _Monocyte;
  final String? _HctPcv;
  final String? _Hip;
  final String? _Albumin;
  final String? _WbcCount;
  final String? _Creatinine;
  final String? _Urea;
  final String? _TotalCholesterol;
  final String? _LdlCholesterol;
  final String? _HdlCholesterol;
  final String? _Globulin;
  final String? _Triglyceride;
  final String? _DischargeDate;
  final String? _VldlCholesterol;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UpdatePatientsModelIdentifier get modelIdentifier {
      return UpdatePatientsModelIdentifier(
        id: id
      );
  }
  
  String? get Name {
    return _Name;
  }
  
  int? get Uhid {
    return _Uhid;
  }
  
  String? get Date {
    return _Date;
  }
  
  String? get BloodPressure {
    return _BloodPressure;
  }
  
  String? get HbPercentage {
    return _HbPercentage;
  }
  
  String? get Sp02 {
    return _Sp02;
  }
  
  String? get Fbs {
    return _Fbs;
  }
  
  String? get Ppbs {
    return _Ppbs;
  }
  
  double? get Height {
    return _Height;
  }
  
  double? get Weight {
    return _Weight;
  }
  
  double? get Bmi {
    return _Bmi;
  }
  
  String? get TrunkFat {
    return _TrunkFat;
  }
  
  String? get HbA1c {
    return _HbA1c;
  }
  
  String? get HandsFat {
    return _HandsFat;
  }
  
  String? get TotalSkeletalMuscle {
    return _TotalSkeletalMuscle;
  }
  
  String? get TrunkSkeletalMuscle {
    return _TrunkSkeletalMuscle;
  }
  
  String? get LegsSkeletalMuscle {
    return _LegsSkeletalMuscle;
  }
  
  String? get TotalFat {
    return _TotalFat;
  }
  
  String? get LeftHandSP {
    return _LeftHandSP;
  }
  
  String? get RightHandSP {
    return _RightHandSP;
  }
  
  String? get LeftLegSP {
    return _LeftLegSP;
  }
  
  String? get HandsSkeletal {
    return _HandsSkeletal;
  }
  
  String? get LegsFat {
    return _LegsFat;
  }
  
  String? get MidArm {
    return _MidArm;
  }
  
  String? get TricepsSkinFold {
    return _TricepsSkinFold;
  }
  
  String? get CalfSkinCircumference {
    return _CalfSkinCircumference;
  }
  
  String? get LeftHandEndurance {
    return _LeftHandEndurance;
  }
  
  String? get RightLegSP {
    return _RightLegSP;
  }
  
  String? get LeftLegEndurance {
    return _LeftLegEndurance;
  }
  
  String? get RightLegEndurance {
    return _RightLegEndurance;
  }
  
  String? get RightHandEndurance {
    return _RightHandEndurance;
  }
  
  String? get Waist {
    return _Waist;
  }
  
  String? get RbcCount {
    return _RbcCount;
  }
  
  String? get CalfCircumference {
    return _CalfCircumference;
  }
  
  String? get Neutrophil {
    return _Neutrophil;
  }
  
  String? get Eosinophil {
    return _Eosinophil;
  }
  
  String? get Lymphocyte {
    return _Lymphocyte;
  }
  
  String? get Basophil {
    return _Basophil;
  }
  
  String? get Monocyte {
    return _Monocyte;
  }
  
  String? get HctPcv {
    return _HctPcv;
  }
  
  String? get Hip {
    return _Hip;
  }
  
  String? get Albumin {
    return _Albumin;
  }
  
  String? get WbcCount {
    return _WbcCount;
  }
  
  String? get Creatinine {
    return _Creatinine;
  }
  
  String? get Urea {
    return _Urea;
  }
  
  String? get TotalCholesterol {
    return _TotalCholesterol;
  }
  
  String? get LdlCholesterol {
    return _LdlCholesterol;
  }
  
  String? get HdlCholesterol {
    return _HdlCholesterol;
  }
  
  String? get Globulin {
    return _Globulin;
  }
  
  String? get Triglyceride {
    return _Triglyceride;
  }
  
  String? get DischargeDate {
    return _DischargeDate;
  }
  
  String? get VldlCholesterol {
    return _VldlCholesterol;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const UpdatePatients._internal({required this.id, Name, Uhid, Date, BloodPressure, HbPercentage, Sp02, Fbs, Ppbs, Height, Weight, Bmi, TrunkFat, HbA1c, HandsFat, TotalSkeletalMuscle, TrunkSkeletalMuscle, LegsSkeletalMuscle, TotalFat, LeftHandSP, RightHandSP, LeftLegSP, HandsSkeletal, LegsFat, MidArm, TricepsSkinFold, CalfSkinCircumference, LeftHandEndurance, RightLegSP, LeftLegEndurance, RightLegEndurance, RightHandEndurance, Waist, RbcCount, CalfCircumference, Neutrophil, Eosinophil, Lymphocyte, Basophil, Monocyte, HctPcv, Hip, Albumin, WbcCount, Creatinine, Urea, TotalCholesterol, LdlCholesterol, HdlCholesterol, Globulin, Triglyceride, DischargeDate, VldlCholesterol, createdAt, updatedAt}): _Name = Name, _Uhid = Uhid, _Date = Date, _BloodPressure = BloodPressure, _HbPercentage = HbPercentage, _Sp02 = Sp02, _Fbs = Fbs, _Ppbs = Ppbs, _Height = Height, _Weight = Weight, _Bmi = Bmi, _TrunkFat = TrunkFat, _HbA1c = HbA1c, _HandsFat = HandsFat, _TotalSkeletalMuscle = TotalSkeletalMuscle, _TrunkSkeletalMuscle = TrunkSkeletalMuscle, _LegsSkeletalMuscle = LegsSkeletalMuscle, _TotalFat = TotalFat, _LeftHandSP = LeftHandSP, _RightHandSP = RightHandSP, _LeftLegSP = LeftLegSP, _HandsSkeletal = HandsSkeletal, _LegsFat = LegsFat, _MidArm = MidArm, _TricepsSkinFold = TricepsSkinFold, _CalfSkinCircumference = CalfSkinCircumference, _LeftHandEndurance = LeftHandEndurance, _RightLegSP = RightLegSP, _LeftLegEndurance = LeftLegEndurance, _RightLegEndurance = RightLegEndurance, _RightHandEndurance = RightHandEndurance, _Waist = Waist, _RbcCount = RbcCount, _CalfCircumference = CalfCircumference, _Neutrophil = Neutrophil, _Eosinophil = Eosinophil, _Lymphocyte = Lymphocyte, _Basophil = Basophil, _Monocyte = Monocyte, _HctPcv = HctPcv, _Hip = Hip, _Albumin = Albumin, _WbcCount = WbcCount, _Creatinine = Creatinine, _Urea = Urea, _TotalCholesterol = TotalCholesterol, _LdlCholesterol = LdlCholesterol, _HdlCholesterol = HdlCholesterol, _Globulin = Globulin, _Triglyceride = Triglyceride, _DischargeDate = DischargeDate, _VldlCholesterol = VldlCholesterol, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory UpdatePatients({String? id, String? Name, int? Uhid, String? Date, String? BloodPressure, String? HbPercentage, String? Sp02, String? Fbs, String? Ppbs, double? Height, double? Weight, double? Bmi, String? TrunkFat, String? HbA1c, String? HandsFat, String? TotalSkeletalMuscle, String? TrunkSkeletalMuscle, String? LegsSkeletalMuscle, String? TotalFat, String? LeftHandSP, String? RightHandSP, String? LeftLegSP, String? HandsSkeletal, String? LegsFat, String? MidArm, String? TricepsSkinFold, String? CalfSkinCircumference, String? LeftHandEndurance, String? RightLegSP, String? LeftLegEndurance, String? RightLegEndurance, String? RightHandEndurance, String? Waist, String? RbcCount, String? CalfCircumference, String? Neutrophil, String? Eosinophil, String? Lymphocyte, String? Basophil, String? Monocyte, String? HctPcv, String? Hip, String? Albumin, String? WbcCount, String? Creatinine, String? Urea, String? TotalCholesterol, String? LdlCholesterol, String? HdlCholesterol, String? Globulin, String? Triglyceride, String? DischargeDate, String? VldlCholesterol}) {
    return UpdatePatients._internal(
      id: id == null ? UUID.getUUID() : id,
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
      Bmi: Bmi,
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
      VldlCholesterol: VldlCholesterol);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePatients &&
      id == other.id &&
      _Name == other._Name &&
      _Uhid == other._Uhid &&
      _Date == other._Date &&
      _BloodPressure == other._BloodPressure &&
      _HbPercentage == other._HbPercentage &&
      _Sp02 == other._Sp02 &&
      _Fbs == other._Fbs &&
      _Ppbs == other._Ppbs &&
      _Height == other._Height &&
      _Weight == other._Weight &&
      _Bmi == other._Bmi &&
      _TrunkFat == other._TrunkFat &&
      _HbA1c == other._HbA1c &&
      _HandsFat == other._HandsFat &&
      _TotalSkeletalMuscle == other._TotalSkeletalMuscle &&
      _TrunkSkeletalMuscle == other._TrunkSkeletalMuscle &&
      _LegsSkeletalMuscle == other._LegsSkeletalMuscle &&
      _TotalFat == other._TotalFat &&
      _LeftHandSP == other._LeftHandSP &&
      _RightHandSP == other._RightHandSP &&
      _LeftLegSP == other._LeftLegSP &&
      _HandsSkeletal == other._HandsSkeletal &&
      _LegsFat == other._LegsFat &&
      _MidArm == other._MidArm &&
      _TricepsSkinFold == other._TricepsSkinFold &&
      _CalfSkinCircumference == other._CalfSkinCircumference &&
      _LeftHandEndurance == other._LeftHandEndurance &&
      _RightLegSP == other._RightLegSP &&
      _LeftLegEndurance == other._LeftLegEndurance &&
      _RightLegEndurance == other._RightLegEndurance &&
      _RightHandEndurance == other._RightHandEndurance &&
      _Waist == other._Waist &&
      _RbcCount == other._RbcCount &&
      _CalfCircumference == other._CalfCircumference &&
      _Neutrophil == other._Neutrophil &&
      _Eosinophil == other._Eosinophil &&
      _Lymphocyte == other._Lymphocyte &&
      _Basophil == other._Basophil &&
      _Monocyte == other._Monocyte &&
      _HctPcv == other._HctPcv &&
      _Hip == other._Hip &&
      _Albumin == other._Albumin &&
      _WbcCount == other._WbcCount &&
      _Creatinine == other._Creatinine &&
      _Urea == other._Urea &&
      _TotalCholesterol == other._TotalCholesterol &&
      _LdlCholesterol == other._LdlCholesterol &&
      _HdlCholesterol == other._HdlCholesterol &&
      _Globulin == other._Globulin &&
      _Triglyceride == other._Triglyceride &&
      _DischargeDate == other._DischargeDate &&
      _VldlCholesterol == other._VldlCholesterol;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UpdatePatients {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Uhid=" + (_Uhid != null ? _Uhid!.toString() : "null") + ", ");
    buffer.write("Date=" + "$_Date" + ", ");
    buffer.write("BloodPressure=" + "$_BloodPressure" + ", ");
    buffer.write("HbPercentage=" + "$_HbPercentage" + ", ");
    buffer.write("Sp02=" + "$_Sp02" + ", ");
    buffer.write("Fbs=" + "$_Fbs" + ", ");
    buffer.write("Ppbs=" + "$_Ppbs" + ", ");
    buffer.write("Height=" + (_Height != null ? _Height!.toString() : "null") + ", ");
    buffer.write("Weight=" + (_Weight != null ? _Weight!.toString() : "null") + ", ");
    buffer.write("Bmi=" + (_Bmi != null ? _Bmi!.toString() : "null") + ", ");
    buffer.write("TrunkFat=" + "$_TrunkFat" + ", ");
    buffer.write("HbA1c=" + "$_HbA1c" + ", ");
    buffer.write("HandsFat=" + "$_HandsFat" + ", ");
    buffer.write("TotalSkeletalMuscle=" + "$_TotalSkeletalMuscle" + ", ");
    buffer.write("TrunkSkeletalMuscle=" + "$_TrunkSkeletalMuscle" + ", ");
    buffer.write("LegsSkeletalMuscle=" + "$_LegsSkeletalMuscle" + ", ");
    buffer.write("TotalFat=" + "$_TotalFat" + ", ");
    buffer.write("LeftHandSP=" + "$_LeftHandSP" + ", ");
    buffer.write("RightHandSP=" + "$_RightHandSP" + ", ");
    buffer.write("LeftLegSP=" + "$_LeftLegSP" + ", ");
    buffer.write("HandsSkeletal=" + "$_HandsSkeletal" + ", ");
    buffer.write("LegsFat=" + "$_LegsFat" + ", ");
    buffer.write("MidArm=" + "$_MidArm" + ", ");
    buffer.write("TricepsSkinFold=" + "$_TricepsSkinFold" + ", ");
    buffer.write("CalfSkinCircumference=" + "$_CalfSkinCircumference" + ", ");
    buffer.write("LeftHandEndurance=" + "$_LeftHandEndurance" + ", ");
    buffer.write("RightLegSP=" + "$_RightLegSP" + ", ");
    buffer.write("LeftLegEndurance=" + "$_LeftLegEndurance" + ", ");
    buffer.write("RightLegEndurance=" + "$_RightLegEndurance" + ", ");
    buffer.write("RightHandEndurance=" + "$_RightHandEndurance" + ", ");
    buffer.write("Waist=" + "$_Waist" + ", ");
    buffer.write("RbcCount=" + "$_RbcCount" + ", ");
    buffer.write("CalfCircumference=" + "$_CalfCircumference" + ", ");
    buffer.write("Neutrophil=" + "$_Neutrophil" + ", ");
    buffer.write("Eosinophil=" + "$_Eosinophil" + ", ");
    buffer.write("Lymphocyte=" + "$_Lymphocyte" + ", ");
    buffer.write("Basophil=" + "$_Basophil" + ", ");
    buffer.write("Monocyte=" + "$_Monocyte" + ", ");
    buffer.write("HctPcv=" + "$_HctPcv" + ", ");
    buffer.write("Hip=" + "$_Hip" + ", ");
    buffer.write("Albumin=" + "$_Albumin" + ", ");
    buffer.write("WbcCount=" + "$_WbcCount" + ", ");
    buffer.write("Creatinine=" + "$_Creatinine" + ", ");
    buffer.write("Urea=" + "$_Urea" + ", ");
    buffer.write("TotalCholesterol=" + "$_TotalCholesterol" + ", ");
    buffer.write("LdlCholesterol=" + "$_LdlCholesterol" + ", ");
    buffer.write("HdlCholesterol=" + "$_HdlCholesterol" + ", ");
    buffer.write("Globulin=" + "$_Globulin" + ", ");
    buffer.write("Triglyceride=" + "$_Triglyceride" + ", ");
    buffer.write("DischargeDate=" + "$_DischargeDate" + ", ");
    buffer.write("VldlCholesterol=" + "$_VldlCholesterol" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UpdatePatients copyWith({String? Name, int? Uhid, String? Date, String? BloodPressure, String? HbPercentage, String? Sp02, String? Fbs, String? Ppbs, double? Height, double? Weight, double? Bmi, String? TrunkFat, String? HbA1c, String? HandsFat, String? TotalSkeletalMuscle, String? TrunkSkeletalMuscle, String? LegsSkeletalMuscle, String? TotalFat, String? LeftHandSP, String? RightHandSP, String? LeftLegSP, String? HandsSkeletal, String? LegsFat, String? MidArm, String? TricepsSkinFold, String? CalfSkinCircumference, String? LeftHandEndurance, String? RightLegSP, String? LeftLegEndurance, String? RightLegEndurance, String? RightHandEndurance, String? Waist, String? RbcCount, String? CalfCircumference, String? Neutrophil, String? Eosinophil, String? Lymphocyte, String? Basophil, String? Monocyte, String? HctPcv, String? Hip, String? Albumin, String? WbcCount, String? Creatinine, String? Urea, String? TotalCholesterol, String? LdlCholesterol, String? HdlCholesterol, String? Globulin, String? Triglyceride, String? DischargeDate, String? VldlCholesterol}) {
    return UpdatePatients._internal(
      id: id,
      Name: Name ?? this.Name,
      Uhid: Uhid ?? this.Uhid,
      Date: Date ?? this.Date,
      BloodPressure: BloodPressure ?? this.BloodPressure,
      HbPercentage: HbPercentage ?? this.HbPercentage,
      Sp02: Sp02 ?? this.Sp02,
      Fbs: Fbs ?? this.Fbs,
      Ppbs: Ppbs ?? this.Ppbs,
      Height: Height ?? this.Height,
      Weight: Weight ?? this.Weight,
      Bmi: Bmi ?? this.Bmi,
      TrunkFat: TrunkFat ?? this.TrunkFat,
      HbA1c: HbA1c ?? this.HbA1c,
      HandsFat: HandsFat ?? this.HandsFat,
      TotalSkeletalMuscle: TotalSkeletalMuscle ?? this.TotalSkeletalMuscle,
      TrunkSkeletalMuscle: TrunkSkeletalMuscle ?? this.TrunkSkeletalMuscle,
      LegsSkeletalMuscle: LegsSkeletalMuscle ?? this.LegsSkeletalMuscle,
      TotalFat: TotalFat ?? this.TotalFat,
      LeftHandSP: LeftHandSP ?? this.LeftHandSP,
      RightHandSP: RightHandSP ?? this.RightHandSP,
      LeftLegSP: LeftLegSP ?? this.LeftLegSP,
      HandsSkeletal: HandsSkeletal ?? this.HandsSkeletal,
      LegsFat: LegsFat ?? this.LegsFat,
      MidArm: MidArm ?? this.MidArm,
      TricepsSkinFold: TricepsSkinFold ?? this.TricepsSkinFold,
      CalfSkinCircumference: CalfSkinCircumference ?? this.CalfSkinCircumference,
      LeftHandEndurance: LeftHandEndurance ?? this.LeftHandEndurance,
      RightLegSP: RightLegSP ?? this.RightLegSP,
      LeftLegEndurance: LeftLegEndurance ?? this.LeftLegEndurance,
      RightLegEndurance: RightLegEndurance ?? this.RightLegEndurance,
      RightHandEndurance: RightHandEndurance ?? this.RightHandEndurance,
      Waist: Waist ?? this.Waist,
      RbcCount: RbcCount ?? this.RbcCount,
      CalfCircumference: CalfCircumference ?? this.CalfCircumference,
      Neutrophil: Neutrophil ?? this.Neutrophil,
      Eosinophil: Eosinophil ?? this.Eosinophil,
      Lymphocyte: Lymphocyte ?? this.Lymphocyte,
      Basophil: Basophil ?? this.Basophil,
      Monocyte: Monocyte ?? this.Monocyte,
      HctPcv: HctPcv ?? this.HctPcv,
      Hip: Hip ?? this.Hip,
      Albumin: Albumin ?? this.Albumin,
      WbcCount: WbcCount ?? this.WbcCount,
      Creatinine: Creatinine ?? this.Creatinine,
      Urea: Urea ?? this.Urea,
      TotalCholesterol: TotalCholesterol ?? this.TotalCholesterol,
      LdlCholesterol: LdlCholesterol ?? this.LdlCholesterol,
      HdlCholesterol: HdlCholesterol ?? this.HdlCholesterol,
      Globulin: Globulin ?? this.Globulin,
      Triglyceride: Triglyceride ?? this.Triglyceride,
      DischargeDate: DischargeDate ?? this.DischargeDate,
      VldlCholesterol: VldlCholesterol ?? this.VldlCholesterol);
  }
  
  UpdatePatients.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Uhid = (json['Uhid'] as num?)?.toInt(),
      _Date = json['Date'],
      _BloodPressure = json['BloodPressure'],
      _HbPercentage = json['HbPercentage'],
      _Sp02 = json['Sp02'],
      _Fbs = json['Fbs'],
      _Ppbs = json['Ppbs'],
      _Height = (json['Height'] as num?)?.toDouble(),
      _Weight = (json['Weight'] as num?)?.toDouble(),
      _Bmi = (json['Bmi'] as num?)?.toDouble(),
      _TrunkFat = json['TrunkFat'],
      _HbA1c = json['HbA1c'],
      _HandsFat = json['HandsFat'],
      _TotalSkeletalMuscle = json['TotalSkeletalMuscle'],
      _TrunkSkeletalMuscle = json['TrunkSkeletalMuscle'],
      _LegsSkeletalMuscle = json['LegsSkeletalMuscle'],
      _TotalFat = json['TotalFat'],
      _LeftHandSP = json['LeftHandSP'],
      _RightHandSP = json['RightHandSP'],
      _LeftLegSP = json['LeftLegSP'],
      _HandsSkeletal = json['HandsSkeletal'],
      _LegsFat = json['LegsFat'],
      _MidArm = json['MidArm'],
      _TricepsSkinFold = json['TricepsSkinFold'],
      _CalfSkinCircumference = json['CalfSkinCircumference'],
      _LeftHandEndurance = json['LeftHandEndurance'],
      _RightLegSP = json['RightLegSP'],
      _LeftLegEndurance = json['LeftLegEndurance'],
      _RightLegEndurance = json['RightLegEndurance'],
      _RightHandEndurance = json['RightHandEndurance'],
      _Waist = json['Waist'],
      _RbcCount = json['RbcCount'],
      _CalfCircumference = json['CalfCircumference'],
      _Neutrophil = json['Neutrophil'],
      _Eosinophil = json['Eosinophil'],
      _Lymphocyte = json['Lymphocyte'],
      _Basophil = json['Basophil'],
      _Monocyte = json['Monocyte'],
      _HctPcv = json['HctPcv'],
      _Hip = json['Hip'],
      _Albumin = json['Albumin'],
      _WbcCount = json['WbcCount'],
      _Creatinine = json['Creatinine'],
      _Urea = json['Urea'],
      _TotalCholesterol = json['TotalCholesterol'],
      _LdlCholesterol = json['LdlCholesterol'],
      _HdlCholesterol = json['HdlCholesterol'],
      _Globulin = json['Globulin'],
      _Triglyceride = json['Triglyceride'],
      _DischargeDate = json['DischargeDate'],
      _VldlCholesterol = json['VldlCholesterol'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Uhid': _Uhid, 'Date': _Date, 'BloodPressure': _BloodPressure, 'HbPercentage': _HbPercentage, 'Sp02': _Sp02, 'Fbs': _Fbs, 'Ppbs': _Ppbs, 'Height': _Height, 'Weight': _Weight, 'Bmi': _Bmi, 'TrunkFat': _TrunkFat, 'HbA1c': _HbA1c, 'HandsFat': _HandsFat, 'TotalSkeletalMuscle': _TotalSkeletalMuscle, 'TrunkSkeletalMuscle': _TrunkSkeletalMuscle, 'LegsSkeletalMuscle': _LegsSkeletalMuscle, 'TotalFat': _TotalFat, 'LeftHandSP': _LeftHandSP, 'RightHandSP': _RightHandSP, 'LeftLegSP': _LeftLegSP, 'HandsSkeletal': _HandsSkeletal, 'LegsFat': _LegsFat, 'MidArm': _MidArm, 'TricepsSkinFold': _TricepsSkinFold, 'CalfSkinCircumference': _CalfSkinCircumference, 'LeftHandEndurance': _LeftHandEndurance, 'RightLegSP': _RightLegSP, 'LeftLegEndurance': _LeftLegEndurance, 'RightLegEndurance': _RightLegEndurance, 'RightHandEndurance': _RightHandEndurance, 'Waist': _Waist, 'RbcCount': _RbcCount, 'CalfCircumference': _CalfCircumference, 'Neutrophil': _Neutrophil, 'Eosinophil': _Eosinophil, 'Lymphocyte': _Lymphocyte, 'Basophil': _Basophil, 'Monocyte': _Monocyte, 'HctPcv': _HctPcv, 'Hip': _Hip, 'Albumin': _Albumin, 'WbcCount': _WbcCount, 'Creatinine': _Creatinine, 'Urea': _Urea, 'TotalCholesterol': _TotalCholesterol, 'LdlCholesterol': _LdlCholesterol, 'HdlCholesterol': _HdlCholesterol, 'Globulin': _Globulin, 'Triglyceride': _Triglyceride, 'DischargeDate': _DischargeDate, 'VldlCholesterol': _VldlCholesterol, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Name': _Name, 'Uhid': _Uhid, 'Date': _Date, 'BloodPressure': _BloodPressure, 'HbPercentage': _HbPercentage, 'Sp02': _Sp02, 'Fbs': _Fbs, 'Ppbs': _Ppbs, 'Height': _Height, 'Weight': _Weight, 'Bmi': _Bmi, 'TrunkFat': _TrunkFat, 'HbA1c': _HbA1c, 'HandsFat': _HandsFat, 'TotalSkeletalMuscle': _TotalSkeletalMuscle, 'TrunkSkeletalMuscle': _TrunkSkeletalMuscle, 'LegsSkeletalMuscle': _LegsSkeletalMuscle, 'TotalFat': _TotalFat, 'LeftHandSP': _LeftHandSP, 'RightHandSP': _RightHandSP, 'LeftLegSP': _LeftLegSP, 'HandsSkeletal': _HandsSkeletal, 'LegsFat': _LegsFat, 'MidArm': _MidArm, 'TricepsSkinFold': _TricepsSkinFold, 'CalfSkinCircumference': _CalfSkinCircumference, 'LeftHandEndurance': _LeftHandEndurance, 'RightLegSP': _RightLegSP, 'LeftLegEndurance': _LeftLegEndurance, 'RightLegEndurance': _RightLegEndurance, 'RightHandEndurance': _RightHandEndurance, 'Waist': _Waist, 'RbcCount': _RbcCount, 'CalfCircumference': _CalfCircumference, 'Neutrophil': _Neutrophil, 'Eosinophil': _Eosinophil, 'Lymphocyte': _Lymphocyte, 'Basophil': _Basophil, 'Monocyte': _Monocyte, 'HctPcv': _HctPcv, 'Hip': _Hip, 'Albumin': _Albumin, 'WbcCount': _WbcCount, 'Creatinine': _Creatinine, 'Urea': _Urea, 'TotalCholesterol': _TotalCholesterol, 'LdlCholesterol': _LdlCholesterol, 'HdlCholesterol': _HdlCholesterol, 'Globulin': _Globulin, 'Triglyceride': _Triglyceride, 'DischargeDate': _DischargeDate, 'VldlCholesterol': _VldlCholesterol, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<UpdatePatientsModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UpdatePatientsModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField UHID = QueryField(fieldName: "Uhid");
  static final QueryField DATE = QueryField(fieldName: "Date");
  static final QueryField BLOODPRESSURE = QueryField(fieldName: "BloodPressure");
  static final QueryField HBPERCENTAGE = QueryField(fieldName: "HbPercentage");
  static final QueryField SP02 = QueryField(fieldName: "Sp02");
  static final QueryField FBS = QueryField(fieldName: "Fbs");
  static final QueryField PPBS = QueryField(fieldName: "Ppbs");
  static final QueryField HEIGHT = QueryField(fieldName: "Height");
  static final QueryField WEIGHT = QueryField(fieldName: "Weight");
  static final QueryField BMI = QueryField(fieldName: "Bmi");
  static final QueryField TRUNKFAT = QueryField(fieldName: "TrunkFat");
  static final QueryField HBA1C = QueryField(fieldName: "HbA1c");
  static final QueryField HANDSFAT = QueryField(fieldName: "HandsFat");
  static final QueryField TOTALSKELETALMUSCLE = QueryField(fieldName: "TotalSkeletalMuscle");
  static final QueryField TRUNKSKELETALMUSCLE = QueryField(fieldName: "TrunkSkeletalMuscle");
  static final QueryField LEGSSKELETALMUSCLE = QueryField(fieldName: "LegsSkeletalMuscle");
  static final QueryField TOTALFAT = QueryField(fieldName: "TotalFat");
  static final QueryField LEFTHANDSP = QueryField(fieldName: "LeftHandSP");
  static final QueryField RIGHTHANDSP = QueryField(fieldName: "RightHandSP");
  static final QueryField LEFTLEGSP = QueryField(fieldName: "LeftLegSP");
  static final QueryField HANDSSKELETAL = QueryField(fieldName: "HandsSkeletal");
  static final QueryField LEGSFAT = QueryField(fieldName: "LegsFat");
  static final QueryField MIDARM = QueryField(fieldName: "MidArm");
  static final QueryField TRICEPSSKINFOLD = QueryField(fieldName: "TricepsSkinFold");
  static final QueryField CALFSKINCIRCUMFERENCE = QueryField(fieldName: "CalfSkinCircumference");
  static final QueryField LEFTHANDENDURANCE = QueryField(fieldName: "LeftHandEndurance");
  static final QueryField RIGHTLEGSP = QueryField(fieldName: "RightLegSP");
  static final QueryField LEFTLEGENDURANCE = QueryField(fieldName: "LeftLegEndurance");
  static final QueryField RIGHTLEGENDURANCE = QueryField(fieldName: "RightLegEndurance");
  static final QueryField RIGHTHANDENDURANCE = QueryField(fieldName: "RightHandEndurance");
  static final QueryField WAIST = QueryField(fieldName: "Waist");
  static final QueryField RBCCOUNT = QueryField(fieldName: "RbcCount");
  static final QueryField CALFCIRCUMFERENCE = QueryField(fieldName: "CalfCircumference");
  static final QueryField NEUTROPHIL = QueryField(fieldName: "Neutrophil");
  static final QueryField EOSINOPHIL = QueryField(fieldName: "Eosinophil");
  static final QueryField LYMPHOCYTE = QueryField(fieldName: "Lymphocyte");
  static final QueryField BASOPHIL = QueryField(fieldName: "Basophil");
  static final QueryField MONOCYTE = QueryField(fieldName: "Monocyte");
  static final QueryField HCTPCV = QueryField(fieldName: "HctPcv");
  static final QueryField HIP = QueryField(fieldName: "Hip");
  static final QueryField ALBUMIN = QueryField(fieldName: "Albumin");
  static final QueryField WBCCOUNT = QueryField(fieldName: "WbcCount");
  static final QueryField CREATININE = QueryField(fieldName: "Creatinine");
  static final QueryField UREA = QueryField(fieldName: "Urea");
  static final QueryField TOTALCHOLESTEROL = QueryField(fieldName: "TotalCholesterol");
  static final QueryField LDLCHOLESTEROL = QueryField(fieldName: "LdlCholesterol");
  static final QueryField HDLCHOLESTEROL = QueryField(fieldName: "HdlCholesterol");
  static final QueryField GLOBULIN = QueryField(fieldName: "Globulin");
  static final QueryField TRIGLYCERIDE = QueryField(fieldName: "Triglyceride");
  static final QueryField DISCHARGEDATE = QueryField(fieldName: "DischargeDate");
  static final QueryField VLDLCHOLESTEROL = QueryField(fieldName: "VldlCholesterol");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UpdatePatients";
    modelSchemaDefinition.pluralName = "UpdatePatients";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.UHID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.BLOODPRESSURE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HBPERCENTAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.SP02,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.FBS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.PPBS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HEIGHT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.WEIGHT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.BMI,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TRUNKFAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HBA1C,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HANDSFAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TOTALSKELETALMUSCLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TRUNKSKELETALMUSCLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEGSSKELETALMUSCLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TOTALFAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEFTHANDSP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.RIGHTHANDSP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEFTLEGSP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HANDSSKELETAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEGSFAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.MIDARM,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TRICEPSSKINFOLD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.CALFSKINCIRCUMFERENCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEFTHANDENDURANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.RIGHTLEGSP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LEFTLEGENDURANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.RIGHTLEGENDURANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.RIGHTHANDENDURANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.WAIST,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.RBCCOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.CALFCIRCUMFERENCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.NEUTROPHIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.EOSINOPHIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LYMPHOCYTE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.BASOPHIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.MONOCYTE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HCTPCV,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HIP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.ALBUMIN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.WBCCOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.CREATININE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.UREA,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TOTALCHOLESTEROL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.LDLCHOLESTEROL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.HDLCHOLESTEROL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.GLOBULIN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.TRIGLYCERIDE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.DISCHARGEDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UpdatePatients.VLDLCHOLESTEROL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UpdatePatientsModelType extends ModelType<UpdatePatients> {
  const _UpdatePatientsModelType();
  
  @override
  UpdatePatients fromJson(Map<String, dynamic> jsonData) {
    return UpdatePatients.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'UpdatePatients';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [UpdatePatients] in your schema.
 */
@immutable
class UpdatePatientsModelIdentifier implements ModelIdentifier<UpdatePatients> {
  final String id;

  /** Create an instance of UpdatePatientsModelIdentifier using [id] the primary key. */
  const UpdatePatientsModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'UpdatePatientsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UpdatePatientsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}