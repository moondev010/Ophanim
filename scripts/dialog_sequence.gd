extends CanvasLayer

var _sequence: Array = [
			{
				"character": "...",
				"content": "..."
			},
			{
				"character": "...",
				"content": "Where am I?"
			},
			{
				"character": "...",
				"content": "..."
			},
			{
				"character": "...",
				"content": "I reckon I've been sleeping for a long, long time!"
			},
			{
				"character": "...",
				"content": "Who dares to awaken me?"
			},
			{
				"character": "Eloy",
				"content": "Who are you, sir... duck?"
			},
			{
				"character": "Eloy",
				"content": "I'm so sorry. I didn't mean to..."
			},
			{
				"character": "...",
				"content": "Don't mention it. I mean... You did me a favor. I was trapped, in there, and I saw it. I figured it out. I must go back."
			},
			{
				"character": "...",
				"content": "And... #$%&^... You're right. I haven't even introduced myself. What a vulgar duck I am. I'm ducky!"
			},
			{
				"character": "Ducky.",
				"content": "It's indeed a pleasure. And you are..."
			},
			{
				"character": "Eloy",
				"content": "I'm Eloy, it's a pleasure too. I'm looking for my sister..."
			},
			{
				"character": "Ducky",
				"content": "I see. I see. Eloy$%$#..."
			},
			{
				"character": "Eloy",
				"content": "And they told me to reach out to you..."
			},
			{
				"character": "Ducky",
				"content": "Let's be honest, Eloy. %$%## I..."
			},
			{
				"character": "Ducky",
				"content": "... I can't help you."
			},
			{
				"character": "Ducky",
				"content": "I can't help you, because I'm incomplete, because I lack... $%^%^%"
			},
			{
				"character": "Ducky",
				"content": "To fullfil a purpose. I was made for that. Little did they know. Fools. That they couldn't end..."
			},
			{
				"character": "Ducky",
				"content": "And I saw such obscurity. Dakness filling. Flooded I was."
			},
			{
				"character": "Ducky",
				"content": "And I saw you. And they told me..."
			},
			{
				"character": "Ducky",
				"content": "They told me..."
			},
			{
				"character": "Ducky",
				"content": "You were the key..."
			},
			{
				"character": "ELoy",
				"content": "I don't understand. I think it wasn't me."
			},
			{
				"character": "ELoy",
				"content": "I gotta go..."
			},
			{
				"character": "Ducky",
				"content": "Such obscurity was I able to hold."
			},
			{
				"character": "Ducky",
				"content": "Being in the end."
			},
			{
				"character": "Ducky",
				"content": "On the edge of life itself."
			},
			{
				"character": "Ducky",
				"content": "You seem like no other. You seem like you are proper."
			},
			{
				"character": "Ducky",
				"content": "My choice. $($%$@"
			},
			{
				"character": "Ducky",
				"content": "May I take your soul?"
			},
			{
				"character": "Ducky",
				"content": "May I take your will?"
			},
			{
				"character": "Ducky",
				"content": "May I take..."
			},
			{
				"character": "%@!%@",
				"content": "..."
			},
			{
				"character": "Ducky",
				"content": "You?"
			},
		]

@onready var _dialog_box_element = $DialogBox

var _sequence_length: int = 0
var _sequence_i: int = 0

func _ready() -> void:
	set_sequence(self._sequence)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("next") and (self._sequence_length > 0) and (self._sequence_i < _sequence_length):
		var dialog = self._sequence[self._sequence_i]
		
		var character = dialog["character"]
		var content = dialog["content"]
		
		_dialog_box_element.set_text(character, content)
		
		self._sequence_i += 1

func set_sequence(sequence: Array):
	self._sequence = sequence
	self._sequence_length = sequence.size()
	self._sequence_i = 0
