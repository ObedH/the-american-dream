class_name NotifBubble
extends HBoxContainer

const HOME_ICON = preload("uid://dnej8ano32u0d")
const MONEY_ICON = preload("uid://dr41qo01cmx8s")
const RELA_ICON = preload("uid://3e8rhlbun1sc")

var notif_meta: Notif

@onready var icon: TextureRect = $Icon
@onready var message: Label = $Message


func _ready() -> void:
	if notif_meta == null:
		push_warning("No notif meta!")
		return
	
	match notif_meta.notif_type:
		Notif.NotifType.MONEY:
			icon.texture = MONEY_ICON
		Notif.NotifType.HOME:
			icon.texture = HOME_ICON
		Notif.NotifType.RELA:
			icon.texture = RELA_ICON
	
	message.text = notif_meta.message

func make(notif: Notif) -> void:
	notif_meta = notif
