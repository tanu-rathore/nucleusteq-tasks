let n = prompt("enter a number");

function fizzbuzz(n) {
    for(let i=1;i<=n;i++) {
        if(i%3 === 0 && i%5 === 0){
            console.log("fizzbuzz\n");
        }
        else if(i%3 === 0){
            console.log("fizz\n");
        }
        else if(i%5 === 0){
            console.log("buzz\n");
        }
        else {
            console.log(i);
        }
    }
}

fizzbuzz(n);
