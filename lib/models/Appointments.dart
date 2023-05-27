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


/** This is an auto generated class representing the Appointments type in your schema. */
@immutable
class Appointments extends Model {
  static const classType = const _AppointmentsModelType();
  final String id;
  final String? _Name;
  final int? _Uhid;
  final String? _Doctor;
  final String? _Description;
  final String? _Date;
  final String? _Time;
  final bool? _isComplete;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AppointmentsModelIdentifier get modelIdentifier {
      return AppointmentsModelIdentifier(
        id: id
      );
  }
  
  String get Name {
    try {
      return _Name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get Uhid {
    return _Uhid;
  }
  
  String? get Doctor {
    return _Doctor;
  }
  
  String? get Description {
    return _Description;
  }
  
  String? get Date {
    return _Date;
  }
  
  String? get Time {
    return _Time;
  }
  
  bool? get isComplete {
    return _isComplete;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Appointments._internal({required this.id, required Name, Uhid, Doctor, Description, Date, Time, isComplete, createdAt, updatedAt}): _Name = Name, _Uhid = Uhid, _Doctor = Doctor, _Description = Description, _Date = Date, _Time = Time, _isComplete = isComplete, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Appointments({String? id, required String Name, int? Uhid, String? Doctor, String? Description, String? Date, String? Time, bool? isComplete}) {
    return Appointments._internal(
      id: id == null ? UUID.getUUID() : id,
      Name: Name,
      Uhid: Uhid,
      Doctor: Doctor,
      Description: Description,
      Date: Date,
      Time: Time,
      isComplete: isComplete);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appointments &&
      id == other.id &&
      _Name == other._Name &&
      _Uhid == other._Uhid &&
      _Doctor == other._Doctor &&
      _Description == other._Description &&
      _Date == other._Date &&
      _Time == other._Time &&
      _isComplete == other._isComplete;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Appointments {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Uhid=" + (_Uhid != null ? _Uhid!.toString() : "null") + ", ");
    buffer.write("Doctor=" + "$_Doctor" + ", ");
    buffer.write("Description=" + "$_Description" + ", ");
    buffer.write("Date=" + "$_Date" + ", ");
    buffer.write("Time=" + "$_Time" + ", ");
    buffer.write("isComplete=" + (_isComplete != null ? _isComplete!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Appointments copyWith({String? Name, int? Uhid, String? Doctor, String? Description, String? Date, String? Time, bool? isComplete}) {
    return Appointments._internal(
      id: id,
      Name: Name ?? this.Name,
      Uhid: Uhid ?? this.Uhid,
      Doctor: Doctor ?? this.Doctor,
      Description: Description ?? this.Description,
      Date: Date ?? this.Date,
      Time: Time ?? this.Time,
      isComplete: isComplete ?? this.isComplete);
  }
  
  Appointments.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Uhid = (json['Uhid'] as num?)?.toInt(),
      _Doctor = json['Doctor'],
      _Description = json['Description'],
      _Date = json['Date'],
      _Time = json['Time'],
      _isComplete = json['isComplete'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Uhid': _Uhid, 'Doctor': _Doctor, 'Description': _Description, 'Date': _Date, 'Time': _Time, 'isComplete': _isComplete, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Name': _Name, 'Uhid': _Uhid, 'Doctor': _Doctor, 'Description': _Description, 'Date': _Date, 'Time': _Time, 'isComplete': _isComplete, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<AppointmentsModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<AppointmentsModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField UHID = QueryField(fieldName: "Uhid");
  static final QueryField DOCTOR = QueryField(fieldName: "Doctor");
  static final QueryField DESCRIPTION = QueryField(fieldName: "Description");
  static final QueryField DATE = QueryField(fieldName: "Date");
  static final QueryField TIME = QueryField(fieldName: "Time");
  static final QueryField ISCOMPLETE = QueryField(fieldName: "isComplete");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Appointments";
    modelSchemaDefinition.pluralName = "Appointments";
    
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
      key: Appointments.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.UHID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.DOCTOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.TIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Appointments.ISCOMPLETE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
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

class _AppointmentsModelType extends ModelType<Appointments> {
  const _AppointmentsModelType();
  
  @override
  Appointments fromJson(Map<String, dynamic> jsonData) {
    return Appointments.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Appointments';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Appointments] in your schema.
 */
@immutable
class AppointmentsModelIdentifier implements ModelIdentifier<Appointments> {
  final String id;

  /** Create an instance of AppointmentsModelIdentifier using [id] the primary key. */
  const AppointmentsModelIdentifier({
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
  String toString() => 'AppointmentsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AppointmentsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}