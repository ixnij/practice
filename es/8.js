var eight = {};

eight.m = function () {
    if (arguments.length === 2) {
        return arguments[1];
    }
    return arguments.length;
};

eight.b = function (...restargs) {
    for (var x of restargs) {
        console.log(x, "\n");
    }
};

eight.theArray = [1, 2, 3, 4, 5, 6];
console.log(eight.m(1, "This is the result of calling function eight."));
eight.b(1, 2, 3, 4, 5, 6);

console.table([
    { Time: "1h", Mode: "Line~" },
    { Time: "2h", Mode: "Line~" },
    { Time: "3h", Mode: "Line~" },
    { Time: "4h", Mode: "Line~" },
]);