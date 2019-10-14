print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("Andy's Lua Calculator")

result = 0

while(true) do
	print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	print("Enter a mathematical expression (+-/*^) or Q to exit: ")

	io.stdin:flush()
	local left = io.stdin:read"*n"
	local operator = io.stdin:read(1)
	if (operator == "Q") then
		break
	end
	local right = io.stdin:read"*n"

	if (left ~= nil and operator ~= nil and right ~= nil) then
		if (operator == "+") then
			local sum = left + right
			result = result + sum
			print("Sum: ",sum)
		elseif (operator == "-") then
			local diff = left - right
			result = result + diff
			print("Difference: ",diff)
		elseif (operator == "*") then
			local prod = left * right
			result = result + prod
			print("Product: ",prod)
		elseif (operator == "/") then
			if (right == 0.0) then
				print("Error: Cannot divide by zero.")	
			else
				local quot = left / right
				result = result + quot
				print("Quotient: ",quot)
			end
		elseif (operator == "^") then
			local pow = left ^ right
			result = result + pow
			print("Power: ",pow)
		end
	else
		print("Error: Invalid line. Should follow format #operator#, no spaces")
	end
	print("Current result: ", result)
end
print("Exit successful. Final result: ",result)
