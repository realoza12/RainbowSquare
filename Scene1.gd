extends Node

var text_box = preload("res://text_box.tscn")

var frieren
var control

# Called when the node enters the scene tree for the first time.
func _ready():
	frieren = get_node("Node2D/Frieren")
	control = get_node("Control")
	control.add_child(text_box.instantiate())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	frieren.position.y += 1
	frieren.position.x += 1


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
