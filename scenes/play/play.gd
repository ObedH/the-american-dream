class_name Play
extends Control

const NOTIF_BUBBLE = preload("res://scenes/play/notifs_panel/notif/notif_bubble.tscn")

@onready var money: Money = $TabContainer/Money
@onready var relas: Relationships = $TabContainer/Relationships
@onready var family: Family = $TabContainer/Family
@onready var notifs_panel: NotifsPanel = $NotifsPanel


func _ready() -> void:
	money.notif_request.connect(_on_money_notif)
	relas.notif_request.connect(_on_relas_notif)
	family.notif_request.connect(_on_family_notif)


func initialize() -> void:
	money.initialize()
	relas.initialize()
	family.initialize()


func _on_money_notif(notif: Notif) -> void:
	var bubble: NotifBubble = NOTIF_BUBBLE.instantiate()
	bubble.make(notif)
	notifs_panel.add_child(bubble)


func _on_relas_notif(notif: Notif) -> void:
	var bubble: NotifBubble = NOTIF_BUBBLE.instantiate()
	bubble.make(notif)
	notifs_panel.add_child(bubble)


func _on_family_notif(notif: Notif) -> void:
	var bubble: NotifBubble = NOTIF_BUBBLE.instantiate()
	bubble.make(notif)
	notifs_panel.add_child(bubble)
