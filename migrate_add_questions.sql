-- Migration: Add all expanded questions to game_questions table.
-- Run this in Supabase SQL Editor to populate the DB with the full question pool.
-- This adds all questions from gameData.js that were not in the original seed.

-- ============================================================================
-- ANAGRAM RUSH (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'easy', '{"word": "LAMP", "hint": "Gives off light"}'),
('anagram', 'easy', '{"word": "RAIN", "hint": "Falls from clouds"}'),
('anagram', 'easy', '{"word": "WOLF", "hint": "Howls at the moon"}'),
('anagram', 'easy', '{"word": "GOLD", "hint": "Precious yellow metal"}'),
('anagram', 'easy', '{"word": "LION", "hint": "King of the jungle"}'),
('anagram', 'easy', '{"word": "RING", "hint": "Worn on a finger"}'),
('anagram', 'easy', '{"word": "FROG", "hint": "Amphibian that ribbits"}'),
('anagram', 'easy', '{"word": "SHIP", "hint": "Sails on the sea"}'),
('anagram', 'easy', '{"word": "DRUM", "hint": "Musical instrument you hit"}'),
('anagram', 'easy', '{"word": "NEST", "hint": "Where birds live"}'),
('anagram', 'easy', '{"word": "KING", "hint": "Male ruler"}'),
('anagram', 'easy', '{"word": "DESK", "hint": "You work at it"}'),
('anagram', 'easy', '{"word": "MILK", "hint": "White drink from cows"}'),
('anagram', 'easy', '{"word": "CORN", "hint": "Yellow vegetable on a cob"}'),
('anagram', 'easy', '{"word": "BELL", "hint": "It rings"}'),
('anagram', 'easy', '{"word": "DUCK", "hint": "Bird that quacks"}'),
('anagram', 'easy', '{"word": "BONE", "hint": "Part of a skeleton"}'),
('anagram', 'easy', '{"word": "ROPE", "hint": "Used for tying things"}'),
('anagram', 'easy', '{"word": "SEED", "hint": "Grows into a plant"}'),
('anagram', 'easy', '{"word": "WAVE", "hint": "Found in the ocean"}'),
('anagram', 'easy', '{"word": "PAWN", "hint": "Chess piece"}'),
('anagram', 'easy', '{"word": "MAZE", "hint": "Puzzle of passages"}'),
('anagram', 'easy', '{"word": "VINE", "hint": "Climbing plant"}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'medium', '{"word": "SNAKE", "hint": "Slithering reptile"}'),
('anagram', 'medium', '{"word": "PIANO", "hint": "Keyboard instrument"}'),
('anagram', 'medium', '{"word": "GRAPE", "hint": "Used to make wine"}'),
('anagram', 'medium', '{"word": "CHAIR", "hint": "You sit on it"}'),
('anagram', 'medium', '{"word": "TIGER", "hint": "Striped big cat"}'),
('anagram', 'medium', '{"word": "SUGAR", "hint": "Sweet white crystals"}'),
('anagram', 'medium', '{"word": "TRAIN", "hint": "Runs on tracks"}'),
('anagram', 'medium', '{"word": "LEMON", "hint": "Sour yellow fruit"}'),
('anagram', 'medium', '{"word": "STORM", "hint": "Bad weather event"}'),
('anagram', 'medium', '{"word": "PAINT", "hint": "Used to color walls"}'),
('anagram', 'medium', '{"word": "CROWN", "hint": "Worn by royalty"}'),
('anagram', 'medium', '{"word": "PLANT", "hint": "Grows in soil"}'),
('anagram', 'medium', '{"word": "RIVER", "hint": "Flowing body of water"}'),
('anagram', 'medium', '{"word": "STONE", "hint": "Hard piece of rock"}'),
('anagram', 'medium', '{"word": "MEDAL", "hint": "Award for winning"}'),
('anagram', 'medium', '{"word": "TOWER", "hint": "Tall structure"}'),
('anagram', 'medium', '{"word": "OCEAN", "hint": "Vast body of salt water"}'),
('anagram', 'medium', '{"word": "CHEST", "hint": "Treasure container"}'),
('anagram', 'medium', '{"word": "SWORD", "hint": "Medieval weapon"}'),
('anagram', 'medium', '{"word": "PEARL", "hint": "Found inside an oyster"}'),
('anagram', 'medium', '{"word": "GLOBE", "hint": "Model of Earth"}'),
('anagram', 'medium', '{"word": "FORGE", "hint": "Where metal is shaped"}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'hard', '{"word": "VOLCANO", "hint": "Erupts with lava"}'),
('anagram', 'hard', '{"word": "HARVEST", "hint": "Gathering crops"}'),
('anagram', 'hard', '{"word": "WHISPER", "hint": "Speaking very softly"}'),
('anagram', 'hard', '{"word": "BLANKET", "hint": "Keeps you warm in bed"}'),
('anagram', 'hard', '{"word": "CHIMNEY", "hint": "Santa goes down it"}'),
('anagram', 'hard', '{"word": "PENGUIN", "hint": "Flightless bird in tuxedo"}'),
('anagram', 'hard', '{"word": "SHELTER", "hint": "Protection from weather"}'),
('anagram', 'hard', '{"word": "COMPASS", "hint": "Shows direction"}'),
('anagram', 'hard', '{"word": "LANTERN", "hint": "Portable light source"}'),
('anagram', 'hard', '{"word": "FEATHER", "hint": "Light thing from a bird"}'),
('anagram', 'hard', '{"word": "PICTURE", "hint": "Worth a thousand words"}'),
('anagram', 'hard', '{"word": "RAINBOW", "hint": "Colorful arc in the sky"}'),
('anagram', 'hard', '{"word": "MONSTER", "hint": "Scary creature"}'),
('anagram', 'hard', '{"word": "CHICKEN", "hint": "Common farm bird"}'),
('anagram', 'hard', '{"word": "FACTORY", "hint": "Where goods are made"}'),
('anagram', 'hard', '{"word": "LIBRARY", "hint": "Place full of books"}'),
('anagram', 'hard', '{"word": "DENTIST", "hint": "Takes care of teeth"}'),
('anagram', 'hard', '{"word": "WEATHER", "hint": "Rain, sun, or snow"}'),
('anagram', 'hard', '{"word": "KINGDOM", "hint": "Ruled by a king"}'),
('anagram', 'hard', '{"word": "TRUMPET", "hint": "Brass instrument"}'),
('anagram', 'hard', '{"word": "WARRIOR", "hint": "Ancient fighter"}'),
('anagram', 'hard', '{"word": "ECLIPSE", "hint": "When the Moon blocks the Sun"}');

-- ============================================================================
-- EMOJI DECODE (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'easy', '{"emojis": "\ud83c\udfe0\ud83d\udd11", "answer": "HOME", "choices": ["HOME", "LOCK", "DOOR", "SAFE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\ude97\ud83d\udca8", "answer": "FAST CAR", "choices": ["FAST CAR", "RACING", "DRIVING", "EXHAUST"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udcda\ud83e\udd13", "answer": "STUDYING", "choices": ["STUDYING", "READING", "LIBRARY", "NERD"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf84\ud83c\udf81", "answer": "CHRISTMAS", "choices": ["CHRISTMAS", "BIRTHDAY", "HOLIDAY", "WINTER"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf08\u2601\ufe0f", "answer": "RAINBOW", "choices": ["RAINBOW", "WEATHER", "SKY", "COLORFUL"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf4e\ud83d\udcd6", "answer": "TEACHER", "choices": ["TEACHER", "STUDENT", "SCHOOL", "APPLE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udecf\ufe0f\u23f0", "answer": "WAKE UP", "choices": ["WAKE UP", "ALARM", "MORNING", "SNOOZE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udc31\ud83e\uddf6", "answer": "KITTEN", "choices": ["KITTEN", "KNITTING", "CAT TOY", "PLAY"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf83\ud83d\udc7b", "answer": "HALLOWEEN", "choices": ["HALLOWEEN", "SCARY", "GHOST", "PUMPKIN"]}'),
('emojidecode', 'easy', '{"emojis": "\u2708\ufe0f\ud83c\udf34", "answer": "VACATION", "choices": ["VACATION", "TRAVEL", "FLIGHT", "ISLAND"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf66\ud83d\udd25", "answer": "MELTING", "choices": ["MELTING", "HOT DAY", "ICE CREAM", "SUMMER"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udc76\ud83c\udf7c", "answer": "BABY", "choices": ["BABY", "FEEDING", "MOTHER", "CHILD"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udfae\ud83d\udd79\ufe0f", "answer": "VIDEO GAME", "choices": ["VIDEO GAME", "ARCADE", "PLAY", "CONSOLE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf3b\u2600\ufe0f", "answer": "SUNFLOWER", "choices": ["SUNFLOWER", "GARDEN", "SUMMER", "PLANT"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udfb5\ud83c\udfa4", "answer": "SINGING", "choices": ["SINGING", "KARAOKE", "CONCERT", "VOICE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf69\u2615", "answer": "BREAKFAST", "choices": ["BREAKFAST", "SNACK", "LUNCH", "DESSERT"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf92\ud83d\udcda", "answer": "SCHOOL", "choices": ["SCHOOL", "LIBRARY", "OFFICE", "TRAVEL"]}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'medium', '{"emojis": "\ud83e\uddf6\ud83d\udd25", "answer": "OPPOSITES", "choices": ["OPPOSITES", "MELTING", "CONTRAST", "ELEMENTS"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfaf\ud83c\udff9", "answer": "ARCHERY", "choices": ["ARCHERY", "TARGET", "HUNTING", "BULLSEYE"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83e\uddea\ud83d\udca5", "answer": "EXPERIMENT", "choices": ["EXPERIMENT", "EXPLOSION", "CHEMISTRY", "REACTION"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udff4\u200d\u2620\ufe0f\u2693", "answer": "PIRATE", "choices": ["PIRATE", "SAILOR", "NAVY", "SHIP"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf19\ud83d\udc3a", "answer": "WEREWOLF", "choices": ["WEREWOLF", "WOLF", "NIGHT HUNT", "HOWLING"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfaa\ud83e\udd21", "answer": "CIRCUS", "choices": ["CIRCUS", "COMEDY", "CARNIVAL", "SHOW"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83d\udd2e\u2728", "answer": "MAGIC", "choices": ["MAGIC", "FORTUNE", "CRYSTAL", "PREDICT"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfcb\ufe0f\ud83d\udcaa", "answer": "WORKOUT", "choices": ["WORKOUT", "STRENGTH", "GYM", "MUSCLE"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfac\ud83c\udf7f", "answer": "MOVIE NIGHT", "choices": ["MOVIE NIGHT", "CINEMA", "FILM", "POPCORN"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83d\uddfa\ufe0f\ud83e\udded", "answer": "NAVIGATION", "choices": ["NAVIGATION", "EXPLORE", "MAP", "TRAVEL"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfb8\u26a1", "answer": "ROCK MUSIC", "choices": ["ROCK MUSIC", "ELECTRIC", "CONCERT", "GUITAR"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83e\udd87\ud83c\udf19", "answer": "BATMAN", "choices": ["BATMAN", "VAMPIRE", "NIGHT", "CAVE"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83e\uddf2\u26a1", "answer": "MAGNETISM", "choices": ["MAGNETISM", "ELECTRIC", "FORCE", "POWER"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfad\ud83d\udde1\ufe0f", "answer": "TRAGEDY", "choices": ["TRAGEDY", "DRAMA", "FIGHTING", "PLAY"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf2a\ufe0f\ud83c\udfe0", "answer": "TORNADO", "choices": ["TORNADO", "HURRICANE", "WIZARD OF OZ", "STORM"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udff0\ud83d\udc78", "answer": "FAIRY TALE", "choices": ["FAIRY TALE", "HISTORY", "CASTLE", "PRINCESS"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83d\udd25\u2744\ufe0f", "answer": "CONTRAST", "choices": ["CONTRAST", "SEASONS", "WEATHER", "ELEMENTS"]}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'hard', '{"emojis": "\ud83c\udfdb\ufe0f\u2696\ufe0f", "answer": "DEMOCRACY", "choices": ["DEMOCRACY", "GOVERNMENT", "COURT", "PARLIAMENT"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83e\uddf6\ud83c\udf21\ufe0f", "answer": "ABSOLUTE ZERO", "choices": ["ABSOLUTE ZERO", "FREEZING", "ICE AGE", "COLD SNAP"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udfad\ud83d\udd2a", "answer": "MURDER MYSTERY", "choices": ["MURDER MYSTERY", "THRILLER", "HORROR", "CRIME"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83e\udde0\ud83d\udd17", "answer": "MIND LINK", "choices": ["MIND LINK", "TELEPATHY", "BRAIN CHAIN", "THOUGHT"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\udd70\ufe0f\ud83d\udd19", "answer": "TIME TRAVEL", "choices": ["TIME TRAVEL", "HISTORY", "REWIND", "PAST"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udff4\u200d\u2620\ufe0f\ud83d\uddfa\ufe0f", "answer": "TREASURE HUNT", "choices": ["TREASURE HUNT", "PIRATE MAP", "ADVENTURE", "EXPLORE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf0a\ud83e\uddf6", "answer": "GLACIER", "choices": ["GLACIER", "ICEBERG", "FROZEN SEA", "ARCTIC"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udfb5\ud83e\uddee", "answer": "ALGORITHM", "choices": ["ALGORITHM", "MATH MUSIC", "PATTERN", "SEQUENCE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\udd73\ufe0f\u2b50", "answer": "BLACK HOLE", "choices": ["BLACK HOLE", "DARK STAR", "SPACE", "VOID"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83e\uddec\ud83e\udd8e", "answer": "EVOLUTION", "choices": ["EVOLUTION", "MUTATION", "GENETICS", "ADAPTATION"]}'),
('emojidecode', 'hard', '{"emojis": "\u2697\ufe0f\ud83e\uddea", "answer": "ALCHEMY", "choices": ["ALCHEMY", "CHEMISTRY", "POTION", "SCIENCE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf00\ud83e\udde0", "answer": "HYPNOSIS", "choices": ["HYPNOSIS", "DIZZY", "MIND CONTROL", "TRANCE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\uddff\ud83c\udfdd\ufe0f", "answer": "EASTER ISLAND", "choices": ["EASTER ISLAND", "MONUMENT", "ANCIENT", "STATUE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\udcca\ud83d\udcc8", "answer": "STOCK MARKET", "choices": ["STOCK MARKET", "STATISTICS", "GROWTH", "ECONOMY"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udfad\ud83c\udfaa", "answer": "PERFORMANCE ART", "choices": ["PERFORMANCE ART", "CARNIVAL", "SHOW", "THEATER"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83e\uddea\ud83e\uddec", "answer": "BIOTECHNOLOGY", "choices": ["BIOTECHNOLOGY", "CHEMISTRY", "MEDICINE", "GENETICS"]}'),
('emojidecode', 'hard', '{"emojis": "\u2699\ufe0f\ud83e\udd16", "answer": "AUTOMATION", "choices": ["AUTOMATION", "ROBOTICS", "ENGINEERING", "FACTORY"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf0d\ud83d\udd25", "answer": "GLOBAL WARMING", "choices": ["GLOBAL WARMING", "VOLCANO", "WILDFIRE", "CLIMATE"]}');

-- ============================================================================
-- NUMBER SEQUENCE (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'easy', '{"sequence": "4, 8, 12, ?, 20", "answer": 16, "choices": [14, 15, 16, 18]}'),
('numbersequence', 'easy', '{"sequence": "6, 12, 18, 24, ?", "answer": 30, "choices": [28, 30, 32, 36]}'),
('numbersequence', 'easy', '{"sequence": "20, 18, 16, 14, ?", "answer": 12, "choices": [10, 11, 12, 13]}'),
('numbersequence', 'easy', '{"sequence": "1, 4, 7, 10, ?", "answer": 13, "choices": [11, 12, 13, 14]}'),
('numbersequence', 'easy', '{"sequence": "25, 20, 15, 10, ?", "answer": 5, "choices": [3, 4, 5, 6]}'),
('numbersequence', 'easy', '{"sequence": "10, 20, 30, ?, 50", "answer": 40, "choices": [35, 38, 40, 45]}'),
('numbersequence', 'easy', '{"sequence": "2, 5, 8, 11, ?", "answer": 14, "choices": [12, 13, 14, 15]}'),
('numbersequence', 'easy', '{"sequence": "9, 18, 27, ?, 45", "answer": 36, "choices": [33, 34, 36, 38]}'),
('numbersequence', 'easy', '{"sequence": "11, 22, 33, 44, ?", "answer": 55, "choices": [50, 54, 55, 66]}'),
('numbersequence', 'easy', '{"sequence": "15, 12, 9, 6, ?", "answer": 3, "choices": [1, 2, 3, 4]}'),
('numbersequence', 'easy', '{"sequence": "1, 10, 100, ?, 10000", "answer": 1000, "choices": [500, 800, 1000, 1500]}'),
('numbersequence', 'easy', '{"sequence": "8, 16, 24, 32, ?", "answer": 40, "choices": [36, 38, 40, 42]}'),
('numbersequence', 'easy', '{"sequence": "30, 25, 20, 15, ?", "answer": 10, "choices": [5, 8, 10, 12]}'),
('numbersequence', 'easy', '{"sequence": "3, 9, 27, ?, 243", "answer": 81, "choices": [54, 72, 81, 90]}'),
('numbersequence', 'easy', '{"sequence": "12, 24, 36, ?, 60", "answer": 48, "choices": [42, 44, 48, 50]}'),
('numbersequence', 'easy', '{"sequence": "5, 15, 25, 35, ?", "answer": 45, "choices": [40, 42, 45, 50]}'),
('numbersequence', 'easy', '{"sequence": "100, 80, 60, 40, ?", "answer": 20, "choices": [10, 15, 20, 25]}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'medium', '{"sequence": "1, 3, 6, 10, ?", "answer": 15, "choices": [12, 13, 15, 16]}'),
('numbersequence', 'medium', '{"sequence": "2, 4, 8, 16, ?", "answer": 32, "choices": [24, 28, 32, 36]}'),
('numbersequence', 'medium', '{"sequence": "5, 11, 23, 47, ?", "answer": 95, "choices": [85, 90, 94, 95]}'),
('numbersequence', 'medium', '{"sequence": "1, 2, 4, 7, 11, ?", "answer": 16, "choices": [14, 15, 16, 18]}'),
('numbersequence', 'medium', '{"sequence": "81, 27, 9, 3, ?", "answer": 1, "choices": [0, 1, 2, 3]}'),
('numbersequence', 'medium', '{"sequence": "0, 1, 3, 6, 10, ?", "answer": 15, "choices": [13, 14, 15, 16]}'),
('numbersequence', 'medium', '{"sequence": "1, 5, 13, 29, ?", "answer": 61, "choices": [45, 53, 57, 61]}'),
('numbersequence', 'medium', '{"sequence": "256, 128, 64, 32, ?", "answer": 16, "choices": [8, 12, 16, 24]}'),
('numbersequence', 'medium', '{"sequence": "2, 6, 12, 20, ?", "answer": 30, "choices": [26, 28, 30, 32]}'),
('numbersequence', 'medium', '{"sequence": "3, 4, 6, 9, 13, ?", "answer": 18, "choices": [16, 17, 18, 19]}'),
('numbersequence', 'medium', '{"sequence": "10, 13, 17, 22, ?", "answer": 28, "choices": [26, 27, 28, 30]}'),
('numbersequence', 'medium', '{"sequence": "1, 4, 10, 20, ?", "answer": 35, "choices": [28, 30, 35, 40]}'),
('numbersequence', 'medium', '{"sequence": "100, 81, 64, 49, ?", "answer": 36, "choices": [25, 30, 36, 40]}'),
('numbersequence', 'medium', '{"sequence": "7, 11, 16, 22, ?", "answer": 29, "choices": [27, 28, 29, 30]}'),
('numbersequence', 'medium', '{"sequence": "1, 2, 3, 5, 8, ?", "answer": 13, "choices": [10, 11, 12, 13]}'),
('numbersequence', 'medium', '{"sequence": "3, 7, 13, 21, ?", "answer": 31, "choices": [27, 29, 31, 33]}'),
('numbersequence', 'medium', '{"sequence": "5, 8, 13, 20, ?", "answer": 29, "choices": [25, 27, 29, 32]}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'hard', '{"sequence": "1, 3, 9, 27, 81, ?", "answer": 243, "choices": [162, 200, 243, 270]}'),
('numbersequence', 'hard', '{"sequence": "4, 9, 16, 25, 36, ?", "answer": 49, "choices": [42, 44, 49, 52]}'),
('numbersequence', 'hard', '{"sequence": "1, 2, 5, 14, 42, ?", "answer": 132, "choices": [84, 100, 126, 132]}'),
('numbersequence', 'hard', '{"sequence": "2, 6, 14, 30, 62, ?", "answer": 126, "choices": [110, 118, 124, 126]}'),
('numbersequence', 'hard', '{"sequence": "1, 4, 11, 26, ?", "answer": 57, "choices": [42, 50, 57, 64]}'),
('numbersequence', 'hard', '{"sequence": "5, 10, 20, 40, 80, ?", "answer": 160, "choices": [120, 140, 150, 160]}'),
('numbersequence', 'hard', '{"sequence": "1, 1, 2, 6, 24, 120, ?", "answer": 720, "choices": [360, 480, 600, 720]}'),
('numbersequence', 'hard', '{"sequence": "2, 8, 26, 80, ?", "answer": 242, "choices": [160, 200, 240, 242]}'),
('numbersequence', 'hard', '{"sequence": "1, 5, 12, 22, 35, ?", "answer": 51, "choices": [45, 48, 51, 55]}'),
('numbersequence', 'hard', '{"sequence": "3, 10, 29, 84, ?", "answer": 245, "choices": [168, 200, 245, 252]}'),
('numbersequence', 'hard', '{"sequence": "1, 6, 15, 28, 45, ?", "answer": 66, "choices": [56, 60, 63, 66]}'),
('numbersequence', 'hard', '{"sequence": "0, 2, 8, 18, 32, ?", "answer": 50, "choices": [42, 46, 48, 50]}'),
('numbersequence', 'hard', '{"sequence": "1, 3, 8, 21, 55, ?", "answer": 144, "choices": [89, 110, 133, 144]}'),
('numbersequence', 'hard', '{"sequence": "4, 12, 24, 40, 60, ?", "answer": 84, "choices": [72, 78, 80, 84]}'),
('numbersequence', 'hard', '{"sequence": "7, 15, 31, 63, ?", "answer": 127, "choices": [95, 110, 126, 127]}'),
('numbersequence', 'hard', '{"sequence": "2, 9, 28, 65, ?", "answer": 126, "choices": [100, 110, 126, 130]}'),
('numbersequence', 'hard', '{"sequence": "1, 4, 27, 256, ?", "answer": 3125, "choices": [1024, 2048, 3125, 4096]}'),
('numbersequence', 'hard', '{"sequence": "3, 11, 31, 69, ?", "answer": 131, "choices": [100, 120, 131, 140]}');

-- ============================================================================
-- WORD ASSOCIATION (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'easy', '{"word": "SNOW", "choices": ["Cold", "Fire", "Sand", "Grass"], "answer": "Cold"}'),
('wordassociation', 'easy', '{"word": "FLOWER", "choices": ["Petal", "Wheel", "Hammer", "Screen"], "answer": "Petal"}'),
('wordassociation', 'easy', '{"word": "FOOTBALL", "choices": ["Goal", "Canvas", "Oven", "Pen"], "answer": "Goal"}'),
('wordassociation', 'easy', '{"word": "DOCTOR", "choices": ["Medicine", "Hammer", "Brick", "Paint"], "answer": "Medicine"}'),
('wordassociation', 'easy', '{"word": "BABY", "choices": ["Cradle", "Desk", "Engine", "Sword"], "answer": "Cradle"}'),
('wordassociation', 'easy', '{"word": "PEN", "choices": ["Ink", "Flame", "Soil", "Wire"], "answer": "Ink"}'),
('wordassociation', 'easy', '{"word": "DOG", "choices": ["Bone", "Feather", "Leaf", "Shell"], "answer": "Bone"}'),
('wordassociation', 'easy', '{"word": "KITCHEN", "choices": ["Cooking", "Swimming", "Flying", "Climbing"], "answer": "Cooking"}'),
('wordassociation', 'easy', '{"word": "WINTER", "choices": ["Ice", "Cactus", "Desert", "Volcano"], "answer": "Ice"}'),
('wordassociation', 'easy', '{"word": "CAMERA", "choices": ["Photo", "Song", "Recipe", "Map"], "answer": "Photo"}'),
('wordassociation', 'easy', '{"word": "PLANE", "choices": ["Pilot", "Farmer", "Baker", "Plumber"], "answer": "Pilot"}'),
('wordassociation', 'easy', '{"word": "TREE", "choices": ["Roots", "Wheels", "Gears", "Keys"], "answer": "Roots"}'),
('wordassociation', 'easy', '{"word": "CLOCK", "choices": ["Time", "Color", "Weight", "Height"], "answer": "Time"}'),
('wordassociation', 'easy', '{"word": "SHOE", "choices": ["Foot", "Hand", "Head", "Knee"], "answer": "Foot"}'),
('wordassociation', 'easy', '{"word": "TOOTH", "choices": ["Dentist", "Mechanic", "Teacher", "Chef"], "answer": "Dentist"}'),
('wordassociation', 'easy', '{"word": "HAMMER", "choices": ["Nail", "Thread", "Paper", "Ink"], "answer": "Nail"}'),
('wordassociation', 'easy', '{"word": "MOON", "choices": ["Tide", "Wind", "Sand", "Cloud"], "answer": "Tide"}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'medium', '{"word": "GRAVITY", "choices": ["Fall", "Rise", "Fly", "Float"], "answer": "Fall"}'),
('wordassociation', 'medium', '{"word": "DIAMOND", "choices": ["Hardness", "Softness", "Liquid", "Gas"], "answer": "Hardness"}'),
('wordassociation', 'medium', '{"word": "TELESCOPE", "choices": ["Stars", "Soil", "Ocean", "Cave"], "answer": "Stars"}'),
('wordassociation', 'medium', '{"word": "VIRUS", "choices": ["Infection", "Health", "Growth", "Strength"], "answer": "Infection"}'),
('wordassociation', 'medium', '{"word": "COMPASS", "choices": ["Direction", "Speed", "Weight", "Color"], "answer": "Direction"}'),
('wordassociation', 'medium', '{"word": "VOLCANO", "choices": ["Lava", "Water", "Ice", "Wind"], "answer": "Lava"}'),
('wordassociation', 'medium', '{"word": "PAINTING", "choices": ["Canvas", "Stage", "Court", "Field"], "answer": "Canvas"}'),
('wordassociation', 'medium', '{"word": "DEMOCRACY", "choices": ["Vote", "Decree", "Order", "Command"], "answer": "Vote"}'),
('wordassociation', 'medium', '{"word": "PHOTOGRAPH", "choices": ["Memory", "Sound", "Taste", "Scent"], "answer": "Memory"}'),
('wordassociation', 'medium', '{"word": "SKELETON", "choices": ["Bones", "Muscles", "Skin", "Hair"], "answer": "Bones"}'),
('wordassociation', 'medium', '{"word": "PRISON", "choices": ["Bars", "Windows", "Garden", "Pool"], "answer": "Bars"}'),
('wordassociation', 'medium', '{"word": "ORCHESTRA", "choices": ["Symphony", "Painting", "Novel", "Recipe"], "answer": "Symphony"}'),
('wordassociation', 'medium', '{"word": "ROCKET", "choices": ["Launch", "Anchor", "Brake", "Park"], "answer": "Launch"}'),
('wordassociation', 'medium', '{"word": "DETECTIVE", "choices": ["Clue", "Recipe", "Melody", "Formula"], "answer": "Clue"}'),
('wordassociation', 'medium', '{"word": "PYRAMID", "choices": ["Egypt", "France", "Japan", "Brazil"], "answer": "Egypt"}'),
('wordassociation', 'medium', '{"word": "ALGORITHM", "choices": ["Pattern", "Emotion", "Color", "Sound"], "answer": "Pattern"}'),
('wordassociation', 'medium', '{"word": "LIGHTHOUSE", "choices": ["Coast", "Desert", "Forest", "Mountain"], "answer": "Coast"}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'hard', '{"word": "UBIQUITOUS", "choices": ["Rare", "Everywhere", "Hidden", "Lost"], "answer": "Everywhere"}'),
('wordassociation', 'hard', '{"word": "ALTRUISM", "choices": ["Selfishness", "Selflessness", "Greed", "Pride"], "answer": "Selflessness"}'),
('wordassociation', 'hard', '{"word": "PRAGMATIC", "choices": ["Idealistic", "Practical", "Dreamy", "Abstract"], "answer": "Practical"}'),
('wordassociation', 'hard', '{"word": "STOICISM", "choices": ["Emotion", "Endurance", "Weakness", "Chaos"], "answer": "Endurance"}'),
('wordassociation', 'hard', '{"word": "AMBIGUITY", "choices": ["Clarity", "Uncertainty", "Truth", "Fact"], "answer": "Uncertainty"}'),
('wordassociation', 'hard', '{"word": "SYMBIOSIS", "choices": ["Competition", "Mutual Benefit", "Isolation", "Conflict"], "answer": "Mutual Benefit"}'),
('wordassociation', 'hard', '{"word": "NOSTALGIA", "choices": ["Future", "Longing", "Fear", "Anger"], "answer": "Longing"}'),
('wordassociation', 'hard', '{"word": "HEGEMONY", "choices": ["Equality", "Dominance", "Freedom", "Peace"], "answer": "Dominance"}'),
('wordassociation', 'hard', '{"word": "PARADIGM", "choices": ["Chaos", "Framework", "Mystery", "Random"], "answer": "Framework"}'),
('wordassociation', 'hard', '{"word": "RESILIENCE", "choices": ["Fragility", "Bounce Back", "Weakness", "Collapse"], "answer": "Bounce Back"}'),
('wordassociation', 'hard', '{"word": "ZEITGEIST", "choices": ["Spirit of Time", "Old Relic", "Future Tech", "Past Life"], "answer": "Spirit of Time"}'),
('wordassociation', 'hard', '{"word": "COGNITIVE", "choices": ["Physical", "Mental", "Spiritual", "Emotional"], "answer": "Mental"}'),
('wordassociation', 'hard', '{"word": "HYPOTHESIS", "choices": ["Proof", "Theory", "Fact", "Law"], "answer": "Theory"}'),
('wordassociation', 'hard', '{"word": "ENIGMA", "choices": ["Answer", "Puzzle", "Solution", "Key"], "answer": "Puzzle"}'),
('wordassociation', 'hard', '{"word": "METAMORPHOSIS", "choices": ["Stability", "Transformation", "Decay", "Rest"], "answer": "Transformation"}'),
('wordassociation', 'hard', '{"word": "SOLILOQUY", "choices": ["Monologue", "Dialogue", "Chorus", "Whisper"], "answer": "Monologue"}'),
('wordassociation', 'hard', '{"word": "CATHARSIS", "choices": ["Release", "Tension", "Build-up", "Restraint"], "answer": "Release"}'),
('wordassociation', 'hard', '{"word": "PEDAGOGY", "choices": ["Teaching", "Cooking", "Building", "Painting"], "answer": "Teaching"}');

-- ============================================================================
-- TRUE/FALSE BLITZ (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'easy', '{"statement": "The Pacific Ocean is the largest ocean.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Bats are blind.", "answer": false}'),
('truefalse', 'easy', '{"statement": "A group of lions is called a pride.", "answer": true}'),
('truefalse', 'easy', '{"statement": "The human body has 206 bones.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Penguins can fly.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Mars is known as the Red Planet.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Elephants are the largest land animals.", "answer": true}'),
('truefalse', 'easy', '{"statement": "The Nile is the longest river in Asia.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Diamonds are made of carbon.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Whales are fish.", "answer": false}'),
('truefalse', 'easy', '{"statement": "The Great Wall of China is visible from the Moon.", "answer": false}'),
('truefalse', 'easy', '{"statement": "A triangle has three sides.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Ostriches bury their heads in sand.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Venus is the closest planet to the Sun.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Sound travels faster in water than in air.", "answer": true}'),
('truefalse', 'easy', '{"statement": "A caterpillar turns into a butterfly.", "answer": true}'),
('truefalse', 'easy', '{"statement": "The Atlantic Ocean is larger than the Pacific Ocean.", "answer": false}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'medium', '{"statement": "A jiffy is an actual unit of time.", "answer": true}'),
('truefalse', 'medium', '{"statement": "The tongue is the strongest muscle in the body.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Polar bears have black skin under their white fur.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Goldfish can be trained to do tricks.", "answer": true}'),
('truefalse', 'medium', '{"statement": "The largest organ in the human body is the liver.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Strawberries are not actually berries.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Lightning never strikes the same place twice.", "answer": false}'),
('truefalse', 'medium', '{"statement": "A day on Mercury is longer than its year.", "answer": false}'),
('truefalse', 'medium', '{"statement": "An emu cannot walk backwards.", "answer": true}'),
('truefalse', 'medium', '{"statement": "The inventor of the light bulb was Thomas Edison.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Alaska is the westernmost AND easternmost US state.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Human blood is blue inside the body.", "answer": false}'),
('truefalse', 'medium', '{"statement": "A group of crows is called a murder.", "answer": true}'),
('truefalse', 'medium', '{"statement": "The Dead Sea is actually a lake.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Peanuts are actually nuts.", "answer": false}'),
('truefalse', 'medium', '{"statement": "The human nose can detect over 1 trillion scents.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Pluto was discovered in 1930.", "answer": true}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'hard', '{"statement": "There are more trees on Earth than stars in the Milky Way.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Bananas are radioactive.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The speed of light is constant regardless of the observer''s speed.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Time passes faster at the top of a building than at the bottom.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The shortest war in history lasted 38 minutes.", "answer": true}'),
('truefalse', 'hard', '{"statement": "A cockroach can live for weeks without its head.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The human brain uses about 20% of the body''s total energy.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Tardigrades can survive in the vacuum of space.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The universe is about 6,000 years old.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Saturn would float if placed in water.", "answer": true}'),
('truefalse', 'hard', '{"statement": "DNA can be extracted from a strawberry using dish soap and salt.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The Andromeda galaxy is on a collision course with the Milky Way.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Quantum entanglement allows faster-than-light communication.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Chameleons change color primarily for camouflage.", "answer": false}'),
('truefalse', 'hard', '{"statement": "The Great Pyramid of Giza was the tallest structure for over 3,800 years.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Gravitational waves were first directly detected in 2015.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The largest known star by radius is Betelgeuse.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Quantum computers use qubits instead of classical bits.", "answer": true}');

-- ============================================================================
-- ODD ONE OUT (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'easy', '{"options": ["Hammer", "Screwdriver", "Wrench", "Apple"], "answer": "Apple", "hint": "Three are tools"}'),
('oddoneout', 'easy', '{"options": ["Soccer", "Hockey", "Rugby", "Painting"], "answer": "Painting", "hint": "Three are sports"}'),
('oddoneout', 'easy', '{"options": ["Whale", "Shark", "Dolphin", "Eagle"], "answer": "Eagle", "hint": "Three live in the ocean"}'),
('oddoneout', 'easy', '{"options": ["France", "Germany", "Italy", "Africa"], "answer": "Africa", "hint": "Three are European countries"}'),
('oddoneout', 'easy', '{"options": ["Table", "Chair", "Sofa", "Hat"], "answer": "Hat", "hint": "Three are furniture"}'),
('oddoneout', 'easy', '{"options": ["Cake", "Pie", "Cookie", "Steak"], "answer": "Steak", "hint": "Three are desserts"}'),
('oddoneout', 'easy', '{"options": ["Rain", "Snow", "Hail", "Mountain"], "answer": "Mountain", "hint": "Three are types of precipitation"}'),
('oddoneout', 'easy', '{"options": ["Violin", "Flute", "Piano", "Ladder"], "answer": "Ladder", "hint": "Three are musical instruments"}'),
('oddoneout', 'easy', '{"options": ["Spring", "Summer", "Autumn", "Tuesday"], "answer": "Tuesday", "hint": "Three are seasons"}'),
('oddoneout', 'easy', '{"options": ["Circle", "Square", "Triangle", "Purple"], "answer": "Purple", "hint": "Three are shapes"}'),
('oddoneout', 'easy', '{"options": ["Doctor", "Nurse", "Teacher", "Hospital"], "answer": "Hospital", "hint": "Three are professions"}'),
('oddoneout', 'easy', '{"options": ["Jupiter", "Saturn", "Neptune", "Moon"], "answer": "Moon", "hint": "Three are planets"}'),
('oddoneout', 'easy', '{"options": ["Tomato", "Potato", "Carrot", "Chair"], "answer": "Chair", "hint": "Three are vegetables"}'),
('oddoneout', 'easy', '{"options": ["Airplane", "Helicopter", "Drone", "Submarine"], "answer": "Submarine", "hint": "Three fly in the air"}'),
('oddoneout', 'easy', '{"options": ["Coffee", "Tea", "Soda", "Bread"], "answer": "Bread", "hint": "Three are beverages"}'),
('oddoneout', 'easy', '{"options": ["Sparrow", "Robin", "Penguin", "Eagle"], "answer": "Penguin", "hint": "Three can fly"}'),
('oddoneout', 'easy', '{"options": ["Carrot", "Broccoli", "Banana", "Spinach"], "answer": "Banana", "hint": "Three are vegetables"}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'medium', '{"options": ["Parrot", "Penguin", "Eagle", "Cobra"], "answer": "Cobra", "hint": "Three are birds"}'),
('oddoneout', 'medium', '{"options": ["Tsunami", "Earthquake", "Hurricane", "Eclipse"], "answer": "Eclipse", "hint": "Three are natural disasters"}'),
('oddoneout', 'medium', '{"options": ["Euro", "Dollar", "Pound", "Meter"], "answer": "Meter", "hint": "Three are currencies"}'),
('oddoneout', 'medium', '{"options": ["DNA", "RNA", "ATP", "USB"], "answer": "USB", "hint": "Three are biological molecules"}'),
('oddoneout', 'medium', '{"options": ["Shakespeare", "Dickens", "Austen", "Beethoven"], "answer": "Beethoven", "hint": "Three are authors"}'),
('oddoneout', 'medium', '{"options": ["Granite", "Marble", "Limestone", "Cotton"], "answer": "Cotton", "hint": "Three are types of stone"}'),
('oddoneout', 'medium', '{"options": ["Cello", "Harp", "Violin", "Drum"], "answer": "Drum", "hint": "Three are string instruments"}'),
('oddoneout', 'medium', '{"options": ["Radar", "Sonar", "Laser", "Motor"], "answer": "Motor", "hint": "Three are acronyms for detection/light"}'),
('oddoneout', 'medium', '{"options": ["Liver", "Kidney", "Lung", "Femur"], "answer": "Femur", "hint": "Three are internal organs"}'),
('oddoneout', 'medium', '{"options": ["Silk", "Cotton", "Wool", "Glass"], "answer": "Glass", "hint": "Three are fabrics"}'),
('oddoneout', 'medium', '{"options": ["Morse Code", "Binary", "Braille", "Chess"], "answer": "Chess", "hint": "Three are communication codes"}'),
('oddoneout', 'medium', '{"options": ["Plateau", "Valley", "Canyon", "Semester"], "answer": "Semester", "hint": "Three are landforms"}'),
('oddoneout', 'medium', '{"options": ["Copper", "Aluminum", "Iron", "Rubber"], "answer": "Rubber", "hint": "Three are metals"}'),
('oddoneout', 'medium', '{"options": ["Sonata", "Symphony", "Concerto", "Sculpture"], "answer": "Sculpture", "hint": "Three are musical compositions"}'),
('oddoneout', 'medium', '{"options": ["Everest", "K2", "Kilimanjaro", "Amazon"], "answer": "Amazon", "hint": "Three are mountains"}'),
('oddoneout', 'medium', '{"options": ["Electron", "Proton", "Neutron", "Photon"], "answer": "Photon", "hint": "Three are found in an atom"}'),
('oddoneout', 'medium', '{"options": ["Nile", "Amazon", "Rhine", "Sahara"], "answer": "Sahara", "hint": "Three are rivers"}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'hard', '{"options": ["Fermion", "Boson", "Quark", "Prion"], "answer": "Prion", "hint": "Three are types of subatomic particles"}'),
('oddoneout', 'hard', '{"options": ["Cretaceous", "Jurassic", "Triassic", "Baroque"], "answer": "Baroque", "hint": "Three are geological periods"}'),
('oddoneout', 'hard', '{"options": ["Osmosis", "Diffusion", "Filtration", "Combustion"], "answer": "Combustion", "hint": "Three are passive transport processes"}'),
('oddoneout', 'hard', '{"options": ["Acropolis", "Colosseum", "Parthenon", "Pentagon"], "answer": "Pentagon", "hint": "Three are ancient structures"}'),
('oddoneout', 'hard', '{"options": ["Turing", "Babbage", "Lovelace", "Pasteur"], "answer": "Pasteur", "hint": "Three are computing pioneers"}'),
('oddoneout', 'hard', '{"options": ["Haiku", "Sonnet", "Villanelle", "Fugue"], "answer": "Fugue", "hint": "Three are poetry forms"}'),
('oddoneout', 'hard', '{"options": ["Tundra", "Taiga", "Savanna", "Sonata"], "answer": "Sonata", "hint": "Three are biomes"}'),
('oddoneout', 'hard', '{"options": ["Hemoglobin", "Chlorophyll", "Keratin", "Graphite"], "answer": "Graphite", "hint": "Three are biological proteins/pigments"}'),
('oddoneout', 'hard', '{"options": ["Pythagorean", "Euclidean", "Newtonian", "Darwinian"], "answer": "Darwinian", "hint": "Three relate to mathematics/physics"}'),
('oddoneout', 'hard', '{"options": ["Tectonic", "Volcanic", "Seismic", "Melodic"], "answer": "Melodic", "hint": "Three relate to geology"}'),
('oddoneout', 'hard', '{"options": ["Catalyst", "Reagent", "Solvent", "Pixel"], "answer": "Pixel", "hint": "Three are chemistry terms"}'),
('oddoneout', 'hard', '{"options": ["Nebula", "Pulsar", "Quasar", "Sonar"], "answer": "Sonar", "hint": "Three are astronomical objects"}'),
('oddoneout', 'hard', '{"options": ["Permafrost", "Aquifer", "Glacier", "Transistor"], "answer": "Transistor", "hint": "Three are geological features"}'),
('oddoneout', 'hard', '{"options": ["Sputnik", "Apollo", "Voyager", "Titanic"], "answer": "Titanic", "hint": "Three are space missions"}'),
('oddoneout', 'hard', '{"options": ["Mitosis", "Meiosis", "Cytokinesis", "Photovoltaics"], "answer": "Photovoltaics", "hint": "Three are cell division processes"}'),
('oddoneout', 'hard', '{"options": ["Syntax", "Grammar", "Rhetoric", "Algebra"], "answer": "Algebra", "hint": "Three relate to language"}'),
('oddoneout', 'hard', '{"options": ["Monet", "Renoir", "Degas", "Chopin"], "answer": "Chopin", "hint": "Three are Impressionist painters"}'),
('oddoneout', 'hard', '{"options": ["Mitochondria", "Chloroplast", "Lysosome", "Transistor"], "answer": "Transistor", "hint": "Three are cell organelles"}'),
('oddoneout', 'hard', '{"options": ["Sonata", "Fugue", "Overture", "Haiku"], "answer": "Haiku", "hint": "Three are musical forms"}');

-- ============================================================================
-- TRIVIA QUIZ (expanded)
-- ============================================================================

-- Easy (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'easy', '{"question": "What is the capital of Japan?", "answer": "Tokyo", "choices": ["Beijing", "Seoul", "Tokyo", "Bangkok"]}'),
('trivia', 'easy', '{"question": "How many sides does a hexagon have?", "answer": "6", "choices": ["4", "5", "6", "8"]}'),
('trivia', 'easy', '{"question": "What is the largest continent?", "answer": "Asia", "choices": ["Africa", "Asia", "Europe", "North America"]}'),
('trivia', 'easy', '{"question": "What type of animal is a frog?", "answer": "Amphibian", "choices": ["Reptile", "Mammal", "Amphibian", "Fish"]}'),
('trivia', 'easy', '{"question": "Which planet is closest to the Sun?", "answer": "Mercury", "choices": ["Venus", "Mercury", "Earth", "Mars"]}'),
('trivia', 'easy', '{"question": "What is the boiling point of water in Celsius?", "answer": "100", "choices": ["50", "75", "100", "150"]}'),
('trivia', 'easy', '{"question": "How many letters are in the English alphabet?", "answer": "26", "choices": ["24", "25", "26", "28"]}'),
('trivia', 'easy', '{"question": "What is the fastest land animal?", "answer": "Cheetah", "choices": ["Lion", "Cheetah", "Horse", "Gazelle"]}'),
('trivia', 'easy', '{"question": "Which fruit is known as the king of fruits?", "answer": "Mango", "choices": ["Apple", "Banana", "Mango", "Grape"]}'),
('trivia', 'easy', '{"question": "What shape is a stop sign?", "answer": "Octagon", "choices": ["Circle", "Square", "Hexagon", "Octagon"]}'),
('trivia', 'easy', '{"question": "What gas do humans breathe out?", "answer": "Carbon Dioxide", "choices": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]}'),
('trivia', 'easy', '{"question": "How many planets are in our solar system?", "answer": "8", "choices": ["7", "8", "9", "10"]}'),
('trivia', 'easy', '{"question": "What is the opposite of hot?", "answer": "Cold", "choices": ["Warm", "Cool", "Cold", "Mild"]}'),
('trivia', 'easy', '{"question": "Which metal is liquid at room temperature?", "answer": "Mercury", "choices": ["Gold", "Silver", "Mercury", "Iron"]}'),
('trivia', 'easy', '{"question": "What is a baby dog called?", "answer": "Puppy", "choices": ["Kitten", "Cub", "Puppy", "Calf"]}'),
('trivia', 'easy', '{"question": "What is the largest planet in our solar system?", "answer": "Jupiter", "choices": ["Mars", "Jupiter", "Saturn", "Neptune"]}'),
('trivia', 'easy', '{"question": "What color do you get when you mix red and blue?", "answer": "Purple", "choices": ["Green", "Orange", "Purple", "Brown"]}');

-- Medium (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'medium', '{"question": "What is the currency of Japan?", "answer": "Yen", "choices": ["Won", "Yuan", "Yen", "Rupee"]}'),
('trivia', 'medium', '{"question": "Who developed the theory of relativity?", "answer": "Einstein", "choices": ["Newton", "Einstein", "Bohr", "Hawking"]}'),
('trivia', 'medium', '{"question": "What is the chemical formula for table salt?", "answer": "NaCl", "choices": ["NaCl", "KCl", "CaCl2", "NaOH"]}'),
('trivia', 'medium', '{"question": "Which country invented paper?", "answer": "China", "choices": ["Egypt", "China", "India", "Greece"]}'),
('trivia', 'medium', '{"question": "What is the smallest country in the world?", "answer": "Vatican City", "choices": ["Monaco", "Vatican City", "San Marino", "Liechtenstein"]}'),
('trivia', 'medium', '{"question": "How many chromosomes do humans have?", "answer": "46", "choices": ["23", "44", "46", "48"]}'),
('trivia', 'medium', '{"question": "Which organ produces insulin?", "answer": "Pancreas", "choices": ["Liver", "Kidney", "Pancreas", "Stomach"]}'),
('trivia', 'medium', '{"question": "What year did the Berlin Wall fall?", "answer": "1989", "choices": ["1985", "1987", "1989", "1991"]}'),
('trivia', 'medium', '{"question": "What is the most spoken language in the world?", "answer": "Mandarin", "choices": ["English", "Spanish", "Mandarin", "Hindi"]}'),
('trivia', 'medium', '{"question": "Which vitamin is produced by sunlight?", "answer": "Vitamin D", "choices": ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"]}'),
('trivia', 'medium', '{"question": "What is the tallest building in the world?", "answer": "Burj Khalifa", "choices": ["Shanghai Tower", "Burj Khalifa", "One World Trade", "Taipei 101"]}'),
('trivia', 'medium', '{"question": "Which planet is known for its rings?", "answer": "Saturn", "choices": ["Jupiter", "Saturn", "Uranus", "Neptune"]}'),
('trivia', 'medium', '{"question": "What is the atomic number of carbon?", "answer": "6", "choices": ["4", "6", "8", "12"]}'),
('trivia', 'medium', '{"question": "Who wrote 1984?", "answer": "George Orwell", "choices": ["Aldous Huxley", "George Orwell", "Ray Bradbury", "H.G. Wells"]}'),
('trivia', 'medium', '{"question": "What is the largest island in the world?", "answer": "Greenland", "choices": ["Australia", "Greenland", "Borneo", "Madagascar"]}'),
('trivia', 'medium', '{"question": "What is the chemical symbol for iron?", "answer": "Fe", "choices": ["Ir", "Fe", "In", "Io"]}'),
('trivia', 'medium', '{"question": "Which country is known as the Land of the Rising Sun?", "answer": "Japan", "choices": ["China", "Japan", "Korea", "Thailand"]}');

-- Hard (expanded)
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'hard', '{"question": "What is the Planck length approximately?", "answer": "1.6 x 10^-35 m", "choices": ["1.6 x 10^-35 m", "1.6 x 10^-20 m", "1.6 x 10^-10 m", "1.6 x 10^-50 m"]}'),
('trivia', 'hard', '{"question": "Who proposed the heliocentric model of the solar system?", "answer": "Copernicus", "choices": ["Galileo", "Copernicus", "Kepler", "Ptolemy"]}'),
('trivia', 'hard', '{"question": "What is the Schwarzschild radius?", "answer": "Event horizon of a black hole", "choices": ["Radius of a neutron star", "Event horizon of a black hole", "Radius of the Sun", "Orbit of Mercury"]}'),
('trivia', 'hard', '{"question": "Which element has the highest melting point?", "answer": "Tungsten", "choices": ["Iron", "Tungsten", "Titanium", "Diamond"]}'),
('trivia', 'hard', '{"question": "What is the Turing test used to evaluate?", "answer": "Machine intelligence", "choices": ["Computer speed", "Machine intelligence", "Network security", "Code quality"]}'),
('trivia', 'hard', '{"question": "What particle was discovered at CERN in 2012?", "answer": "Higgs boson", "choices": ["Graviton", "Higgs boson", "Tachyon", "Dark matter"]}'),
('trivia', 'hard', '{"question": "What is the Drake Equation used to estimate?", "answer": "Alien civilizations", "choices": ["Star distances", "Planet sizes", "Alien civilizations", "Galaxy ages"]}'),
('trivia', 'hard', '{"question": "Which scientist developed the periodic table?", "answer": "Mendeleev", "choices": ["Dalton", "Mendeleev", "Bohr", "Rutherford"]}'),
('trivia', 'hard', '{"question": "What is the Doppler effect?", "answer": "Change in wave frequency due to motion", "choices": ["Light bending around gravity", "Change in wave frequency due to motion", "Sound echoing in a valley", "Light splitting into colors"]}'),
('trivia', 'hard', '{"question": "What is the oldest known civilization?", "answer": "Sumerian", "choices": ["Egyptian", "Sumerian", "Chinese", "Indus Valley"]}'),
('trivia', 'hard', '{"question": "What is the speed of sound in air approximately?", "answer": "343 m/s", "choices": ["200 m/s", "343 m/s", "500 m/s", "700 m/s"]}'),
('trivia', 'hard', '{"question": "Who wrote The Art of War?", "answer": "Sun Tzu", "choices": ["Confucius", "Sun Tzu", "Lao Tzu", "Genghis Khan"]}'),
('trivia', 'hard', '{"question": "What is the most abundant element in the universe?", "answer": "Hydrogen", "choices": ["Helium", "Hydrogen", "Oxygen", "Carbon"]}'),
('trivia', 'hard', '{"question": "Which country has the longest coastline?", "answer": "Canada", "choices": ["Australia", "Russia", "Canada", "Indonesia"]}'),
('trivia', 'hard', '{"question": "What is Occam''s Razor?", "answer": "Simplest explanation is usually correct", "choices": ["Sharpest tool wins", "Simplest explanation is usually correct", "First theory is best", "Complexity equals truth"]}'),
('trivia', 'hard', '{"question": "What is the most electronegative element?", "answer": "Fluorine", "choices": ["Oxygen", "Fluorine", "Chlorine", "Nitrogen"]}'),
('trivia', 'hard', '{"question": "In which year was the first computer program written?", "answer": "1843", "choices": ["1843", "1901", "1936", "1945"]}'),
('trivia', 'hard', '{"question": "What is the boundary between Earth''s crust and mantle called?", "answer": "Moho discontinuity", "choices": ["Gutenberg discontinuity", "Moho discontinuity", "Lehmann discontinuity", "Conrad discontinuity"]}');
