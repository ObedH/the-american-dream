class_name NotifBubble
extends HBoxContainer

const HOME_ICON = preload("uid://dnej8ano32u0d")
const MONEY_ICON = preload("uid://dr41qo01cmx8s")
const RELA_ICON = preload("uid://3e8rhlbun1sc")

var notif_data: NotifData

@onready var icon: TextureRect = $Icon
@onready var message: Label = $Message


func _ready() -> void:
	if not notif_data:
		push_warning("No notif data!")
		return
	
	match notif_data.notif_type:
		NotifData.NotifType.MONEY:
			icon.texture = MONEY_ICON
		NotifData.NotifType.HOME:
			icon.texture = HOME_ICON
		NotifData.NotifType.RELA:
			icon.texture = RELA_ICON
	
	message.text = notif_data.message

func make(data: NotifData) -> void:
	notif_data = data
