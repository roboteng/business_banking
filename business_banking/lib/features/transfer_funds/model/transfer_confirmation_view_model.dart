import 'package:business_banking/features/transfer_funds/enums.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class TransferConfirmationViewModel extends Equatable implements ViewModel {
  final String fromAccount;
  final String toAccount;
  final double amount;
  final DateTime date;
  final String id;

  TransferConfirmationViewModel(
      {this.fromAccount, this.toAccount, this.amount, this.date, this.id})
      : assert(fromAccount != null &&
            toAccount != null &&
            amount != null &&
            date is DateTime &&
            id != null);

  @override
  List<Object> get props => [fromAccount, toAccount, amount, date, id];

  @override
  String toString() {
    return "$fromAccount $toAccount $amount $date $id ";
  }
}
