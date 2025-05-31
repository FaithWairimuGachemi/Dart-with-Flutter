void main(){
  //defining and initializing variables
  const String fname = 'Faith';
  const String sname = 'Wairimu';
  int age = 20;
  double height = 73.5;
  bool isStudent = true;
  String favoriteColor = 'Blue';
  List shoppinglist = ['notebook', 'pen','pencil','eraser','waterbottle'];

  //printing variables
  print("My name is $fname $sname. I am $age years old and my favourite color is $favoriteColor.");
  print("I am ${isStudent ? 'a student' : 'not a student'} and my height is $height centimeters.");
  print("I always get this items when I'm ging to school: $shoppinglist");


//implimenting conversions
  String ageString =age.toString();
  double ageDouble =age.toDouble();

  print("My age as a string is $ageString and as a double is $ageDouble.");


  //converting and displaying functions
  void convertAndDisplay(String str){
    try {
      int number =int.parse(str);
      double doubvalue = double.parse(str);

      print("String: $str");
      print("String converted to int: $number");
      print("String conerted to double: $doubvalue");
    } catch (e) {
      print("Error converting string to number: $e");
    }
  }

  convertAndDisplay("128");

//if else statements
int a =10;
 if (a >0){
  print("a is positive");
} else if (a<0){
  print("a is negative");
} else{
  print("a is 0");
  }


  int personAge = 20;
  if (personAge <18){
    print("You are not eligible to Vote");
  } else {
    print("Eligible to vote");
  }

//switch case
int day = 5;
switch(day){
  case 1:
  print("Sunday");
  break;
  case 2:
  print("Monday");
  break;
  case 3:
  print("Tuesday");
  break;
  case 4:
  print("Wednesday");
  break;
  case 5:
  print("Thursday");
  break;
  case 6:
  print("Friday");
  break;
  case 7:
  print("Saturday");
  break;
  default:
  print("Invalid day");
}

//loops
//for loop
for (int x = 1;
 x <= 10; x++) {
  print("This is iteration number $x");
 }

 //while loop
 int y = 10;
 while (y >=1){
  print("Countdown: $y");
  y--;
 }

 //do while loop
  int z = 1;
  do {
    print("This is iteration number $z");
    z++;
  } while (z <= 5);


  //combining data types and control flow
  List<int> numbers = [1, 20, 37, 104, 5];
  for (int number in numbers) {
    if (number % 2 == 0) {
      print("$number is even");
    } else {
      print("$number is odd");
    }
  }
  //switch statement
  switch (numbers){
    case List<int> small when small.every((numbers) => numbers < 10):
      print("The number is small");
      break;
    case List<int> medium when medium.every((numbers) => numbers >= 10 && numbers < 100):
      print("The number is medium");
      break;
    default:
      print("The number is large");
    }
}