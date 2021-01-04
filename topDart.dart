main(){
//1. forEach()
//Runs a function on each element in the list
var fruits = ['banana', "pineapple", "watermelon"];
fruits.forEach((fruit) => print(fruit)); // => banana pineapple watermelon



//2. map()
//Produces a new list after transforming each element in a given list
var mappedFruits = fruits.map((fruit) => "I love $fruit").toList();
print(mappedFruits); // => ['I love banana', 'I love pineapple', 'I love watermelon']



//3. contains()
//Checks to confirm that the given element is in the list
var numbers = [1, 3, 2, 5, 4];
print(numbers.contains(2)); // => true



//4. sort()
//Order the elements based on the provided ordering function
numbers.sort((num1, num2) => num1 - num2); // => [1, 2, 3, 4, 5]



//5. reduce(), fold()
//Compresses the elements to a single value, using the given function
var sum = numbers.reduce((curr, next) => curr + next);
print(sum); // => 15
const initialValue = 10;
var sum2 = numbers.fold(initialValue, (curr, next) => curr + next);
print(sum2); // => 25



//6. every()
//Confirms that every element satisfies the test
List<Map<String, dynamic>> users = [
  { 'name': 'John', 'age': 18 },
  { 'name': 'Jane', 'age': 21 },
  { 'name': 'Mary', 'age': 23 },
];
var is18AndOver = users.every((user) => user['age'] >= 18);
print(is18AndOver); // => true

var hasNamesWithJ = users.every((user) => user['name'].startsWith('J'));
print(hasNamesWithJ); // => false


//7. where(), firstWhere(), singleWhere()
//Returns a collection of elements that satisfy a test.
// See #6 for users list
var over21s = users.where((user) => user['age'] > 21);
print(over21s.length); // => 1
var nameJ = users.firstWhere((user) => user['name'].startsWith('J'), orElse: () => null);
print(nameJ); // => {name: John, age: 18}
var under18s = users.singleWhere((user) => user['age'] < 18, orElse: () => null);
print(under18s); // => null


//8. take(), skip()
//Returns a collection while including or skipping elements
var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
print(fiboNumbers.take(3).toList()); // => [1, 2, 3]
print(fiboNumbers.skip(5).toList()); // => [13, 21]
print(fiboNumbers.take(3).skip(2).take(1).toList()); // => [3]


//9. List.from()
//Creates a new list from the given collection
var clonedFiboNumbers = List.from(fiboNumbers);
print("Cloned list: $clonedFiboNumbers");


//10. expand()
//Expands each element into zero or more elements

var pairs = [[1, 2], [3, 4]];
var flattened = pairs.expand((pair) => pair).toList();
print("Flattened result: $flattened"); // => [1, 2, 3, 4]
var input = [1, 2, 3];
var duplicated = input.expand((i) => [i, i]).toList();
print(duplicated); // => [1, 1, 2, 2, 3, 3]
}