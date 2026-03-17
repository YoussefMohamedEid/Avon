import 'package:cosmetics/core/logic/colors.dart';
import 'package:cosmetics/views/register/countries/countries_widget.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({super.key, required this.phoneController});
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    //  Country? selectedCountry;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Expanded(
          flex: 1,
          child: CountryPickerButton(
            onCountryChanged: (country) {
              //  setState(() {
              // selectedCountry = country;
              //});
              print('تم اختيار: ${country.code}');
            },
          ),
        ),
        SizedBox(width: 6),
        Expanded(
          flex: 2,
          child: TextFormField(
            controller: phoneController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "Phone Number",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryLightBlue),
                borderRadius: BorderRadius.circular(8),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryLightBlue),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
