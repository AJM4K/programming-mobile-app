import 'package:verse_program/Domain/Models.dart';

LessonPage lesson1python = LessonPage(
    listPage: [
      PageModel(code: CodeModel(code: '''
def main():
    # Write logic here
    # This is the main function in any Python application
    pass
'''), mark: MarkdownModel(mark: '''
# Welcome to Python Programming!

👋 Welcome, future Python developer! Let's embark on an exciting journey into the world of Python programming!

## Lesson 1: Saying Hello with Python

**Objective:** Learn how to write and run your first Python program.

1. **Install Python** 🛠️  
   First things first, make sure you have Python installed on your computer. Don't worry, it's super easy! Just visit the [official Python website](https://www.python.org/downloads/) and follow the instructions for your operating system.

2. **Choose Your Weapon** 🖥️  
   Pick your favorite code editor or IDE. Whether it's Visual Studio Code, PyCharm, or even Jupyter Notebook, find the one that feels right for you!

3. **Write Your First Program** ✍️  
   Open your code editor and create a new Python file. Give it a name, like `hello.py`. Now, let's write some code! Type the following:

   ```python
   def main():
       print('Hello, World!')

   if __name__ == "__main__":
       main()

''')),
      PageModel(code: CodeModel(code: '''
def main():
    text = "your text here"
    number = 3
    is_done = True
 
'''), mark: MarkdownModel(mark: '''
## Variables in Python

Variables in Python allow us to store data that we can later access.

### Lesson 2: Variables

**Objective:** Learn how to write variables.

In this lesson, we'll cover the basic variable types in Python:

1. **String** 🛠️  
   Strings are sequences of characters, enclosed in single or double quotes.

2. **Integer (int)** 🖥️  
   Integers are whole numbers, without any decimal point.

3. **Boolean (bool)** ✍️  
   Booleans represent truth values `True` or `False`, and are often used in conditional statements.

Let's see how we define variables in Python:

```python
def main():
    text = "your text here"
    number = 3
    is_done = True


   ''')),
      PageModel(code: CodeModel(code: '''
def main():
    print("Hello, world!")

    name = "Alice"
    age = 30
    print("Name:", name, "Age:", age)

    name = "Bob"
    age = 25
    print(f"Name: {name}, Age: {age}")
    
 
'''), mark: MarkdownModel(mark: '''

```markdown
## Printing in Python

In Python, the `print()` function is used to display output to the console. Let's dive into how to use it!

### Lesson: Printing Output

**Objective:** Learn how to print messages and variables in Python.

To print a message, simply pass the text enclosed in quotes to the `print()` function:

```python
print("Hello, world!")
```

You can also print multiple items by separating them with commas:

```python
name = "Alice"
age = 30
print("Name:", name, "Age:", age)
```

### Special Characters

Python supports special characters that can be included in print statements:

- `\n`: Newline character
- `\t`: Tab character

```python
print("This is a new line.\nThis is tabbed.\tThis is another tabbed section.")
```

### Formatted Strings

Formatted strings allow you to embed expressions inside string literals:

```python
name = "Bob"
age = 25
print(f"Name: {name}, Age: {age}")
```

### Conclusion

Printing in Python is straightforward and flexible. Experiment with different ways to format your output to make your programs more readable!
```
'''))
    ],
    title: 'Introduction',
    textCompleted:
        'Great , you have completed the introduction of python programming language ');
