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


/** This is an auto generated class representing the CreatePatients type in your schema. */
@immutable
class CreatePatients extends Model {
  static const classType = const _CreatePatientsModelType();
  final String id;
  final String? _Name;
  final String? _Age;
  final String? _MaritalStatus;
  final int? _Children;
  final String? _Gender;
  final String? _Hospital;
  final String? _Doctor;
  final int? _Uhid;
  final String? _PhoneNumber;
  final String? _CancerType;
  final String? _Stage;
  final String? _TreatmentPlan;
  final String? _Comorbidities;
  final String? _History;
  final String? _SocialHistory;
  final String? _FamilyHistory;
  final String? _Address;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CreatePatientsModelIdentifier get modelIdentifier {
      return CreatePatientsModelIdentifier(
        id: id
      );
  }
  
  String? get Name {
    return _Name;
  }
  
  String? get Age {
    return _Age;
  }
  
  String? get MaritalStatus {
    return _MaritalStatus;
  }
  
  int? get Children {
    return _Children;
  }
  
  String? get Gender {
    return _Gender;
  }
  
  String? get Hospital {
    return _Hospital;
  }
  
  String? get Doctor {
    return _Doctor;
  }
  
  int? get Uhid {
    return _Uhid;
  }
  
  String? get PhoneNumber {
    return _PhoneNumber;
  }
  
  String? get CancerType {
    return _CancerType;
  }
  
  String? get Stage {
    return _Stage;
  }
  
  String? get TreatmentPlan {
    return _TreatmentPlan;
  }
  
  String? get Comorbidities {
    return _Comorbidities;
  }
  
  String? get History {
    return _History;
  }
  
  String? get SocialHistory {
    return _SocialHistory;
  }
  
  String? get FamilyHistory {
    return _FamilyHistory;
  }
  
  String? get Address {
    return _Address;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CreatePatients._internal({required this.id, Name, Age, MaritalStatus, Children, Gender, Hospital, Doctor, Uhid, PhoneNumber, CancerType, Stage, TreatmentPlan, Comorbidities, History, SocialHistory, FamilyHistory, Address, createdAt, updatedAt}): _Name = Name, _Age = Age, _MaritalStatus = MaritalStatus, _Children = Children, _Gender = Gender, _Hospital = Hospital, _Doctor = Doctor, _Uhid = Uhid, _PhoneNumber = PhoneNumber, _CancerType = CancerType, _Stage = Stage, _TreatmentPlan = TreatmentPlan, _Comorbidities = Comorbidities, _History = History, _SocialHistory = SocialHistory, _FamilyHistory = FamilyHistory, _Address = Address, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CreatePatients({String? id, String? Name, String? Age, String? MaritalStatus, int? Children, String? Gender, String? Hospital, String? Doctor, int? Uhid, String? PhoneNumber, String? CancerType, String? Stage, String? TreatmentPlan, String? Comorbidities, String? History, String? SocialHistory, String? FamilyHistory, String? Address}) {
    return CreatePatients._internal(
      id: id == null ? UUID.getUUID() : id,
      Name: Name,
      Age: Age,
      MaritalStatus: MaritalStatus,
      Children: Children,
      Gender: Gender,
      Hospital: Hospital,
      Doctor: Doctor,
      Uhid: Uhid,
      PhoneNumber: PhoneNumber,
      CancerType: CancerType,
      Stage: Stage,
      TreatmentPlan: TreatmentPlan,
      Comorbidities: Comorbidities,
      History: History,
      SocialHistory: SocialHistory,
      FamilyHistory: FamilyHistory,
      Address: Address);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePatients &&
      id == other.id &&
      _Name == other._Name &&
      _Age == other._Age &&
      _MaritalStatus == other._MaritalStatus &&
      _Children == other._Children &&
      _Gender == other._Gender &&
      _Hospital == other._Hospital &&
      _Doctor == other._Doctor &&
      _Uhid == other._Uhid &&
      _PhoneNumber == other._PhoneNumber &&
      _CancerType == other._CancerType &&
      _Stage == other._Stage &&
      _TreatmentPlan == other._TreatmentPlan &&
      _Comorbidities == other._Comorbidities &&
      _History == other._History &&
      _SocialHistory == other._SocialHistory &&
      _FamilyHistory == other._FamilyHistory &&
      _Address == other._Address;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CreatePatients {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Age=" + "$_Age" + ", ");
    buffer.write("MaritalStatus=" + "$_MaritalStatus" + ", ");
    buffer.write("Children=" + (_Children != null ? _Children!.toString() : "null") + ", ");
    buffer.write("Gender=" + "$_Gender" + ", ");
    buffer.write("Hospital=" + "$_Hospital" + ", ");
    buffer.write("Doctor=" + "$_Doctor" + ", ");
    buffer.write("Uhid=" + (_Uhid != null ? _Uhid!.toString() : "null") + ", ");
    buffer.write("PhoneNumber=" + "$_PhoneNumber" + ", ");
    buffer.write("CancerType=" + "$_CancerType" + ", ");
    buffer.write("Stage=" + "$_Stage" + ", ");
    buffer.write("TreatmentPlan=" + "$_TreatmentPlan" + ", ");
    buffer.write("Comorbidities=" + "$_Comorbidities" + ", ");
    buffer.write("History=" + "$_History" + ", ");
    buffer.write("SocialHistory=" + "$_SocialHistory" + ", ");
    buffer.write("FamilyHistory=" + "$_FamilyHistory" + ", ");
    buffer.write("Address=" + "$_Address" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CreatePatients copyWith({String? Name, String? Age, String? MaritalStatus, int? Children, String? Gender, String? Hospital, String? Doctor, int? Uhid, String? PhoneNumber, String? CancerType, String? Stage, String? TreatmentPlan, String? Comorbidities, String? History, String? SocialHistory, String? FamilyHistory, String? Address}) {
    return CreatePatients._internal(
      id: id,
      Name: Name ?? this.Name,
      Age: Age ?? this.Age,
      MaritalStatus: MaritalStatus ?? this.MaritalStatus,
      Children: Children ?? this.Children,
      Gender: Gender ?? this.Gender,
      Hospital: Hospital ?? this.Hospital,
      Doctor: Doctor ?? this.Doctor,
      Uhid: Uhid ?? this.Uhid,
      PhoneNumber: PhoneNumber ?? this.PhoneNumber,
      CancerType: CancerType ?? this.CancerType,
      Stage: Stage ?? this.Stage,
      TreatmentPlan: TreatmentPlan ?? this.TreatmentPlan,
      Comorbidities: Comorbidities ?? this.Comorbidities,
      History: History ?? this.History,
      SocialHistory: SocialHistory ?? this.SocialHistory,
      FamilyHistory: FamilyHistory ?? this.FamilyHistory,
      Address: Address ?? this.Address);
  }
  
  CreatePatients.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Age = json['Age'],
      _MaritalStatus = json['MaritalStatus'],
      _Children = (json['Children'] as num?)?.toInt(),
      _Gender = json['Gender'],
      _Hospital = json['Hospital'],
      _Doctor = json['Doctor'],
      _Uhid = (json['Uhid'] as num?)?.toInt(),
      _PhoneNumber = json['PhoneNumber'],
      _CancerType = json['CancerType'],
      _Stage = json['Stage'],
      _TreatmentPlan = json['TreatmentPlan'],
      _Comorbidities = json['Comorbidities'],
      _History = json['History'],
      _SocialHistory = json['SocialHistory'],
      _FamilyHistory = json['FamilyHistory'],
      _Address = json['Address'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Age': _Age, 'MaritalStatus': _MaritalStatus, 'Children': _Children, 'Gender': _Gender, 'Hospital': _Hospital, 'Doctor': _Doctor, 'Uhid': _Uhid, 'PhoneNumber': _PhoneNumber, 'CancerType': _CancerType, 'Stage': _Stage, 'TreatmentPlan': _TreatmentPlan, 'Comorbidities': _Comorbidities, 'History': _History, 'SocialHistory': _SocialHistory, 'FamilyHistory': _FamilyHistory, 'Address': _Address, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Name': _Name, 'Age': _Age, 'MaritalStatus': _MaritalStatus, 'Children': _Children, 'Gender': _Gender, 'Hospital': _Hospital, 'Doctor': _Doctor, 'Uhid': _Uhid, 'PhoneNumber': _PhoneNumber, 'CancerType': _CancerType, 'Stage': _Stage, 'TreatmentPlan': _TreatmentPlan, 'Comorbidities': _Comorbidities, 'History': _History, 'SocialHistory': _SocialHistory, 'FamilyHistory': _FamilyHistory, 'Address': _Address, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<CreatePatientsModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<CreatePatientsModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField AGE = QueryField(fieldName: "Age");
  static final QueryField MARITALSTATUS = QueryField(fieldName: "MaritalStatus");
  static final QueryField CHILDREN = QueryField(fieldName: "Children");
  static final QueryField GENDER = QueryField(fieldName: "Gender");
  static final QueryField HOSPITAL = QueryField(fieldName: "Hospital");
  static final QueryField DOCTOR = QueryField(fieldName: "Doctor");
  static final QueryField UHID = QueryField(fieldName: "Uhid");
  static final QueryField PHONENUMBER = QueryField(fieldName: "PhoneNumber");
  static final QueryField CANCERTYPE = QueryField(fieldName: "CancerType");
  static final QueryField STAGE = QueryField(fieldName: "Stage");
  static final QueryField TREATMENTPLAN = QueryField(fieldName: "TreatmentPlan");
  static final QueryField COMORBIDITIES = QueryField(fieldName: "Comorbidities");
  static final QueryField HISTORY = QueryField(fieldName: "History");
  static final QueryField SOCIALHISTORY = QueryField(fieldName: "SocialHistory");
  static final QueryField FAMILYHISTORY = QueryField(fieldName: "FamilyHistory");
  static final QueryField ADDRESS = QueryField(fieldName: "Address");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CreatePatients";
    modelSchemaDefinition.pluralName = "CreatePatients";
    
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
      key: CreatePatients.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.AGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.MARITALSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.CHILDREN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.GENDER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.HOSPITAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.DOCTOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.UHID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.PHONENUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.CANCERTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.STAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.TREATMENTPLAN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.COMORBIDITIES,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.HISTORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.SOCIALHISTORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.FAMILYHISTORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CreatePatients.ADDRESS,
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

class _CreatePatientsModelType extends ModelType<CreatePatients> {
  const _CreatePatientsModelType();
  
  @override
  CreatePatients fromJson(Map<String, dynamic> jsonData) {
    return CreatePatients.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CreatePatients';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CreatePatients] in your schema.
 */
@immutable
class CreatePatientsModelIdentifier implements ModelIdentifier<CreatePatients> {
  final String id;

  /** Create an instance of CreatePatientsModelIdentifier using [id] the primary key. */
  const CreatePatientsModelIdentifier({
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
  String toString() => 'CreatePatientsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CreatePatientsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}