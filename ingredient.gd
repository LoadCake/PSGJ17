class_name Ingredient
extends Resource
@export var name: String
@export var color: Color
@export var effect: Effect
@export var desc: String
@export var sprite_tex: Texture2D
@export var processed: Ingredient = null

enum Effect{
	Detoxifying,
	Energizing,
	Refreshing,
	Regulatory,
	Oxidizing,
	Grounding,
	Protecting,
	Calming,
	Healing,
	Cleansing,
	Demulcing,
	Prebiotic,
}
