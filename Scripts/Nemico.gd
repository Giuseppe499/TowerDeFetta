extends Node

export var speed = 100
export var startPos = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var pathFollow = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pathFollow.set_offset(startPos)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pathFollow.set_offset(pathFollow.get_offset() + speed * delta)
