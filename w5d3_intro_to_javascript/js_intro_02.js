function fizzBuzz(array) {
  var res = [];
  for(var i = 0; i < array.length; i++) {
    if((array[i] % 3 === 0 || array[i] % 5 == 0) && array[i] % 15 !== 0 ) {
      res.push(array[i]);
    }
  }
  return res;
}

// console.log(fizzBuzz([3,5,15,12,20]));

function isPrime(number) {
  if(number == 2 || number == 3) {
    return true;
  }
  for(var i = 2; i < number; i ++) {
    if(number % i === 0) {
      return false;
    }
  }
  return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(n) {
  var sum = 0;
  var count = 0;
  var current = 2;
  while(count < n){
    if(isPrime(current)) {
      sum += current;
      count++;
    }
    current++;
  }
  return sum;
}

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));

function allOrNothing(mod, ...nums) {
  for(var i = 0; i < nums.length; i++) {
    if(nums[i] % mod !== 0){
      return false;
    }
  }
  return true;
}

console.log(allOrNothing(3,9,12,6));
console.log(allOrNothing(5,1,2,10));
