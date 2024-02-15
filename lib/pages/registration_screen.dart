import 'package:authentication_otp/widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/register.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Register Here",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Okra',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 138, 13)),
              ),
              const SizedBox(height: 5),
              const Text(
                "Add your phone number. A verification code will be sent to your device within one minute.",
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12)),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                  bottomSheetHeight: 500),
                              onSelect: (value) {
                                setState(() {
                                  selectedCountry = value;
                                });
                              });
                        },
                        child: Text(
                          "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(text: "Login", onPressed: () {}),
              )
            ],
          ),
        ),
      )),
    );
  }
}
