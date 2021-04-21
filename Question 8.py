#This is python script for the question 8

def var1():
    numberInVar1 = 35;
    print("In Var1")
    print('%d' % (numberInVar1))

def var2():
    numberInVar2 = 50;
    var1()
    print("In Var2")
    print('%d' % (numberInVar2))

def var3():
    numberInVar3 = 34;
    var2()
    print("In Var3")
    print('%d' % (numberInVar3))

if __name__ == '__main__':
    var3()
    
    
