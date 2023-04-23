import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  String? firstName;
  String? lastName;
  String? email;

  RegistrationPage({
    this.firstName,
    this.lastName,
    this.email,
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;

  @override
  void initState() {
    firstNameController = TextEditingController(text: widget.firstName);
    lastNameController = TextEditingController(text: widget.lastName);
    emailController = TextEditingController(text: widget.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          TextField(
            controller: firstNameController,
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: lastNameController,
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: emailController,
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }
}
