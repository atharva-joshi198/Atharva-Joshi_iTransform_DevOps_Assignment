def str = """This is a
			 mutline string 
			assignment in groovy """.trim()
			
def v = ["a","e","i","o","i"]
str1 = str.tokenize("\n")

def first =str1[0]
def line1= first.findAll {it -> it in v}
println "No. of vowels in 1st line :" +line1.size()


def second=str1[1]
def line2 = second.findAll {it -> it in v}
println "No of vowels in 2nd line :" +line2.size()

def third=str1[2]
def line3 = third.findAll {it -> it in v}
println "No of vowels in 3rd line :" +line3.size()