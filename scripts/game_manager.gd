extends Node

var recoil_strength: float = 540.0     
var recoil_multiplier: float = 1.0      
var gravity: float = 1200.0
var fall_gravity_mult: float = 1.15     
var max_speed: float = 900.0
var shoot_cooldown: float = 0.16        
var ground_friction: float = 3000.0
var air_drag: float = 40.0
var air_control: float = 1.0            
var max_ammo: int = 6
var reload_delay: float = 0.15

var shake_multiplier: float = 1.0

var hardcore: bool = false
var current_level: int = 0
var total_deaths: int = 0
var total_time: float = 0.0

func reset_run() -> void:
	current_level = 0
	total_deaths = 0
	total_time = 0.0
