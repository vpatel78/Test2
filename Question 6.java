// //A easy, recursive decent Java parser that uses a lexical analyzer to break code into
// individual tokens from a hypothetical programming language (looks like a pseudocode)
// to see if they obey an EBNF grammar rules. The software results in a syntax error when
// these rules are not followed (not what it is or where it occurs).

// <program> -> program begin <statement_list> end <statement_list> -> <statement> 
// {;<statement>} <statement> -> <assignment_statement> | <if_statement> | 
// <loop_statement> <assignment_statement> -> <variable> = <expression> <variable> -> 
// identifier (An identifier is a string that begins with a letter followed by 0 or 
// more letters and/or digits) <expression> -> <term> {(+|-) <term>} <term> -> 
// <factor> {(* | /) <factor>} <factor> -> identifier | int_constant | (<expr>) 
// <if_statement> -> if (<logic_expression>) then <statement> <logic_expression> -> 
// <variable> (< | >) <variable> (Assume logic expressions have only less than or 
// greater than operators) <loop_statement> -> loop (<logic_expression>) <statement>

//Program without syntax errors in the pseudolanguage:

program 
begin 

sum1 = var1 + var2;
 sum2 = var3 + var2 * 90; 
sum3 = (var2 + var1) * var3;

 if (sum1 < sum2) then 
      if (var1 > var2) then
      var4 = sum2 - sum1;

 loop (var1 < var2) 
     var5 = var4/45 

end

//The start of <statement list> end format must be followed by any programme, as you can see. Only a semi-column is necessary for the last statement at the top.



// or 
// THIS BELOW CODE SORUCE FROM THE ifstmt.c file. for the refernces 
void main (void) {
 if (nextToken != IF_CODE)
 	error();
 else {
	lex();
 	if (nextToken != LEFT_PAREN)
 		error();
 	else {
 		lex();
 		boolexpr();
 		if (nextToken != RIGHT_PAREN)
 			error();
 		else {
 			lex();
		 	statement();
 			if (nextToken == ELSE_CODE) {
 				lex();
 				statement();
 			}
 		}
 	}
 }
}

// In the Java language, this code  shows how recursion works.

class main {
	static void printRun(int run)
	{
		if (run < 1)
			return;

		else {
			System.out.printf("%d ", run);

			// This is statment 2
			printRun(run - 1);

			System.out.printf("%d ", run);
			return;
		}
	}

	public static void main(String[] args)
	{
		int run = 3;
		printRun(run);
	}
}

//related to loops, such as the ‘while' and ‘for' loops, are used with other recursive processes.
