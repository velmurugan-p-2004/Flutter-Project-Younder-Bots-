//Write a function to calculate the sum of all digits in a given number. num= 641108 
void main(){
  int num = 641108;
    int sum = 0;
    while(num > 0){
        sum += num % 10;
        num ~/= 10;
    }
    print(sum);
}