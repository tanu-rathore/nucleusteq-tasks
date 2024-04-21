let st1 = prompt("enter first string");
let st2 = prompt("enter second string");

function isAnagram(st1, st2) {
    if(st1.length !== st2.length){
        return false;
    }

    //strings cannot be sorted using sort function directly
    st1 = st1.split('').sort().join('');
    st2 = st2.split('').sort().join('');

    
    return st1 === st2;
}

if(isAnagram(st1,st2)){
    console.log("given 2 strings are anagram\n");
}
else {
    console.log("given 2 strings are not anagram")
}