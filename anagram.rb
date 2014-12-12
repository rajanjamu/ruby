##############################
# Code: 	Anagram test
# Input: 	2 Strings
# Output: 	True or False
# Author: 	Rajan Gupta
# Created: 	12 Dec 2014
##############################

def sort(word)
	# Downcase and converting string into array
	word = word.downcase().split("")
	len = word.length

	# Initializing loop variables
	i = 0
	j = 0
	temp = 0

	# Sort the array
	while i < len - 1
		j = i + 1
		while j < len
			if word[i] > word[j]
				#swap characters in ascending order
				temp = word[i]
				word[i] = word[j]
				word[j] = temp
			end
			j += 1
		end
		i += 1
	end
	return word
end

def anagram_test(name1, name2)
	len1 = name1.length
	len2 = name2.length
	name1 = sort(name1)
	name2 = sort(name2)

	# Flag to store whether passed strings are anagrams
	flag = true

	# Return false if length of two strings are not equal
	if len1 != len2
		return false
	else
		i = 0
		# Compare char by char
		while i < len1
			if name1[i] != name2[i]
				flag = false
				break
			end
			i += 1
		end
		return flag
	end
end

# Test case
print anagram_test("rajan", "NAJAr")
puts ""

# Other test cases
# print anagram_test("aaa", "bdc")
# puts ""