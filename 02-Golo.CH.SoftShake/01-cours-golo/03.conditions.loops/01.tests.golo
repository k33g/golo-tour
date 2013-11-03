module conditions

function main = |args| {

	# case
	let food = "fruit"
	case {
		when food is "vegetable" { println("good") }
		when food is "fruit" { println("good") }
		otherwise { println("bad") }
	}

	# match (c'est un return)
	let route = "/users/007"
	
	let controller = match {
		when route:startsWith("/users/") then "Users Controller"
		when route:startsWith("/articles/") then "Articles Controller"
		otherwise "404"
	}

	println(controller)


}