
object HelloWorld {
  def main (args: Array[String]){
    println(createGreeting(args))
  }
  def createGreeting (args: Array[String]) = {
    args.headOption match {
      case Some(name) => "Hello" + name + "!"
      case None => "HelloWorld!"
    }
  }
}