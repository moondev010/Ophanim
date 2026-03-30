extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_story_script_event_changed(name: String, info: Dictionary) -> void:	
	if name == "ducky_dialog":
		var dialog_sequence = info["dialog_squence"]
		
		if dialog_sequence:
			$DialogSequence.set_sequence(dialog_sequence)
			$DialogSequence.show_dialog_box()
