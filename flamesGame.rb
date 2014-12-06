def flamesCount(name1, name2)
	name1 = name1.downcase.split("")
	name2 = name2.downcase.split("")
	i = 0
	j = 0
	while i < name1.length
		while j < name2.length
			if name1[i] == name2[j]
				name1.delete_at(i)
				name2.delete_at(j)
			end
			j += 1
		end
		i += 1
		j = 0
	end
	return name1.length + name2.length
end

def flamesGame(name1, name2)
	number = flamesCount(name1, name2)
	flames = ["f","l","a","m","e","s"]
	i = flames.length
	lastIndex = 0
	while i > 1
		currIndex = (lastIndex + (number % i) - 1) % i
		flames.delete_at(currIndex)
		lastIndex = currIndex
		i -= 1
		# print flames
		# print "\n"
	end
	print flamesName(flames[0])
end

def flamesName(character)
	case character
		when "f"
			return "Friends"
		when "l"
			return "Love"
		when "a"
			return "Affection"
		when "m"
			return "Marriage"
		when "e"
			return "Enemies"
		when "s"
			return "Siblings"
	end
end

# Hard-Coded input
# puts flamesGame("Rajan", "Anvesh")

# User input
print "Please enter first name: "
name1 = gets.chomp

print "Please enter second name: "
name2 = gets.chomp

puts flamesGame(name1, name2)
