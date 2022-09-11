var capital = {
  'Jakarta': 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan'
};
var mapKeys = capital.keys;
var mapValues = capital.values;

void main(){
  capital['New Delhi'] = 'India';
  print(capital['Jakarta']);
}