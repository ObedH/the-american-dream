class_name Money
extends Control

signal notif_request(notif: Notif)

enum Means {
	BOOTLEGGING,
	INDUSTRY,
}

var money: int = 0
var means: Means
var industry: Industry

@onready var money_display: Label = $MoneyDisplay
@onready var income_panel: FoldableContainer = $IncomePanel


func _ready() -> void:
	for income_component in get_tree().get_nodes_in_group("income"):
		income_component.bank = self
	
	money_display.text = "Money: %d" % money


func initialize(how: Means) -> void:
	means = how
	if means == Means.INDUSTRY:
		var industry_res: PackedScene = load("res://scenes/money/industry/industry.tscn")
		industry = industry_res.instantiate()
		income_panel.add_child(industry)


func add_money(amount: int) -> void:
	money += amount
	money_display.text = "Money: %d" % money
	
	if money > 5:
		notif_request.emit(Notif.new(Notif.NotifType.MONEY, "Too much!"))


func take_money(amount: int) -> void:
	money -= amount
	money_display.text = "Money: %d" % money
