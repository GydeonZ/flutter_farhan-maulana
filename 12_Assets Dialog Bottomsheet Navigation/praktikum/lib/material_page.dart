// ignore_for_file: prefer_const_constructors
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:praktikum/Screen/picture_screen.dart';
import 'package:praktikum/contact.dart';
import 'package:praktikum/model/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  int selectedIndex = -1;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact'),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.mobile_friendly,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Create New Contacts',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text('Name'),
                  hintText: 'Insert Your Name',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: const InputDecoration(
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text('Nomor'),
                  hintText: '+62..',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Color(0xff6750A4),
              //     ),
              //     child: Text('Submit'),
              //     onPressed: () {
              //       String name = nameController.text.trim();
              //       String phoneNumber = phoneNumberController.text.trim();
              //       if (selectedIndex != -1) {
              //         if (name.isNotEmpty && phoneNumber.isNotEmpty) {
              //           setState(() {
              //             nameController.clear();
              //             phoneNumberController.clear();
              //             contacts[selectedIndex].name = name;
              //             contacts[selectedIndex].phoneNumber = phoneNumber;
              //             selectedIndex = -1;
              //           });
              //           // ignore: avoid_print
              //           print(
              //               "LogDev: Data kontak diperbarui - [{title: $name, subtitle: $phoneNumber}]");
              //         }
              //       } else {
              //         if (name.isNotEmpty && phoneNumber.isNotEmpty) {
              //           setState(() {
              //             nameController.clear();
              //             phoneNumberController.clear();
              //             contacts.add(
              //               Contact(name: name, phoneNumber: phoneNumber),
              //             );
              //           });
              //           // ignore: avoid_print
              //           print(
              //               "LogDev: Data kontak ditambahkan - [{title: $name, subtitle: $phoneNumber}]");
              //         }
              //       }
              //     },
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6750A4),
                    ),
                    child: Text('Submit'),
                    onPressed: () {
                      String name = nameController.text.trim();
                      String phoneNumber = phoneNumberController.text.trim();
                      if (selectedIndex != -1) {
                        if (name.isNotEmpty && phoneNumber.isNotEmpty) {
                          setState(() {
                            nameController.clear();
                            phoneNumberController.clear();
                            contacts[selectedIndex].name = name;
                            contacts[selectedIndex].phoneNumber = phoneNumber;
                            selectedIndex = -1;
                          });
                          // ignore: avoid_print
                          print(
                              "LogDev: Data kontak diperbarui - [{title: $name, subtitle: $phoneNumber}]");
                        }
                      } else {
                        if (name.isNotEmpty && phoneNumber.isNotEmpty) {
                          setState(() {
                            nameController.clear();
                            phoneNumberController.clear();
                            contacts.add(
                              Contact(name: name, phoneNumber: phoneNumber),
                            );
                          });
                          // ignore: avoid_print
                          print(
                              "LogDev: Data kontak ditambahkan - [{title: $name, subtitle: $phoneNumber}]");
                        }
                      }
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6750A4),
                    ),
                    child: Text('Next Page'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PictureScreen(),
                        ),
                      );

                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              buildDatePicker(context),
              SizedBox(
                height: 20,
              ),
              buildColorPicker(context),
              SizedBox(
                height: 20,
              ),
              buildFilePicker(),
              SizedBox(
                height: 20,
              ),
              Text(
                'List Contact',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              contacts.isEmpty
                  ? Text(
                      'No Data',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => getRow(index),
                    )
            ],
          ),
        ),
      ),
    );
  }

  getRow(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xffEADDFF),
        child: Text(
          contacts[index].name[0],
          style: TextStyle(
            color: Color(0xff21005D),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contacts[index].name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(contacts[index].phoneNumber),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              nameController.text = contacts[index].name;
              phoneNumberController.text = contacts[index].phoneNumber;
              setState(() {
                selectedIndex = index;
              });
            },
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              setState(() {
                contacts.removeAt(index);
              });
            },
            child: const Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff6750A4),
              ),
              child: Text('Pick Date'),
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
                print('$_dueDate');
              },
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(height: 10),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_currentColor)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                            print(
                                "Color : MaterialColor(primary value: $_currentColor)");
                          },
                          child: const Text('Save'),
                        )
                      ],
                    );
                  });
            },
            child: const Text('Pick Color'),
          ),
        )
      ],
    );
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('File'),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff6750A4),
            ),
            onPressed: () {
              _pickFile();
            },
            child: const Text('Pick and Open File'),
          ),
        )
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);

    print("LogDev: Memilih file - Nama File: ${file.name}");
  }
}
