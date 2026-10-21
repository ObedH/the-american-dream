class_name Play
extends Control

const NOTIF_BUBBLE = preload("res://scenes/play/notifs_panel/notif/notif_bubble.tscn")

@onready var money: Money = $TabContainer/Money
@onready var relas: Relationships = $TabContainer/Relationships
@onready var family: Family = $TabContainer/Family
@onready var notifs_panel: NotifsPanel = $NotifsPanel


func _ready() -> void:
	money.notif_request.connect(add_notif)
	relas.notif_request.connect(add_notif)
	family.notif_request.connect(add_notif)


func initialize() -> void:
	money.initialize(Money.Means.INDUSTRY)
	relas.initialize()
	family.initialize()


func add_notif(data: NotifData) -> void:
	var bubble: NotifBubble = NOTIF_BUBBLE.instantiate()
	notifs_panel.add_child(bubble)
	if not bubble.is_node_ready():
		await bubble.ready
	bubble.make(data)
