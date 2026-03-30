extends CanvasLayer

@onready var _character_element = $MarginBox/MarginContent/MarginVBox/Character
@onready var _content_element = $MarginBox/MarginContent/MarginVBox/Content

@onready var _character_timer = $CharacterTimer
@onready var _content_timer = $ContentTimer

var _character: String
var _content: String

var _character_legth: int
var _content_legth: int

var _character_i: int
var _content_i: int

func _ready() -> void:
	# set_text("Eloy", "Hello there!")
	pass
	
func set_text(character: String, content: String) -> void:
	print(character, content)
	
	_character_element.visible_characters = 0
	_content_element.visible_characters = 0
	
	_character_element.text = character
	_content_element.text = content
	
	self._character = character
	self._content = content
	
	self._character_legth = character.length()
	self._content_legth = content.length()
	
	self._character_i = 0
	self._content_i = 0
	
	_character_timer.start()


func _on_character_timer_timeout() -> void:
	if self._character_i == self._character_legth:
		_character_timer.stop()
		_content_timer.start()
		
	_character_element.visible_characters = self._character_i
	
	self._character_i += 1


func _on_content_timer_timeout() -> void:
	if self._content_i == self._content_legth:
		_content_timer.stop()
	
	_content_element.visible_characters = self._content_i
	
	self._content_i += 1
