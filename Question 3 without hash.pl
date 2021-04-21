#!/usr/bin/perl
# this is character which are going to use for random naming 
my @chars = ("D".."J");

# We are declaring an array 
my @data;

# this is my starting time where it run 
my $st = time;

#We are here entering the name and the ages for the 10 times
for( $x = 0; $x < 10; $x = $x + 1 ){
    
    # here our variables are storing name 
    my $name;  
    
    # here our variables are storing ages
    my $age;  
    
    #we are generating a random any 3 letter of the name, we are generating 3 letter becasue question asked for 3 characters
    $name .= $chars[rand @chars] for 1..3;
    
    # printing the name
    print $name;
    print " ";
    
    # we are generating any random age between 1 to 50
    $age=int(rand(50));
    
    # printing age
    print $age;
    print "\n";
    
    # we are here checking the duplciate name
    $duplicate=0;  
    for($i=0;$i<$x;$i++){
        
        #checking if the array gernnating the name still keep going or not 
        if($data[$i][0]==$name){ 
            
            # if we found any duplciate related name
            $duplicate=1;
            break;
        }
    }
    
    # or here if my duplicate name are not found 
    if($duplicate==0){ 
        
        # we are adding name to the array in my data
        $data[$x][0] = $name;
        
        # we are adding age to the array in my data
        $data[$x][1] = $age;
        
        # if my duplicate name not found in the array 
    }else{
        
        $x=$x-1;
    }
}

# here we are calculating the total execution time
my $dur = time - $st;

#here my excution time will display 
print "Execution time: $dur s\n"; #display the total execution time

# After looking both hash and without hash program, both are readability and both are easy to understood and easy to write the program.
# but after running both program, with hash program are very efficiency because of here we are not duplcating name, so the execution time is very fast to get, where in the without hash, the program execution time tkaing very long since we are here duplcating the names. 

