extends CanvasLayer

var _sequence: Array = []

@export var story_script: Node

@onready var _dialog_box_element = $DialogBox

var _sequence_length: int = 0
var _sequence_i: int = 0

func _ready() -> void:
	set_sequence(self._sequence)
	self.hide_dialog_box()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("next") and (self._sequence_length > 0) and (self._sequence_i < _sequence_length):
		var dialog = self._sequence[self._sequence_i]
		
		var character = dialog["character"]
		var content = dialog["content"]
		
		_dialog_box_element.set_text(character, content)
		
		self._sequence_i += 1

func show_dialog_box():
	_dialog_box_element.show()

func hide_dialog_box():
	_dialog_box_element.hide()

func set_sequence(sequence: Array):
	self._sequence = sequence
	self._sequence_length = sequence.size()
	self._sequence_i = 0
