select game_id, game_name, publisher_id, publisher_name, 
		platform_id, platform_name, genre_id, genre_name, 
		game_publisher_id, game_platform_id, region_id, 
		region_name, release_year, num_sales as sales
from region_sales
join game_platform 
	on region_sales.game_platform_id = game_platform.id
join region 
	on region_sales.region_id = region.id
join game_publisher 
	on game_platform.game_publisher_id = game_publisher.id
join game 
	on game_publisher.game_id = game.id
join publisher 
	on game_publisher.publisher_id = publisher.id
join platform 
	on game_platform.platform_id = platform.id
join genre 
	on game.genre_id = genre.id