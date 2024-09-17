void main() {
  
  LessonCollection data = LessonCollection(lessonContect: [
    Datamodel(isCode: true, dataString: """
    this is the string for code 
    """),
      Datamodel(isCode: false, dataString: """
    this is the string for markdown 
    """),
      Datamodel(isCode: true, dataString: """
    this is the string for code 
    """),
  ]);
  
  for (Datamodel x in data.lessonContect){
   var y =  x.convertToModel();
    if (y is MarkdownModel){
      MarkdownModel z = y;
      print('it is model----------------');
      print(z.mark);
    } else {
            CodeModel z = y;

      print('it is code ');
      print(z.code);
    }
  }
    
  
}


class CodeModel {
  String code;
  CodeModel({required this.code});
}

class MarkdownModel {
  String mark;
  MarkdownModel({required this.mark});
}

class Datamodel {
  bool isCode;
  String dataString;

  Datamodel({required this.isCode, required this.dataString});

  dynamic convertToModel() {
    if (isCode) {
      return CodeModel(code: dataString);
    } else {
      return MarkdownModel(mark: dataString);
    }
  }
}

class LessonCollection {
  List<Datamodel> lessonContect;
  LessonCollection({required this.lessonContect});
}
