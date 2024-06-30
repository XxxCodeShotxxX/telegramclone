// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';

import 'package:country_pickers/country_pickers.dart';
import '../widgets/basic_text_field.dart';
import '../widgets/title_app_bar.dart';


class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  Country _selectedCountry = CountryPickerUtils.getCountryByPhoneCode('90');
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(
        title: "Authorization",
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Text
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 22),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 22),
                      child: Text(
                        "Your Phone",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Text(
                      "Please confirm your country code and enter your phone number. ",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              //TextFields + country selector
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 56),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _buildCountryPickerDropdownSoloExpanded(),
                            //ListTile(title: _buildCountryPickerDropdown(longerText: true)),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("+${_selectedCountry.phoneCode}",
                            style: const TextStyle(fontSize: 24)),
                        const Expanded(
                            child: BasicTextField(hint: "Your phone number")),
                      ],
                    )
                  ],
                ),
              ),

              //Switch button
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sync Contacts",
                          style: TextStyle(fontSize: 18),
                        ),
                        CupertinoSwitch(
                          value: _switchValue,
                          onChanged: (v) {
                            setState(() {
                              _switchValue = v;
                            });
                          },

                          //activeColor: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildCountryPickerDropdownSoloExpanded() {
    return CountryPickerDropdown(
      //show'em (the text fields) you're in charge now
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      //if you want your dropdown button's selected item UI to be different
      //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
      onValuePicked: (Country country) {
        debugPrint("$country.name");
        _selectedCountry = country;
      },
      itemBuilder: (Country country) {
        return Row(
          children: <Widget>[
            const SizedBox(width: 8.0),
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(width: 8.0),
            Expanded(child: Text(country.name)),
          ],
        );
      },
      itemHeight: null,
      isExpanded: true,
      //initialValue: 'TR',
      icon: const Icon(Icons.arrow_downward),
    );
  }
}
