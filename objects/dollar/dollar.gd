class_name Dollar
extends TextureButton

@onready var income_component: IncomeComponent = $IncomeComponent


func _on_pressed() -> void:
	income_component.produce()
