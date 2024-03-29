import 'package:cloud_firestore/cloud_firestore.dart';

class ComplaintModel {
  String? userId;
  String? customerName;
  String? customerPhoneNo;
  String? complaintId;
  String? complaintTitle;
  String? status;
  FieldValue? complaintDate;
  String? complaintMessage;
  List<String>? complaintImages;
  String? complaintCategory;
  bool? isResolved;
  bool? isProcessing;
  List<AdminResponses>? adminResponses;
  List<CustomerResponses>? customerResponses;
  String? resolvedDate;
  String? assignedEmployeeName;
  String? assignedEmployeeId;

  ComplaintModel(
      {this.userId,
      this.customerName,
      this.complaintId,
      this.complaintTitle,
      this.customerPhoneNo,
      this.status,
      this.complaintDate,
      this.complaintMessage,
      this.complaintImages,
      this.complaintCategory,
      this.isResolved,
      this.isProcessing,
      this.adminResponses,
      this.customerResponses,
      this.resolvedDate,
      this.assignedEmployeeId,
      this.assignedEmployeeName});

  ComplaintModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    customerName = json['customerName'];
    customerPhoneNo = json['customerPhoneNo'];
    complaintId = json['complaintId'];

    complaintTitle = json['complaintTitle'];
    status = json['status'];
    complaintDate = json['complaintDate'];
    complaintMessage = json['complaintMessage'];
    complaintImages = json['complaintImages'].cast<String>();
    complaintCategory = json['complaintCategory'];
    isResolved = json['isResolved'];
    isProcessing = json['isProcessing'];
    assignedEmployeeId = json['assignedEmployeeId'];
    assignedEmployeeName = json['assignedEmployeeName'];
    if (json['adminResponses'] != null) {
      adminResponses = <AdminResponses>[];
      json['adminResponses'].forEach((v) {
        adminResponses!.add(new AdminResponses.fromJson(v));
      });
    }
    if (json['customerResponses'] != null) {
      customerResponses = <CustomerResponses>[];
      json['customerResponses'].forEach((v) {
        customerResponses!.add(new CustomerResponses.fromJson(v));
      });
    }
    resolvedDate = json['resolvedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['customerName'] = this.customerName;
    data['customerPhoneNo'] = this.customerPhoneNo;
    data['complaintId'] = this.complaintId;
    data['status'] = this.status;
    data['complaintTitle'] = this.complaintTitle;
    data['complaintDate'] = this.complaintDate;
    data['complaintMessage'] = this.complaintMessage;
    data['complaintImages'] = this.complaintImages;
    data['complaintCategory'] = this.complaintCategory;
    data['isResolved'] = this.isResolved;
    data['isProcessing'] = this.isProcessing;
    data['assignedEmployeeId'] = this.assignedEmployeeId;
    data['assignedEmployeeName'] = this.assignedEmployeeName;
    if (this.adminResponses != null) {
      data['adminResponses'] =
          this.adminResponses!.map((v) => v.toJson()).toList();
    }
    if (this.customerResponses != null) {
      data['customerResponses'] =
          this.customerResponses!.map((v) => v.toJson()).toList();
    }
    data['resolvedDate'] = this.resolvedDate;
    return data;
  }
}

class AdminResponses {
  String? date;
  String? message;
  String? responseBy;

  AdminResponses({this.date, this.message, this.responseBy});

  AdminResponses.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    message = json['message'];
    responseBy = json['responseBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['message'] = this.message;
    data['responseBy'] = this.responseBy;
    return data;
  }
}

class CustomerResponses {
  String? date;
  String? message;

  CustomerResponses({this.date, this.message});

  CustomerResponses.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['message'] = this.message;
    return data;
  }
}
