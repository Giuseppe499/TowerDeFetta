extends Path2D


export var nNemici = 10
export(Resource) var scenaNemico


# Called when the node enters the scene tree for the first time.
func _ready():
	var nemico
	for i in range(nNemici):
		nemico = scenaNemico.instance()
		add_child(nemico)
		nemico.set_unit_offset(float(i+1)/nNemici)	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
