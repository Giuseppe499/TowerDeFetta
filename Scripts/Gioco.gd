extends Node2D

var vita = 100

signal cambiaVita(vita)
signal morto()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("cambiaVita", vita);
	
func diminuisciVita(danno):
	print("ahia!")
	if vita < danno:
		vita = 0
		get_node("GameOver").visible = true
		get_tree().paused = true
	else:
		vita -= danno
		
