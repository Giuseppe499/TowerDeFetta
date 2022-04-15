extends Path2D


export(Resource) var scenaNemico

var attesa = 0;
var timer = 0;
export var spawnRate = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass
	

func istanziaNemico():
	var nemico
	nemico = scenaNemico.instance()
	add_child(nemico)
	nemico.get_node("Sprite").connect("faiDanno", self.owner, "diminuisciVita")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timer >= attesa:
		istanziaNemico()
		timer = 0
		attesa = randf() /spawnRate * 100
		print(attesa)
	timer += delta
