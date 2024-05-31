let st = prompt("enter a string");
let len = st.length;

function ifPalindrome(st) {
    for(let i=0; i<len/2; i++){
        if(st[i] !== st[len-i-1]){
            return false;
        }
    }
    return true;
}

if(ifPalindrome(st)) {
    console.log("given string is palindrome");
}
else{
    console.log("given string is not palindrome")
}