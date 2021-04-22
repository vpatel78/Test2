<p id="Test2">0</p>

<script>

document.getElementById("Test2").innerHTML = NumberInVar();;

function NumberInVar()

{

var total1 = 4, total2 = 8;

function Invar()

{

var total3=12;

function Invar1()

{

function Invar2()

{

var total4=16;

return 'NumberInVar: ' +(total1 + total2+ total3+ total4);

}

return Invar2();

}

return Invar1();

}

return Invar();

}

</script>
