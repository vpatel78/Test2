
# this is character which are going to use for random naming 
my @chars = ("D".."J"); 
# We are declaring the hash 
my %data; 
# this is my starting time where it run 
my $st = time;
#We are here entering the name and the ages for the 10 times
for( $i= 0; $i < 10; $i = $i + 1 ){ 
    
    # here our variables are storing name 
    my $name;   
    # here our variables are storing ages
    my $age;   
    
    #we are generating a random any 3 letter of the name, we are generating 3 letter becasue question asked for 3 characters
    $name .= $chars[rand @chars] for 1..3; 
    #printing name 
    print $name;
    print " ";
    #we are generating any random age between 1 to 50
    $age=int(rand(50));   
    # priting our random ages
    print $age;
    print "\n";

    # i think we are not adding duplicating here. So i jsut added name and the ages to the hash
    $data{$name} = $age;
}

# here we are calculating the total execution time
my $dur = time - $st; 

#here my excution time will display 
print "Execution time: $dur s\n";
