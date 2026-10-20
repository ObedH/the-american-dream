class_name IncomeComponent
extends Node

@export var rate: int

var bank: Money


func produce() -> void:
	bank.add_money(rate)
