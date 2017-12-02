extends Control


const NOUN_VERBS = ["rusher", "browser", "doer", "learner", "saver", "grower", "maker"]

var image_files = ['arrow', 'cat', 'learning', 'sun']
var image_resources = []

const IMAGE_PATH = 'res://assets/icon/'

var NOUNS = {
	'arrow': ['ninja', 'click', 'cursor'],
	'cat': ['purr', 'meow', 'nyan'],
	'learning': ['book', 'language', 'boring'],
	'sun': ['weather', 'sun']
}


func _ready():
	for image in image_files:
		var path = IMAGE_PATH + image + '.png'
		image_resources.append(load(path))

	randomize()
	var image_index = randi() % 4
	var key = image_files[image_index]
	$Button.texture_normal = image_resources[image_index]

	randomize()
	var noun_list = NOUNS[key]
	var first_word = noun_list[randi() % len(noun_list)]

	randomize()
	var second_word = NOUN_VERBS[randi() % len(NOUN_VERBS)]
	$Label.text = "%s %s" % [first_word, second_word]

