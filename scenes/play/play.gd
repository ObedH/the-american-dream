class_name Play
extends Control

@onready var money: Money = $TabContainer/Money
@onready var relas: Relationships = $TabContainer/Relationships
@onready var family: Family = $TabContainer/Family


func _ready() -> void:
	pass


func initialize() -> void:
	money.initialize()
	relas.initialize()
	family.initialize()
