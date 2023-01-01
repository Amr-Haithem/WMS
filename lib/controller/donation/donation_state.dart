part of 'donation_cubit.dart';

abstract class DonationState {}

class DonationInitial extends DonationState {}
class DonationAdded extends DonationState {}
class DonationLoading extends DonationState {}
class DonationError extends DonationState {}
