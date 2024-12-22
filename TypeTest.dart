
void main() {

    //  using dynamic
    dynamic testVariable = 10;

    // convert dynamic data type to int
    var castToInt = testVariable as int;
    // output 10, ex : dynamic can convert to int

    // check if int
    var checkIfInt = testVariable is int;
    // output true, ex : testVariable is int

    // check if not int
    var checkIfNotInt = testVariable is! bool;
    // output true, ex : testVariable is not bool

    print(castToInt);
    print(checkIfNotInt);
    print(checkIfInt);
}