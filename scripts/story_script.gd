extends Node

##
var events: Dictionary = {
	"beginning" = {
		"type": "default",
		"character_can_move": true,
		"dialog_squence": []
	},
	"pilar_hint" = {
		"type": "hint",
		"character_can_move": true,
		"dialog_squence": [
			{
				"character": "Eloy",
				"content": "(This looks like it's gonna collapse soon.)"
			}
		]
	},
	"explore" = {
		"type": "default",
		"character_can_move": true,
		"dialog_squence": []
	},
	"box_hint" = {
		"type": "hint", 
		"character_can_move": true,
		"dialog_squence": [
			{
				"character": "Eloy",
				"content": "(Hmm, and what is it? Should I touch it?)"
			}
		]
	},
	"ducky_dialog" = {
		"type": "dialog", 
		"character_can_move": false,
		"dialog_squence": [
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
				"content": "I'm Eloy, it's a pleasure to. I'm looking for my sister..."
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
				"content": "To fullfil a purpose. I was made for that. Little did they know. Fools. That they couldn't end."
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
	},
	"battle" = {
		"type": "hint", 
		"character_can_move": true,
		"dialog_squence": [
			{
				"character": "Eloy",
				"content": "(Hmm, and what is it? Should I touch it?)"
			}
		]
	},
}

##
var _default_event_name: String = "beginning"
var _current: Dictionary
##
signal event_changed(name: String, info: Dictionary)


func _ready() -> void:
	set_event(self._default_event_name)


func get_current():
	return self._current

func set_event(name: String) -> void:
	self._current = events[name]
	
	event_changed.emit(name, get_current())
