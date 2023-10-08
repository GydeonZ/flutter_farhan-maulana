import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:praktikum/Screen/picture_screen.dart';
import 'package:praktikum/Screen/drawer.dart';
// import 'package:praktikum/model/contact_model.dart' as contact_model;
import 'package:provider/provider.dart';
import 'package:praktikum/provider/contact_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late ContactProvider contactProvider;

  @override
  void initState() {
    contactProvider = Provider.of<ContactProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactProvider>(
      builder: (context, value, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Contact'),
        ),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const Icon(
                  Icons.mobile_friendly,
                  color: Colors.grey,
                  size: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Create New Contacts',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: contactProvider.nameController,
                  decoration: const InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: Text('Name'),
                    hintText: 'Insert Your Name',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: contactProvider.phoneNumberController,
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                  decoration: const InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: Text('Nomor'),
                    hintText: '+62..',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff6750A4),
                      ),
                      child: const Text('Submit'),
                      onPressed: () {
                        contactProvider.submit(context);
                      },
                    ),
                    const SizedBox(width: 5),
                    Visibility(
                      visible: contactProvider.isEditing,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff6750A4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          contactProvider.cancelEdit();
                        },
                        child: const Text('Cancel'),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff6750A4),
                      ),
                      child: const Text('Next Page'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PictureScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildDatePicker(context),
                const SizedBox(
                  height: 20,
                ),
                buildColorPicker(context),
                const SizedBox(
                  height: 20,
                ),
                buildFilePicker(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'List Contact',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                contactProvider.contacts.isEmpty
                    ? const Text(
                        'No Data',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: contactProvider.contacts.length,
                        itemBuilder: (context, index) => getRow(index),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength - 3)}...';
  }

  String colorToHex(Color color) {
    return color.value.toRadixString(16).substring(2).toUpperCase();
  }

  getRow(int index) {
    // Get the contact from the provider
    final contact = contactProvider.contacts[index];

    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: const Color(0xffEADDFF),
        child: Text(
          contact.name[0],
          style: const TextStyle(
            color: Color(0xff21005D),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            truncateText(contact.name, 18),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(contact.phoneNumber),
          Text(
            "Date: ${DateFormat('dd-MM-yyyy').format(contact.date)}",
          ),
          Row(
            children: [
              const Text("Color: "),
              Container(
                color: contact.color,
                width: 15,
                height: 15,
              ),
            ],
          ),
          Text(
            'File Name: ${truncateText(contact.fileName, 15)}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              // Populate the controllers and set isEditing to true
              contactProvider.startsEditing(contact);
            },
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              // Remove the contact from the list
              contactProvider.deleteContact(contact);
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
                backgroundColor: const Color(0xff6750A4),
              ),
              child: const Text('Pick Date'),
              onPressed: () {
                contactProvider.setDate(context);
              },
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(contactProvider.dueDate)),
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
          color: contactProvider.currentColor,
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(contactProvider.currentColor)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: contactProvider.currentColor,
                          onColorChanged: (Color color) {
                            contactProvider.setCurrentColor(color);
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
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
              backgroundColor: const Color(0xff6750A4),
            ),
            onPressed: () {
              contactProvider.pickFile();
            },
            child: Text(contactProvider.fileName),
          ),
        ),
        if (contactProvider.filePath != null)
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750A4),
              ),
              onPressed: () {
                contactProvider.openFile(contactProvider.filePath!);
              },
              child: Text(contactProvider.fileName),
            ),
          )
      ],
    );
  }
}
