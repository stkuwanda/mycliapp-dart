void runPositionalRecord() {
  (String, int) myVar; // declaring a record type variable
  myVar = ('Simba', 35); // assigning values to the record
  print(myVar); // printing the record
  print('Name: ${myVar.$1}'); // accessing first element
  print('Age: ${myVar.$2}'); // accessing second element
}

void runNamedRecord() {
  ({String name, int age}) myVar; // declaring a record type variable
  myVar = (name: 'John', age: 34); // assigning values to the record
  print(myVar); // printing the record
  print('Name: ${myVar.name}'); // accessing first element
  print('Age: ${myVar.age}'); // accessing second element
}

// Function that returns a positional record
(String, int, String, int) getFinalScore() {
  return ('Chelsea', 5, 'Arsenal', 0);
}

void displayFinalScores() {
  var (homeTeam, homeScore, awayTeam, awayScore) = getFinalScore();
  print('Home: $homeTeam $homeScore ; Away: $awayTeam $awayScore');
}

void main() {
  runPositionalRecord();
  runNamedRecord();
  displayFinalScores();
}
