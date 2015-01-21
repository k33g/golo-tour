module contextdecorator

import gololang.Decorators

#defaultContext

let checkAll = defaultContext() # use it: @withContext
  : tmp(0)
  : define("entry", |this, args| {
      println(args: get(0))
      println(args)
      this: tmp(args: get(0))
      return args
  })
  : define("exit", |this, result| {
      println(result)
      require(result: equals("#"+this: tmp()+"#"), "meeeep!")
      println("nice")
      return result
  })
  : define("catcher", |this, e| {
      
      throw e
  })
  : define("finallizer", |this| {
      # foo
      println("The End")
  })  

@withContext(checkAll)
function doSomeThingWith = |name| {

  return "#" + name + "#"
}

function main = |args| {
  println(doSomeThingWith("Bob"))
  
}