import 'dart:io';
import 'dart:math';

//FUNÇÃO FATORIAL:
int factorial(int x)
{
  if (x == 1 || x == 0)
  {
    return 1;
  }
  return x * factorial(x - 1);
}

//FUNÇÃO BASKARA:
List<double> bhaskara(double x, double y, double z)
{
  double delta = pow(y, 2) - (4 * x * z);

  if (delta < 0)
  {
    return List<double>.from([]);
  }
    
  double x1 = (-1*y + sqrt(delta)) / (2*x);
  double x2 = (-1*y - sqrt(delta)) / (2*x);
    
  if (delta == 0)
  {
    return List<double>.from([x1]);
  }

  return List<double>.from([x1, x2]);
}

  //REVERSE STRING
String reverse_string(String string){
  String temp = "";
    
  for (int i = string.length-1; i > -1; i--){
    temp += string[i];
  }
  return temp;
}

int bin_to_dec(String string){   
  String order = reverse_string(string);
  int dec = 0;    
  for (int i = 0; i < order.length; i++){
    dec += int.parse(order[i])*pow(2, i);
  }
  return dec;
}

void main()
{

  print('Choose your operation: \n1. For sum \n2. For subtraction \n3. For division \n4. For multiplication \n5. For percentage \n6. For squared root \n7. For factorial \n8. For Bhaskaras Function \n9. For Binary -> Decimal Convertion');
  String choice = stdin.readLineSync();

  if(choice == "1")
  {
    //SUM:

    print("Enter the elements to be summed : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double result = (x + y);
    print('');
    print("The sum's result is: ${result}");
  }

  else if(choice == "2")
  {
    //SUBTRACTION:

    print("Enter the elements to be subtracted : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double result = (x - y);
    print('');
    print("The subtraction's result is: ${result}");
  }

  else if(choice == "3")
  {
    //DIVISION:

    print("Enter the elements to be divided : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double result = (x / y);
    print('');
    print("The division's result is: ${result}");
  }

  else if(choice == "4")
  {
    //MULTIPLICAÇÃO:

    print("Enter the elements to be multiplicated : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double result = (x * y);
    print('');
    print("The multiplication's result is: ${result}");
  }

  else if(choice == "5")
  {
    //PERCENTAGE:

    print("Enter the number, then the percentage : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double result = (x * (y * 0.01));
    print('');
    print("The percentage's result is: ${result}");
  }

    else if(choice == "6")
  {
    //ROOT

    print("Enter the number to discover it's squared root : ");
    double x = double.parse(stdin.readLineSync());
    double result = sqrt(x);
    print('');
    print("The squared root is: ${result}");
  }

  else if(choice == "7")
  {
    //FACTORIAL

    print("Enter the number to be factored : ");
    int x = int.parse(stdin.readLineSync());

    print("The factorial is: ${factorial(x)}");
  }

  else if(choice == "8")
  {
    //BHASKARA:

    print("Enter a, b and c to calculate a Bhaskara's function : ");
    double x = double.parse(stdin.readLineSync());
    double y = double.parse(stdin.readLineSync());
    double z = double.parse(stdin.readLineSync());
    print("Square roots of ${x}x² + ${y}x + ${z}:");

    for (double result in bhaskara(x, y, z))
    {
    print("${result}");
    }
  }
  
  else if(choice =='9')
  {
    print("Type a binary number:");
    String bin = stdin.readLineSync();
    int result = bin_to_dec(bin);
    print("${result}");
  }

}
