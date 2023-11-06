// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest


// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
// b) Create the function that makes the test pass.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

describe("secretCodeWord1,2,3", () => {
    it("takes in a string and returns the string with a coded message", () => {
        expect(newCode(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(newCode(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(newCode(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})


const newCode = (input) => {
    let newCode = ''

    for (const char of input) {
        if (char === 'a') {
            newCode += '4' 
        } else if (char === 'e') {
            newCode += '3' 
        } else if (char === 'i') {
            newCode += '1'
        } else if (char === 'o') {
            newCode += '0'
        } else {
            newCode += char
        }
    }

    return newCode
}


// Pseudo code:
// create a variable "newCode" and initialize it as a empty string.
// use a for loop to iterate through each caracter and when it comes across a, e, i, or o it will assign them 4, 3, 1, and 0 and return the string with the new coded message. 

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.


describe("isFullHouse", () => {
    it("should return true for a full house hand, and false if not a full house", () => {
        expect(isFullHouse(hand1)).toBe(true)
        expect(isFullHouse(hand4)).toBe(true)
        expect(isFullHouse(hand2)).toBe(false)
        expect(isFullHouse(hand3)).toBe(false)
    })
})

const isFullHouse = (hand) => {
    const numberCounts = {}
    
    for (const num of hand) {
        numberCounts[num] = (numberCounts[num] || 0) + 1
    }
    
    let hasPair = false
    let hasThreeOfAKind = false
    
    for (const count of Object.values(numberCounts)) {
        if (count === 2) {
            hasPair = true
        } else if (count === 3) {
            hasThreeOfAKind = true
        }
    }
    
    return hasPair && hasThreeOfAKind
}

// Pseudo code:
// Create a variable that will take in a array to determine if the input of the array is a full house.
// create a for loop to iterate through the hand for each number, and numberCounts 0 + 1 to check if the number is alread in numberCounts if it is it increments the count, otherwise it initalizes the count to 1.
// hasPair and hasThreeOfAKind set initialized to false and will be used to track whether there is at least on pair and one three of a kind in the array.
// for loop to check if one count is equal to 2 and another count equal to 3.
// the function will return true if both hasPair and hasThreeOfAKind conditions are met, and false if otherwise.
