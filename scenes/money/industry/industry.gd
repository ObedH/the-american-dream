class_name Industry
extends VBoxContainer

const INCOME_WIDGET = preload("uid://dolv80mbbhge6")

var income_sources: Array[IncomeWidget]


func _ready() -> void:
	add_income_source(IncomeData.new("Test"))

func add_income_source(data: IncomeData) -> void:
	var income_source: IncomeWidget = INCOME_WIDGET.instantiate()
	add_child(income_source)
	if not income_source.is_node_ready():
		await income_source.ready
	income_source.make(data)
	income_sources.append(income_source)
