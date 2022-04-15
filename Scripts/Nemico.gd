extends Node

export var speed = 20
export var danno = 5

signal faiDanno(danno)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var pathFollow = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pathFollow.set_offset(pathFollow.get_offset() + speed * delta)
	if pathFollow.get_unit_offset() == 1:
		emit_signal("faiDanno", danno)
		queue_free()
