import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:praktikum/model/contact.dart';

class ContactProvider extends ChangeNotifier {
  DateTime _dueDate = DateTime.now();
  Color _currentColor = const Color(0xFFFFA500);
  final List<GetContact> _contacts = [];
  int selectedIndex = -1;
  List<GetContact> get contacts => _contacts;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  String editedName = '';
  String editedPhoneNumber = '';
  String fileName = "Select File";
  String? filePath;
  bool isEditing = false;

  DateTime get dueDate => _dueDate;
  Color get currentColor => _currentColor;

  set dueDate(DateTime value) {
    _dueDate = value;
    notifyListeners();
  }

  set currentColor(Color value) {
    _currentColor = value;
    notifyListeners();
  }

  void add(GetContact contact) {
    _contacts.add(contact);
    clearControllers();
    notifyListeners();
  }

  void editContact(GetContact editedContact, String name, String phoneNumber,
      DateTime dueDate, Color colorToHex, String fileName) {
    final contactIndex =
        _contacts.indexWhere((contact) => contact == editedContact);

    if (contactIndex != -1) {
      _contacts[contactIndex].name = name;
      _contacts[contactIndex].phoneNumber = phoneNumber;
      _contacts[contactIndex].date = dueDate;
      _contacts[contactIndex].color = colorToHex;
      _contacts[contactIndex].fileName = fileName;
      isEditing = false;
      clearControllers();
    }
    notifyListeners();
  }

  void deleteContact(GetContact contact) {
    _contacts.remove(contact);
    notifyListeners();
  }

  void setDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
    );

    if (selectedDate == null) return;

    _dueDate = selectedDate;
    notifyListeners();
  }

  void setCurrentColor(Color color) {
    _currentColor = color;
    notifyListeners();
  }

  void pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;

    fileName = file.name;
    filePath = file.path!;

    notifyListeners();
  }

  void openFile(String filepath) {
    OpenFile.open(filepath);
    notifyListeners();
  }

  void cancelEdit() {
    isEditing = false;
    clearControllers();
    fileName = "Pick Your File";
    filePath = null;
    notifyListeners();
  }

  void clearControllers() {
    editedName = '';
    editedPhoneNumber = '';
    nameController.clear();
    phoneNumberController.clear();
  }

  void startsEditing(GetContact contact) {
    editedName = contact.name;
    editedPhoneNumber = contact.phoneNumber;
    nameController.text = contact.name;
    phoneNumberController.text = contact.phoneNumber;
    selectedIndex = _contacts.indexOf(contact);
    currentColor = contact.color;
    dueDate = contact.date;
    fileName = contact.fileName;
    isEditing = true;
    notifyListeners();
  }

  void submit(BuildContext context) {
    if (isEditing) {
      GetContact editedContact = contacts.firstWhere(
          (contact) =>
              contact.name == editedName &&
              contact.phoneNumber == editedPhoneNumber);
      editContact(
        editedContact,
        nameController.text,
        phoneNumberController.text,
        dueDate,
        currentColor,
        fileName,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Contact Edited'),
        ),
      );
    } else {
      add(
        GetContact(
          name: nameController.text,
          phoneNumber: phoneNumberController.text,
          date: dueDate,
          color: currentColor,
          fileName: fileName,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Contact Added'),
        ),
      );
    }
    notifyListeners();
  }
}
