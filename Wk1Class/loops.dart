void main(){
    //Using for loop(used when number of repetitions is known)
    for(int i = 1;
        i <= 10; 
        i++)
     {
        print('This is a loop $i');
     }
     //Using for in loop
var list1 = [10, 20, 30, 40, 50];
//x stands for any variable in the list
    for(var x in list1){
        print(x);
    }

//using while loop(used when the number of repetitions is not known)
var list2 = [60, 70, 80, 90, 100];
    int y = 0; //initail index
    while(y<list2.length){
        //print the value at index y
        print(list2[y]);
        y++;
    }

//do…while loop is similar to the while loop but only 
//difference is that, it executes the loop statement and then check the given condition. 
 
var a = 1;  
var maxnum = 10;  
do  
    {                
       print("The value is: ${a}");  
       a = a+1;                                    
       }while(a<maxnum);  
//break statement
for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break;  // Stops the loop when i equals 3
    }
    print(i);
  }
  // Output: 0, 1, 2
  //continue statement
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue;  // Skips the rest of the loop for i = 2
    }
    print(i);
  }
  // Output: 0, 1, 3, 4
//assert statement
  int age = 18;
  assert(age >= 18, "Age must be at least 18");  // No output if true
  print("You are $age years old."); 
}
