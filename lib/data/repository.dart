import 'package:sakuku/data/controller/database_controller.dart';
import 'package:sakuku/data/model/transfer.dart';

class Repository {
  final DatabaseController dbController = DatabaseController();

  Future getTransfers() => dbController.getTransfers();

  Future createTransfer(TransferModel transferModel) =>
      dbController.createTransfer(transferModel);
}
