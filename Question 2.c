#include <stdio.h>
#include <time.h>

void my_func_with_only_subscript();
void my_func_with_pointers();

int main()
{
  
clock_t start, end;
clock_t start1, end1;
  
//starting the cpu clock.
start = clock();
  
for(int i=0; i<100; i++){
    my_func_with_only_subscript();   
}
  
// closing the cpu clock.
end = clock();
  
printf("Time taken with subscript: %ld\n", (end - start));
  
// starting the cpu clock
start1 = clock();
  
for(int i=0; i< 100;  i++){
    my_func_with_pointers();
}
  
// closing the cpu clock.
end1 = clock();
 
printf("Time taken with pointers: %ld\n", (end1 - start1));

    return 0;
}

// function to reference the 2D array through subscripts.
void my_func_with_only_subscript(){ //assuming that the usage of

int arr[10][10] = {0}; //square matrice is not mandatory

for(int j=0; j<10 ; j++){
    for(int i=0; i<10; i++){
        arr[i][j]; //no operation is done, only accessing the element
    }
}

}

// function to reference the 2D array through pointers.
void my_func_with_pointers() { //assuming that the usage of

int arr[10][10] = {0}; //square matrice is not mandatory

    for(int j=0; j<10 ; j++){
        for(int i=0; i<10; i++){
            *(*(arr+i)+j); //no operation is done, only accessing the element
        }
    }

}
