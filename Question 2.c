#include <stdio.h>
#include <time.h>

void subscript();
void pointers();

int main() {
  
clock_t start, end;
clock_t start1, end1;
  
//starting the cpu clock.
start = clock();
  
for(int i=0; i<100; i++){
    subscript();   
}
  
// we are here ending the cpu clock 
end = clock();

// printing the time taken with subscript to get our subscript time
printf("Time taken with subscript: %ld\n", (end - start));
  
// we are here starting the cpu clock 
start1 = clock();
  
for(int i=0; i< 100;  i++){
    //checking pointers
    pointers();
}
  
// clsoing the ending clock 
end1 = clock();
 
 // printing the time taken with pointers to get our pointers time
printf("Time taken with pointers: %ld\n", (end1 - start1));
    //returning the result
    return 0;
}

// functioning the 2D array with my subscripts and we are checking our running time
void subscript(){

int arr[10][10] = {0}; 

for(int j=0; j<10 ; j++){
    for(int i=0; i<10; i++){
        // There is no procedure performed; only the variable is accessed.
        arr[i][j]; 
    }
}

}

// functioning the 2D array with my pointers and we are checking our running time
void pointers() { 

int arr[10][10] = {0};

    for(int j=0; j<10 ; j++){
        for(int i=0; i<10; i++){
            //Only the variable is accessed; no operation is performed.
            *(*(arr+i)+j); 
        }
    }

}


// The one with subscript is likely to be reliable becasue of the not wrorrying about the referceicing and derefecring like in the pointers.

