my @chars = ("A".."Z"); #list of characters used for naming
my %data;   #declare a hash
my $st = time;   #note the starting time
for( $a = 0; $a <5; $a = $a + 1 ){ #enter name and age for 5 times
    my $name;   #variable to store name
    my $age;    #variable to store age
    $name .= $chars[rand @chars] for 1..3; #generate a random 3 letter name
    print $name;
    print " ";
    $age=int(rand(100));    #generate a random age between 1 to 100
    print $age;
    
    print "\n";

    $data{$name} = $age;    #add the name and age to hash (duplicates will not be added)
}

my $dur = time - $st;   #calculate total execution time
print "Execution time: $dur s\n"; #display the total execution time
