def url ="https://www.google.com/".toURL().getText()

println url.eachLine { it }

println url.eachLine { it -> println "Line :" + it + "size:" it.size() }