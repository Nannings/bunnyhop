extends Node2D

var timeout = false

func _process(delta):
	if $Sprite/RayCast2D.is_colliding():
		fire()

func fire():
	if not timeout:
		$Sprite/RayCast2D.add_child(load(Global.Lightning).instance())
		timeout = true
		$Sprite/Timer.start()
	pass

func _on_Timer_timeout():
	timeout = false
