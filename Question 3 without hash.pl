my @chars = ("A".."Z"); #list of characters used for naming
my @data;   #declare an array
my $st = time;    #note the starting time
for( $a = 0; $a < 5; $a = $a + 1 ){ #enter name and age for 5 times
    my $name;   #variable to store name
    my $age;    #variable to store age
    $name .= $chars[rand @chars] for 1..3; #generate a random 3 letter name
    print $name;
    print " ";
    $age=int(rand(100));    #generate a random age between 1 to 100
    print $age;
    
    print "\n";
    $duplicate=0;   #flag to check duplicate name
    for($i=0;$i<$a;$i++){
        if($data[$i][0]==$name){    #check if generated name exits in array or not
            $duplicate=1;   #duplicate name is found
            break;
        }
    }
    if($duplicate==0){ #if duplicate name is not found
        $data[$a][0] = $name;   #add the name to array
        $data[$a][1] = $age;    #add the age to array
    }else{ #if duplicate name is found
        $a=$a-1;
    }
}

my $dur = time - $st;   #calculate total execution time
print "Execution time: $dur s\n"; #display the total execution time
