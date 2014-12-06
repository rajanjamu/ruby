function flamesCount(name1, name2) {
	name1 = name1.toLowerCase().split("");
	name2 = name2.toLowerCase().split("");
	var i = 0;
	var j = 0;
	while (i < name1.length) {
		while (j < name2.length) {
			if (name1[i] == name2[j]) {
				name1.splice(i, 1);
				name2.splice(j, 1);
			}
			j += 1;
		}
		i += 1;
		j = 0;
	}
	return name1.length + name2.length;
}

function flamesGame(name1, name2) {
	var number = flamesCount(name1, name2);
	var flames = ["f","l","a","m","e","s"];
	var lastIndex = 0, currIndex = 0;
	var i = flames.length;
	while (i > 1) {
		currIndex = (lastIndex + (number % i) - 1) % i;
		flames.splice(currIndex, 1);
		lastIndex = currIndex;
		i -= 1;
		// console.log(flames);
	}
	return flamesName(flames[0]);
}

function flamesName(character) {
	switch(character) {
		case "f": return "Friends";
		case "l": return "Love";
		case "a": return "Affection";
		case "m": return "Marriage";
		case "e": return "Enemies";
		case "s": return "Siblings";
	}
}

// Hard-Coded input
console.log(flamesGame("Rajan", "Suchita"));
