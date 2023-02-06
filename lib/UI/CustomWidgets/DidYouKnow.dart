import 'dart:convert';
import 'dart:math';

import 'package:enhanced_future_builder/enhanced_future_builder.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DidYouKnow extends StatefulWidget {
  const DidYouKnow({
    Key? key,
  }) : super(key: key);

  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

String didYouKnowText = "";

getDYKfromGPT() async {
  const apiKey = "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";
  final random = Random();

  const countryList = [
    "Afghanistan",
    "Algeria",
    "Albania",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Saudi Arabia",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "The Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Belarus",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Central African Republic",
    "Chile",
    "China",
    "Cyprus",
    "Colombia",
    "Comoros",
    "Congo (Brazzaville)",
    "Congo (Kinshasa)",
    "North Korea",
    "South Korea",
    "Costa Rica",
    "Côte d'Ivoire",
    "Croatia",
    "Cuba",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Egypt",
    "El Salvador",
    "United Arab Emirates",
    "Ecuador",
    "Eritrea",
    "Spain",
    "Estonia",
    "United States",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Equatorial Guinea",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Marshall Islands",
    "India",
    "Indonesia",
    "Iraq",
    "Iran",
    "Ireland",
    "Iceland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kyrgyzstan",
    "Kiribati",
    "Kuwait",
    "Laos",
    "Lesotho",
    "Latvia",
    "Lebanon",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "North Macedonia",
    "Madagascar",
    "Malaysia",
    "Malawi",
    "Maldives",
    "Mali",
    "Malta",
    "Morocco",
    "Mauritius",
    "Mauritania",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Mozambique",
    "Myanmar (Burma)",
    "Namibia",
    "Nauru",
    "Nepal",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norway",
    "New Zealand",
    "Oman",
    "Uganda",
    "Uzbekistan",
    "Pakistan",
    "Palau",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Netherlands",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "United Kingdom",
    "Russia",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "San Marino",
    "Saint Vincent and the Grenadines",
    "Solomon Islands",
    "El Salvador",
    "Samoa",
    "São Tomé and Principe",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Somalia",
    "Sudan",
    "South Sudan",
    "Sri Lanka",
    "Sweden",
    "Switzerland",
    "Suriname",
    "Eswatini",
    "Syria",
    "Tajikistan",
    "Tanzania",
    "Chad",
    "Thailand",
    "East Timor",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkmenistan",
    "Turkey",
    "Tuvalu",
    "Ukraine",
    "Uruguay",
    "Vanuatu",
    "Vatican City",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];

  const dykThemeList = [
    "Area",
    "Flag",
    "Languages",
    "Population",
    "Wealth",
    "Currency",
    "Territory",
    "Politics",
    "Capital",
    "Continent",
    "Dates",
    "Elections",
    "Former Leaders",
    "Current Leaders",
    "Geography",
    "History",
    "Economy",
    "Culture",
    "Society",
    "Environment",
    "Education",
    "Health",
    "Demography",
    "Tourism",
    "Sports",
    "Borders",
    "International Relations",
    "Religion",
    "Country Heritage",
    "Gastronomy",
    "Neighboring Countries"
  ];

  String prompt =
      "Write me a \"Did you know?\" about the country: ${countryList[random.nextInt(countryList.length)]}\nabout the subject: ${dykThemeList[random.nextInt(dykThemeList.length)]}";
  // print(prompt);

  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $apiKey"
    },
    body: json.encode({
      "model": "text-davinci-003",
      "prompt": prompt,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  Map<String, dynamic> newresponse = jsonDecode(response.body);
  // print(newresponse['choices'][0]['text'].trim());

  // Verify if there is an error with the API or not
  if (newresponse['choices'][0]['text'].substring(0, 36) ==
      "package com.example.demo.controller;") {
    didYouKnowText = "Error on loading... \nTry il later";
    return;
  }
  didYouKnowText = newresponse['choices'][0]['text'].trim();
  return;
}

class _DidYouKnowState extends State<DidYouKnow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Did you know it?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => const Color(0xFF4B9589).withOpacity(0.1),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.transparent,
                ), //Colors.transparent,
              ),
              onPressed: () {
                setState(() {});
              },
              child: const Icon(
                Icons.refresh,
                color: Color(0xFF3A736A),
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(0.5),
        ),
        const SizedBox(
          height: 4,
        ),
        EnhancedFutureBuilder(
            future: getDYKfromGPT(),
            rememberFutureResult: false,
            whenNotDone: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 8,
                  ),
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Is loading...",
                  ),
                ],
              ),
            ),
            whenDone: (snapshot) {
              return IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "« ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      flex: 16,
                      child: Text(
                        didYouKnowText,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            " »",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
        // IntrinsicHeight(
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: const [
        //             Text(
        //               "« ",
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 24,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       const SizedBox(
        //         width: 4,
        //       ),
        //       Expanded(
        //           flex: 16,
        //           child: EnhancedFutureBuilder(
        //               future: getDYKfromGPT(),
        //               rememberFutureResult: false,
        //               whenNotDone: Center(
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   children: const [
        //                     CircularProgressIndicator(),
        //                     SizedBox(
        //                       height: 8,
        //                     ),
        //                     Text(
        //                       "Is Loading",
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               whenDone: (snapshot) {
        //                 return Text(
        //                   didYouKnowText,
        //                   textAlign: TextAlign.justify,
        //                   style: const TextStyle(
        //                     fontSize: 12,
        //                   ),
        //                 );
        //               })),
        //       const SizedBox(
        //         width: 4,
        //       ),
        //       Expanded(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: const [
        //             Text(
        //               " »",
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 24,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
