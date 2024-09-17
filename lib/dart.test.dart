import 'dart:convert';

String jsonExample = """
{
  "key1" : "Value1" ,
  "key2" : "value2" , 
  "key3" : {
    "key31" : "value31",
    "key32" : "value32" ,
    "key33" : {
      "key331" : "value331" ,
      "key332" : "value332"
    }
  },
  "key7" : "value7"
}


""";

void main() async {
  Map<String, dynamic> data = await jsonDecode(jsonExample);
  print("data converted from json string to dart map");
  print(data);

  print("-----fromJSon-DartMap-----");
  Model dataModel = Model.fromJson(data);
  print("data Modeled from json ( dart map )");
  print(dataModel.key1);

  print("----ToJSon-DartMap-----");
  print("data Modeled from json ( dart map )");
  Map<String, dynamic> dataFromModelToJsonMap = dataModel.toJson(dataModel);
  print(dataFromModelToJsonMap);

  print("----jsonDartMap to String json encode-----");
  String jsonFromMap = jsonEncode(dataFromModelToJsonMap);
  print(jsonFromMap);
}

class Model {
  String key1, key2, key31, key32, key331, key332, key7;
  Model(
      {required this.key1,
      required this.key2,
      required this.key31,
      required this.key32,
      required this.key331,
      required this.key332,
      required this.key7});

  factory Model.fromJson(Map<String, dynamic> jsonDecoded) {
    String key1 = jsonDecoded["key1"];
    String key2 = jsonDecoded["key2"];
    String key31 = jsonDecoded["key3"]["key31"];
    String key32 = jsonDecoded["key3"]["key32"];
    String key331 = jsonDecoded["key3"]["key33"]["key331"];
    String key332 = jsonDecoded["key3"]["key33"]["key332"];
    String key7 = jsonDecoded["key7"];

    return Model(
        key1: key1,
        key2: key2,
        key31: key31,
        key32: key32,
        key331: key331,
        key332: key332,
        key7: key7);
  }

  Map<String, dynamic> toJson(Model model) {
    return {
      "key1": model.key1,
      "key2": model.key2,
      "key3": {
        "key31": model.key31,
        "key32": model.key32,
        "key33": {
          "key331": model.key331,
          "key332": model.key332,
        },
      },
      "key7": model.key7
    };
  }
}


// -------------------; 
/* output 


ahmedmahdi@ahmeds-MacBook-Air verse_program % dart run lib/dart.test.dart
data converted from json string to dart map
{key1: Value1, key2: value2, key3: {key31: value31, key32: value32, key33: {key331: value331, key332: value332}}, key7: value7}
-----fromJSon-DartMap-----
data Modeled from json ( dart map )
Value1
----ToJSon-DartMap-----
data Modeled from json ( dart map )
{key1: Value1, key2: value2, key3: {key31: value31, key32: value32, key33: {key331: value331, key332: value332}}, key7: value7}
----jsonDartMap to String json encode-----
{"key1":"Value1","key2":"value2","key3":{"key31":"value31","key32":"value32","key33":{"key331":"value331","key332":"value332"}},"key7":"value7"}
*/

//--------list of json in json string 


/*

String json1 = """
{
"key1" : "value1",
"key2" : "value2" 

}
""";
String json2 = """
[
{
  "key11" : "value11",
"key12" : "value12" 
},
{
  "key21" : "value21",
"key22" : "value22"
 }
]
""";

The first JSON representation is an object.
The second JSON representation is an array of objects.


import 'dart:convert';

void main() {
  // JSON string representing a JSON object
  String jsonString = '''
  {
    "key1": "value1",
    "key2": "value2"
  }
  ''';

  // Parse the JSON string into a Map<String, dynamic>
  Map<String, dynamic> json = jsonDecode(jsonString);

  // Access values using keys
  print(json['key1']); // Output: value1
  print(json['key2']); // Output: value2
}
------------------
import 'dart:convert';

void main() {
  // JSON string representing a JSON array of objects
  String jsonString = '''
  [
    {
      "key1": "value1",
      "key2": "value2"
    },
    {
      "key1": "value1",
      "key2": "value2"
    }
  ]
  ''';

  // Parse the JSON string into a List<dynamic>
  List<dynamic> jsonArray = jsonDecode(jsonString);

  // Iterate over each JSON object in the array
  for (var jsonObject in jsonArray) {
    // Access values using keys
    print(jsonObject['key1']); // Output: value1
    print(jsonObject['key2']); // Output: value2
  }
}


*/