extends HoldableInstance
@onready var sprite_2d: Sprite2D = $Sprite2D

@export var tool: Tool

func _ready() -> void:
	sprite_2d.texture = tool.sprite_tex
