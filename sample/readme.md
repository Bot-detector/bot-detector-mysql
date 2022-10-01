# data documentation
the csv file is a query from a few (semi) normalized tables in the database to make data exploration easier.

## data gathering
This topic explains where the data is coming from.

### player information:
- sources:
    - Plugin
        - name
        - created_at
    - Scraper
        - updated_at
        - possible_ban
        - confirmed_ban
        - account_status
    - Manual
        - label_id
        - label

### High scores:
- sources:
    - Scraper

## player data:
The types & desciption of the player data

name:
- type: str
- desc: encrypted user name

created_at:
- type: date
- format: dd/mm/yyyy hh:mm:ss
- desc: first time the account was detected in game

updated_at:
- type: date
- format: dd/mm/yyyy hh:mm:ss
- desc: last update to the player record

possible_ban:
- type: bool
- desc: player is no longer on the runescape hiscores, the account is either banned or the user changed name

confirmed_ban:
- type: bool
- desc: the model succesfully predicted the player as a bot and the account_status is banned

label_id:
- type: int
- desc: id of the label

label:
- type: str
- desc: the manually assigned label

account_status:
- type: str
- desc: status of the account

## high score data:
The types & desciption of the high scores data

notes: 
- the hiscore data may contain (-1) values, this means that the user is not on the hiscores for that particular skill, minigame or boss
- the hiscore data may contain NULL values, this is the default, and can occur when a new skill is introduced or no value was given by the scraper
- data is scraped daily from: https://secure.runescape.com/m=hiscore_oldschool

id:
- type: int
- desc: id of the hiscore record

timestamp:
- type: date
- format: dd/mm/yyyy hh:mm:ss
- desc: date when the hiscores were last fetched / updated. (on creation of the dev db, this seems to be set to the same date)

ts_date:
- type: date
- format: dd/mm/yyyy
- desc: date when the hiscores were last fetched / updated. (on creation of the dev db, this seems to be set to the same date)

Player_id:
- type: int
- desc: unique identifier of the player

total:
- type: int
- desc: sum of the hiscores skills, this may be -1 if the user is not on the total high scores

skills:
- type: int
- desc: experience on the hiscores, could also be -1 or NULL (see notes), the maximum value should be 200 million
- columns:
	- attack
	- defence
	- strength
	- hitpoints
	- ranged
	- prayer
	- magic
	- cooking
	- woodcutting
	- fletching
	- fishing
	- firemaking
	- crafting
	- smithing
	- mining
	- herblore
	- agility
	- thieving
	- slayer
	- farming
	- runecraft
	- hunter
	- construction

minigames:
- type: int
- desc: minigames on the hiscores, could also be -1 or NULL (see notes), some minigames have requirements, which can be found on: https://oldschool.runescape.wiki/
- columns:
	- league
	- bounty_hunter_hunter
	- bounty_hunter_rogue
	- cs_all
	- cs_beginner
	- cs_easy
	- cs_medium
	- cs_hard
	- cs_elite
	- cs_master
	- lms_rank
	- soul_wars_zeal

bosses:
- type: int
- desc: bosses on the hiscores, could also be -1 or NULL (see notes), some bosses have requirements, which can be found on: https://oldschool.runescape.wiki/
- columns: 
	- abyssal_sire
	- alchemical_hydra
	- barrows_chests
	- bryophyta
	- callisto
	- cerberus
	- chambers_of_xeric
	- chambers_of_xeric_challenge_mode
	- chaos_elemental
	- chaos_fanatic
	- commander_zilyana
	- corporeal_beast
	- crazy_archaeologist
	- dagannoth_prime
	- dagannoth_rex
	- dagannoth_supreme
	- deranged_archaeologist
	- general_graardor
	- giant_mole
	- grotesque_guardians
	- hespori
	- kalphite_queen
	- king_black_dragon
	- kraken
	- kreearra
	- kril_tsutsaroth
	- mimic
	- nex
	- nightmare
	- phosanis_nightmare
	- obor
	- sarachnis
	- scorpia
	- skotizo
	- Tempoross
	- the_gauntlet
	- the_corrupted_gauntlet
	- theatre_of_blood
	- theatre_of_blood_hard
	- thermonuclear_smoke_devil
	- tombs_of_amascut
	- tombs_of_amascut_expert
	- tzkal_zuk
	- tztok_jad
	- venenatis
	- vetion
	- vorkath
	- wintertodt
	- zalcano
	- zulrah

# How to get this data from the database

```sql
select
    pl.name, 
    pl.created_at, 
    pl.updated_at, 
    pl.possible_ban, 
    pl.confirmed_ban, 
    pl.label_id, 
    lb.label,
    case 
        when label_jagex = 2 then "banned"
        else null
    end as account_status,
    phd.*
from Players pl 
join playerHiscoreDataLatest phd on pl.id = phd.Player_id
join Labels lb on pl.label_id = lb.id
limit 100000000
```