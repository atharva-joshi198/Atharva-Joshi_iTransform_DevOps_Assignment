////Part a
def str = "Hello, Groovy!"
println str.length()

////Part b
//
name = "Atharva"
println "Hello ".concat(name) 

//Part c
sample= "racecar"
rev_sample= sample.reverse()

println rev_sample.equals(sample)


sample2="Bob"
rev_sample2 = sample2.reverse()
println rev_sample2.equalsIgnoreCase(sample2)

//d
str1 = "Hello, World. How are you?"
def arr = str1.split()
println arr
println arr.length

def arr1 = str1.tokenize()
println arr1

//e
println arr[1]

//f
println arr[4].reverse()