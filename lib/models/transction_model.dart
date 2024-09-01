class TransctionModel {
  final String title, date, price;
  final bool isWithdrawal;

  const TransctionModel(
      {required this.title,
      required this.isWithdrawal,
      required this.date,
      required this.price});
}
