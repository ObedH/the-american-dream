class_name IncomeWidget
extends PanelContainer

@onready var title: Label = $HBoxContainer/Title
@onready var actions: OptionButton = $HBoxContainer/Actions

var income_data: IncomeData


func make(data: IncomeData) -> void:
	print("Was made!: ", data)
	income_data = data
	title.text = income_data.title
