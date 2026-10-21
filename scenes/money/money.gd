class_name Money
extends Control

signal notif_request(notif: Notif)

enum Means {
	BOOTLEGGING,
	INDUSTRY,
}

var money: int = 0
var means: Means

@onready var money_display: Label = $MoneyDisplay


func _ready() -> void:
	for income_component in get_tree().get_nodes_in_group("income"):
		income_component.bank = self
	
	money_display.text = "Money: %d" % money


func initialize(how: Means) -> void:
	means = how


func add_money(amount: int) -> void:
	money += amount
	money_display.text = "Money: %d" % money
	
	if money > 5:
		notif_request.emit(Notif.new(Notif.NotifType.MONEY, "Too much!"))


func take_money(amount: int) -> void:
	money -= amount
	money_display.text = "Money: %d" % money
