require './monster'

def fight(player, mob)
	@mob = Monster.new(mob)

	puts player.name + " is fighting a level " + @mob.level.to_s + " " + @mob.name + "!"

end
