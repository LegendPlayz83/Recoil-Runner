class_name GameArt
extends RefCounted

const DIR := "res://assets/sprites/"
const EXTENSIONS := ["png", "webp", "jpg"]

const BACKGROUND := "background"   
const ROCK := "rock"               
const SPIKE := "spike"             
const PLAYER := "player"          

const ROCK_REGION := Rect2i(0, 0, 0, 0)
const SPIKE_REGION := Rect2i(0, 0, 0, 0)
const PLAYER_REGION := Rect2i(0, 0, 32, 32)  
const PLAYER_SCALE := 2.0                      
const PLAYER_FEET_Y := 23.0                    

const BG_LAYERS := [["bg_sky", 0.0], ["bg_far", 0.08], ["bg_clouds", 0.2], ["bg_near", 0.4]]
const VIEW_H := 720.0                          

const BACKGROUND_DIM := 0.55                   

static var _cache: Dictionary = {}

static func get_tex(tex_name: String) -> Texture2D:
	if _cache.has(tex_name):
		return _cache[tex_name]
	var found: Texture2D = null
	for ext in EXTENSIONS:
		var path: String = DIR + tex_name + "." + ext
		if ResourceLoader.exists(path):
			var res: Resource = load(path)
			if res is Texture2D:
				found = res
				break
	_cache[tex_name] = found
	return found

static func region(tex: Texture2D, r: Rect2i) -> Rect2:
	if r.size == Vector2i.ZERO:
		return Rect2(Vector2.ZERO, tex.get_size())
	return Rect2(r)
