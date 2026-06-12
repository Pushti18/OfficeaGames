-- Seed all game questions into game_questions table.
-- Run this in Supabase SQL Editor after running supabase_setup.sql.
-- This inserts questions directly (bypasses admin RPC).

-- ============================================================================
-- ANAGRAM RUSH
-- Format: {"word": "...", "hint": "..."}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'easy', '{"word": "CATS", "hint": "Plural of feline"}'),
('anagram', 'easy', '{"word": "BOOK", "hint": "You read it"}'),
('anagram', 'easy', '{"word": "TREE", "hint": "Found in forests"}'),
('anagram', 'easy', '{"word": "FISH", "hint": "Lives in water"}'),
('anagram', 'easy', '{"word": "STAR", "hint": "Shines at night"}'),
('anagram', 'easy', '{"word": "DOOR", "hint": "You open it to enter"}'),
('anagram', 'easy', '{"word": "MOON", "hint": "Earth''s natural satellite"}'),
('anagram', 'easy', '{"word": "CAKE", "hint": "Birthday dessert"}'),
('anagram', 'easy', '{"word": "BIRD", "hint": "It can fly"}'),
('anagram', 'easy', '{"word": "FIRE", "hint": "Hot and bright"}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'medium', '{"word": "EARTH", "hint": "Our planet"}'),
('anagram', 'medium', '{"word": "WATER", "hint": "H2O"}'),
('anagram', 'medium', '{"word": "CLOUD", "hint": "Floats in the sky"}'),
('anagram', 'medium', '{"word": "HORSE", "hint": "Animal you can ride"}'),
('anagram', 'medium', '{"word": "MONEY", "hint": "Used for buying things"}'),
('anagram', 'medium', '{"word": "BEACH", "hint": "Sandy by the ocean"}'),
('anagram', 'medium', '{"word": "LIGHT", "hint": "Opposite of darkness"}'),
('anagram', 'medium', '{"word": "BRAIN", "hint": "Organ of thought"}'),
('anagram', 'medium', '{"word": "FLAME", "hint": "Part of fire"}'),
('anagram', 'medium', '{"word": "DREAM", "hint": "What you do while sleeping"}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('anagram', 'hard', '{"word": "DOLPHIN", "hint": "Intelligent sea mammal"}'),
('anagram', 'hard', '{"word": "CAPTAIN", "hint": "Leader of a ship"}'),
('anagram', 'hard', '{"word": "KITCHEN", "hint": "Where food is cooked"}'),
('anagram', 'hard', '{"word": "BALLOON", "hint": "Floats with helium"}'),
('anagram', 'hard', '{"word": "DIAMOND", "hint": "Precious gemstone"}'),
('anagram', 'hard', '{"word": "FREEDOM", "hint": "Being free"}'),
('anagram', 'hard', '{"word": "MYSTERY", "hint": "Something unknown"}'),
('anagram', 'hard', '{"word": "GRAVITY", "hint": "Force that pulls you down"}'),
('anagram', 'hard', '{"word": "JOURNEY", "hint": "A long trip"}'),
('anagram', 'hard', '{"word": "THUNDER", "hint": "Loud sound in a storm"}');

-- ============================================================================
-- EMOJI DECODE
-- Format: {"emojis": "...", "answer": "...", "choices": [...]}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'easy', '{"emojis": "\ud83c\udf82\ud83d\udd6f\ufe0f", "answer": "BIRTHDAY", "choices": ["BIRTHDAY", "PARTY", "CAKE", "CANDLE"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf19\ud83d\ude34", "answer": "BEDTIME", "choices": ["BEDTIME", "SLEEP", "DREAM", "NIGHT"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udfb5\ud83c\udfb6", "answer": "MUSIC", "choices": ["MUSIC", "SONG", "DANCE", "BEAT"]}'),
('emojidecode', 'easy', '{"emojis": "\u26bd\ud83e\udd45", "answer": "FOOTBALL", "choices": ["FOOTBALL", "PENALTY", "GOAL", "MATCH"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udcf1\ud83d\udcac", "answer": "TEXTING", "choices": ["TEXTING", "CALLING", "CHATTING", "EMAIL"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf0a\ud83c\udfd6\ufe0f", "answer": "BEACH", "choices": ["BEACH", "OCEAN", "ISLAND", "SURFING"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf27\ufe0f\u2602\ufe0f", "answer": "RAINY DAY", "choices": ["RAINY DAY", "STORM", "FLOOD", "THUNDER"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83d\udc15\ud83c\udfc3", "answer": "DOG WALKING", "choices": ["DOG WALKING", "RUNNING", "PET", "JOGGING"]}'),
('emojidecode', 'easy', '{"emojis": "\u2600\ufe0f\ud83d\udd76\ufe0f", "answer": "SUNNY", "choices": ["SUNNY", "SUMMER", "HOT", "BRIGHT"]}'),
('emojidecode', 'easy', '{"emojis": "\ud83c\udf55\ud83c\udf7a", "answer": "PIZZA PARTY", "choices": ["PIZZA PARTY", "DINNER", "FEAST", "FRIDAY"]}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'medium', '{"emojis": "\ud83d\udca1\ud83e\udde0", "answer": "BRIGHT IDEA", "choices": ["BRIGHT IDEA", "KNOWLEDGE", "THINK", "SMART"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83e\udd81\ud83d\udc51", "answer": "LION KING", "choices": ["LION KING", "ROYALTY", "PRIDE", "KINGDOM"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf0b\ud83d\udd25", "answer": "VOLCANO", "choices": ["VOLCANO", "ERUPTION", "LAVA", "DISASTER"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfd4\ufe0f\ud83e\uddd7", "answer": "MOUNTAIN CLIMBING", "choices": ["MOUNTAIN CLIMBING", "HIKING", "ADVENTURE", "TREKKING"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf0d\ud83d\udd04", "answer": "REVOLUTION", "choices": ["REVOLUTION", "ROTATION", "ORBIT", "SPIN"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udfad\ud83d\ude02\ud83d\ude22", "answer": "DRAMA", "choices": ["DRAMA", "ACTING", "THEATRE", "EMOTION"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf39\ud83e\udd40", "answer": "FADING LOVE", "choices": ["FADING LOVE", "HEARTBREAK", "WILTING", "ROMANCE"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83d\udc09\ud83d\udd25", "answer": "DRAGON FIRE", "choices": ["DRAGON FIRE", "LEGEND", "FANTASY", "MYTHICAL"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83d\udd77\ufe0f\ud83d\udd78\ufe0f", "answer": "SPIDERMAN", "choices": ["SPIDERMAN", "SPIDER", "WEB", "HERO"]}'),
('emojidecode', 'medium', '{"emojis": "\ud83c\udf0a\ud83e\udd88", "answer": "JAWS", "choices": ["JAWS", "SHARK ATTACK", "OCEAN", "PREDATOR"]}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('emojidecode', 'hard', '{"emojis": "\ud83e\udd8b\ud83c\udf00", "answer": "BUTTERFLY EFFECT", "choices": ["BUTTERFLY EFFECT", "METAMORPHOSIS", "CHAOS", "SPIRAL"]}'),
('emojidecode', 'hard', '{"emojis": "\u2696\ufe0f\ud83d\udc41\ufe0f", "answer": "BLIND JUSTICE", "choices": ["BLIND JUSTICE", "JUDGEMENT", "LAW", "BALANCE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf31\ud83d\udca7\u2600\ufe0f", "answer": "PHOTOSYNTHESIS", "choices": ["PHOTOSYNTHESIS", "GARDENING", "LIFE CYCLE", "GROWTH"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\udce1\ud83d\udef8", "answer": "ALIEN SIGNAL", "choices": ["ALIEN SIGNAL", "BROADCAST", "SATELLITE", "UFO"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udfaf\ud83c\udfc6", "answer": "CHAMPIONSHIP", "choices": ["CHAMPIONSHIP", "BULLSEYE", "WINNER", "GOAL"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf11\ud83c\udf12\ud83c\udf15", "answer": "LUNAR CYCLE", "choices": ["LUNAR CYCLE", "MOONRISE", "ECLIPSE", "PHASES"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83e\uddec\ud83d\udd2c", "answer": "DNA RESEARCH", "choices": ["DNA RESEARCH", "BIOLOGY", "GENETICS", "SCIENCE"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83c\udf10\ud83d\udcbb", "answer": "WORLD WIDE WEB", "choices": ["WORLD WIDE WEB", "INTERNET", "NETWORK", "ONLINE"]}'),
('emojidecode', 'hard', '{"emojis": "\u26a1\ud83e\udde0", "answer": "BRAINSTORM", "choices": ["BRAINSTORM", "SHOCK", "IDEA STORM", "GENIUS"]}'),
('emojidecode', 'hard', '{"emojis": "\ud83d\udd10\ud83d\udddd\ufe0f", "answer": "UNLOCK SECRET", "choices": ["UNLOCK SECRET", "PASSWORD", "ENCRYPTION", "MYSTERY"]}');

-- ============================================================================
-- NUMBER SEQUENCE
-- Format: {"sequence": "...", "answer": ..., "choices": [...]}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'easy', '{"sequence": "2, 4, 6, ?, 10", "answer": 8, "choices": [7, 8, 9, 11]}'),
('numbersequence', 'easy', '{"sequence": "5, 10, 15, ?, 25", "answer": 20, "choices": [18, 19, 20, 22]}'),
('numbersequence', 'easy', '{"sequence": "1, 3, 5, 7, ?", "answer": 9, "choices": [8, 9, 10, 11]}'),
('numbersequence', 'easy', '{"sequence": "10, 8, 6, ?, 2", "answer": 4, "choices": [3, 4, 5, 6]}'),
('numbersequence', 'easy', '{"sequence": "3, 6, 9, ?, 15", "answer": 12, "choices": [10, 11, 12, 13]}'),
('numbersequence', 'easy', '{"sequence": "100, 90, 80, ?, 60", "answer": 70, "choices": [65, 70, 75, 80]}'),
('numbersequence', 'easy', '{"sequence": "1, 2, 4, ?, 16", "answer": 8, "choices": [6, 7, 8, 10]}'),
('numbersequence', 'easy', '{"sequence": "0, 5, 10, 15, ?", "answer": 20, "choices": [18, 19, 20, 25]}'),
('numbersequence', 'easy', '{"sequence": "7, 14, 21, ?, 35", "answer": 28, "choices": [25, 26, 27, 28]}'),
('numbersequence', 'easy', '{"sequence": "50, 45, 40, 35, ?", "answer": 30, "choices": [28, 29, 30, 32]}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'medium', '{"sequence": "1, 4, 9, 16, ?", "answer": 25, "choices": [20, 22, 25, 36]}'),
('numbersequence', 'medium', '{"sequence": "1, 1, 2, 3, 5, ?", "answer": 8, "choices": [6, 7, 8, 9]}'),
('numbersequence', 'medium', '{"sequence": "2, 6, 18, 54, ?", "answer": 162, "choices": [108, 144, 162, 216]}'),
('numbersequence', 'medium', '{"sequence": "1, 8, 27, ?, 125", "answer": 64, "choices": [36, 48, 64, 81]}'),
('numbersequence', 'medium', '{"sequence": "2, 3, 5, 7, 11, ?", "answer": 13, "choices": [12, 13, 14, 15]}'),
('numbersequence', 'medium', '{"sequence": "4, 7, 11, 16, ?", "answer": 22, "choices": [20, 21, 22, 23]}'),
('numbersequence', 'medium', '{"sequence": "1, 3, 7, 15, ?", "answer": 31, "choices": [25, 28, 31, 35]}'),
('numbersequence', 'medium', '{"sequence": "64, 32, 16, 8, ?", "answer": 4, "choices": [2, 4, 6, 8]}'),
('numbersequence', 'medium', '{"sequence": "3, 5, 8, 13, ?", "answer": 21, "choices": [18, 20, 21, 26]}'),
('numbersequence', 'medium', '{"sequence": "1, 2, 6, 24, ?", "answer": 120, "choices": [48, 80, 100, 120]}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('numbersequence', 'hard', '{"sequence": "2, 5, 11, 23, ?", "answer": 47, "choices": [40, 43, 47, 50]}'),
('numbersequence', 'hard', '{"sequence": "1, 4, 10, 20, ?", "answer": 35, "choices": [28, 30, 35, 40]}'),
('numbersequence', 'hard', '{"sequence": "1, 11, 21, 1211, ?", "answer": "111221", "choices": ["111221", "31221", "3112", "112233"]}'),
('numbersequence', 'hard', '{"sequence": "1, 5, 14, 30, ?", "answer": 55, "choices": [45, 50, 55, 60]}'),
('numbersequence', 'hard', '{"sequence": "2, 3, 5, 9, 17, ?", "answer": 33, "choices": [29, 31, 33, 35]}'),
('numbersequence', 'hard', '{"sequence": "1, 2, 4, 7, 11, ?", "answer": 16, "choices": [14, 15, 16, 18]}'),
('numbersequence', 'hard', '{"sequence": "6, 14, 26, 42, ?", "answer": 62, "choices": [56, 60, 62, 68]}'),
('numbersequence', 'hard', '{"sequence": "3, 7, 15, 31, ?", "answer": 63, "choices": [52, 57, 63, 72]}'),
('numbersequence', 'hard', '{"sequence": "0, 1, 1, 2, 3, 5, 8, ?", "answer": 13, "choices": [11, 12, 13, 14]}'),
('numbersequence', 'hard', '{"sequence": "2, 12, 36, 80, ?", "answer": 150, "choices": [100, 120, 140, 150]}');

-- ============================================================================
-- WORD ASSOCIATION
-- Format: {"word": "...", "answer": "...", "choices": [...]}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'easy', '{"word": "OCEAN", "choices": ["Desert", "Wave", "Mountain", "Forest"], "answer": "Wave"}'),
('wordassociation', 'easy', '{"word": "BREAD", "choices": ["Butter", "Water", "Paint", "Metal"], "answer": "Butter"}'),
('wordassociation', 'easy', '{"word": "NIGHT", "choices": ["Stars", "Trees", "Stones", "Mountains"], "answer": "Stars"}'),
('wordassociation', 'easy', '{"word": "RAIN", "choices": ["Umbrella", "Volcano", "Desert", "Space"], "answer": "Umbrella"}'),
('wordassociation', 'easy', '{"word": "BOOK", "choices": ["Read", "Dance", "Cook", "Drive"], "answer": "Read"}'),
('wordassociation', 'easy', '{"word": "FIRE", "choices": ["Ocean", "Snow", "Smoke", "Clouds"], "answer": "Smoke"}'),
('wordassociation', 'easy', '{"word": "SCHOOL", "choices": ["Doctor", "Teacher", "Chef", "Driver"], "answer": "Teacher"}'),
('wordassociation', 'easy', '{"word": "CAT", "choices": ["Bark", "Chirp", "Meow", "Roar"], "answer": "Meow"}'),
('wordassociation', 'easy', '{"word": "SUN", "choices": ["Rain", "Moon", "Shadow", "Heat"], "answer": "Heat"}'),
('wordassociation', 'easy', '{"word": "MUSIC", "choices": ["Painting", "Song", "Sculpture", "Building"], "answer": "Song"}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'medium', '{"word": "JUSTICE", "choices": ["Scale", "Sword", "Crown", "Shield"], "answer": "Scale"}'),
('wordassociation', 'medium', '{"word": "TIME", "choices": ["Space", "Clock", "Color", "Sound"], "answer": "Clock"}'),
('wordassociation', 'medium', '{"word": "HEART", "choices": ["Love", "Logic", "Power", "Mind"], "answer": "Love"}'),
('wordassociation', 'medium', '{"word": "INTERNET", "choices": ["Isolation", "Darkness", "Connection", "Silence"], "answer": "Connection"}'),
('wordassociation', 'medium', '{"word": "SILENCE", "choices": ["Thunder", "Peace", "Crowd", "Noise"], "answer": "Peace"}'),
('wordassociation', 'medium', '{"word": "MONEY", "choices": ["Hospital", "Bank", "Library", "School"], "answer": "Bank"}'),
('wordassociation', 'medium', '{"word": "LEADERSHIP", "choices": ["Comfort", "Vision", "Follower", "Safety"], "answer": "Vision"}'),
('wordassociation', 'medium', '{"word": "ANXIETY", "choices": ["Calm", "Worry", "Joy", "Peace"], "answer": "Worry"}'),
('wordassociation', 'medium', '{"word": "FREEDOM", "choices": ["Prison", "Cage", "Wings", "Chains"], "answer": "Wings"}'),
('wordassociation', 'medium', '{"word": "POWER", "choices": ["Peace", "Love", "Electricity", "Art"], "answer": "Electricity"}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('wordassociation', 'hard', '{"word": "ENTROPY", "choices": ["Energy", "Disorder", "Matter", "Light"], "answer": "Disorder"}'),
('wordassociation', 'hard', '{"word": "CATALYST", "choices": ["Stability", "Change", "Resistance", "Stillness"], "answer": "Change"}'),
('wordassociation', 'hard', '{"word": "RENAISSANCE", "choices": ["Destruction", "Rebirth", "Silence", "Fear"], "answer": "Rebirth"}'),
('wordassociation', 'hard', '{"word": "PARADOX", "choices": ["Solution", "Contradiction", "Answer", "Clarity"], "answer": "Contradiction"}'),
('wordassociation', 'hard', '{"word": "OXYMORON", "choices": ["Agreement", "Contradiction", "Logic", "Clarity"], "answer": "Contradiction"}'),
('wordassociation', 'hard', '{"word": "SERENDIPITY", "choices": ["Hard Work", "Planning", "Lucky Discovery", "Patience"], "answer": "Lucky Discovery"}'),
('wordassociation', 'hard', '{"word": "EPHEMERAL", "choices": ["Permanent", "Temporary", "Eternal", "Infinite"], "answer": "Temporary"}'),
('wordassociation', 'hard', '{"word": "DICHOTOMY", "choices": ["Unity", "Division", "Balance", "Harmony"], "answer": "Division"}'),
('wordassociation', 'hard', '{"word": "MELANCHOLY", "choices": ["Joy", "Anger", "Sadness", "Peace"], "answer": "Sadness"}'),
('wordassociation', 'hard', '{"word": "EUPHORIA", "choices": ["Depression", "Anger", "Extreme Joy", "Boredom"], "answer": "Extreme Joy"}');

-- ============================================================================
-- TRUE/FALSE BLITZ
-- Format: {"statement": "...", "answer": true/false}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'easy', '{"statement": "The Sun is a star.", "answer": true}'),
('truefalse', 'easy', '{"statement": "There are 7 continents on Earth.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Water boils at 50 degrees Celsius.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Humans have 5 senses.", "answer": true}'),
('truefalse', 'easy', '{"statement": "The Earth is flat.", "answer": false}'),
('truefalse', 'easy', '{"statement": "A year has 365 days.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Dogs are reptiles.", "answer": false}'),
('truefalse', 'easy', '{"statement": "The Moon orbits the Earth.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Ice is heavier than liquid water.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Bananas are a type of berry.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Spiders have 6 legs.", "answer": false}'),
('truefalse', 'easy', '{"statement": "An octopus has 8 arms.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Lightning is hotter than the Sun''s surface.", "answer": true}'),
('truefalse', 'easy', '{"statement": "Goldfish have a 3-second memory.", "answer": false}'),
('truefalse', 'easy', '{"statement": "Mount Everest is the tallest mountain on Earth.", "answer": true}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'medium', '{"statement": "The Great Wall of China is visible from space with the naked eye.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Octopuses have three hearts.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Venus is the hottest planet in our solar system.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Honey never spoils.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Sound travels faster than light.", "answer": false}'),
('truefalse', 'medium', '{"statement": "A group of flamingos is called a flamboyance.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Diamonds are made from compressed coal.", "answer": false}'),
('truefalse', 'medium', '{"statement": "The Amazon River is the longest river in the world.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Sharks are older than trees.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Australia is wider than the Moon.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Humans share about 60% of their DNA with bananas.", "answer": true}'),
('truefalse', 'medium', '{"statement": "The Sahara is the largest desert on Earth.", "answer": false}'),
('truefalse', 'medium', '{"statement": "A photon takes about 8 minutes to travel from the Sun to Earth.", "answer": true}'),
('truefalse', 'medium', '{"statement": "Napoleon Bonaparte was unusually short.", "answer": false}'),
('truefalse', 'medium', '{"statement": "Cleopatra lived closer in time to the Moon landing than to the building of the Great Pyramid.", "answer": true}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('truefalse', 'hard', '{"statement": "There are more possible iterations of a game of chess than atoms in the observable universe.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Oxford University is older than the Aztec Empire.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The total weight of all ants on Earth is greater than the total weight of all humans.", "answer": true}'),
('truefalse', 'hard', '{"statement": "A day on Venus is longer than a year on Venus.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Pluto has been reclassified as a planet again since 2020.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Humans use only 10% of their brain.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Hot water freezes faster than cold water under certain conditions.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The longest war in history lasted 335 years with zero casualties.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Glass is a slow-moving liquid.", "answer": false}'),
('truefalse', 'hard', '{"statement": "Wombat poop is cube-shaped.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The inventor of the Pringles can is buried in one.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Scotland''s national animal is the unicorn.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Neutron stars are so dense that a teaspoon would weigh about 6 billion tons.", "answer": true}'),
('truefalse', 'hard', '{"statement": "The Eiffel Tower grows taller in summer due to thermal expansion.", "answer": true}'),
('truefalse', 'hard', '{"statement": "Antibiotics are effective against viruses.", "answer": false}');

-- ============================================================================
-- ODD ONE OUT
-- Format: {"options": [...], "answer": "...", "hint": "..."}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'easy', '{"options": ["Apple", "Banana", "Carrot", "Orange"], "answer": "Carrot", "hint": "Three are fruits"}'),
('oddoneout', 'easy', '{"options": ["Dog", "Cat", "Eagle", "Hamster"], "answer": "Eagle", "hint": "Three are common house pets"}'),
('oddoneout', 'easy', '{"options": ["Red", "Blue", "Green", "Circle"], "answer": "Circle", "hint": "Three are colors"}'),
('oddoneout', 'easy', '{"options": ["Piano", "Guitar", "Trumpet", "Painting"], "answer": "Painting", "hint": "Three are musical instruments"}'),
('oddoneout', 'easy', '{"options": ["Earth", "Mars", "Sun", "Jupiter"], "answer": "Sun", "hint": "Three are planets"}'),
('oddoneout', 'easy', '{"options": ["Shirt", "Pants", "Shoes", "Fridge"], "answer": "Fridge", "hint": "Three are clothing"}'),
('oddoneout', 'easy', '{"options": ["Car", "Bus", "Bicycle", "Television"], "answer": "Television", "hint": "Three are vehicles"}'),
('oddoneout', 'easy', '{"options": ["Rose", "Tulip", "Oak", "Daisy"], "answer": "Oak", "hint": "Three are flowers"}'),
('oddoneout', 'easy', '{"options": ["Football", "Basketball", "Tennis", "Chess"], "answer": "Chess", "hint": "Three are ball sports"}'),
('oddoneout', 'easy', '{"options": ["Milk", "Juice", "Water", "Bread"], "answer": "Bread", "hint": "Three are drinks"}'),
('oddoneout', 'easy', '{"options": ["Monday", "Friday", "March", "Sunday"], "answer": "March", "hint": "Three are days of the week"}'),
('oddoneout', 'easy', '{"options": ["Pencil", "Pen", "Eraser", "Hammer"], "answer": "Hammer", "hint": "Three are stationery items"}'),
('oddoneout', 'easy', '{"options": ["Lion", "Tiger", "Bear", "Goldfish"], "answer": "Goldfish", "hint": "Three are large predators"}'),
('oddoneout', 'easy', '{"options": ["English", "French", "Pizza", "Spanish"], "answer": "Pizza", "hint": "Three are languages"}'),
('oddoneout', 'easy', '{"options": ["Ear", "Eye", "Nose", "Chair"], "answer": "Chair", "hint": "Three are body parts"}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'medium', '{"options": ["Whale", "Dolphin", "Shark", "Seal"], "answer": "Shark", "hint": "Three are mammals"}'),
('oddoneout', 'medium', '{"options": ["Python", "Java", "HTML", "C++"], "answer": "HTML", "hint": "Three are programming languages"}'),
('oddoneout', 'medium', '{"options": ["Mercury", "Venus", "Neptune", "Mars"], "answer": "Neptune", "hint": "Three are inner planets"}'),
('oddoneout', 'medium', '{"options": ["Violin", "Cello", "Flute", "Viola"], "answer": "Flute", "hint": "Three are string instruments"}'),
('oddoneout', 'medium', '{"options": ["Tokyo", "London", "Paris", "California"], "answer": "California", "hint": "Three are capital cities"}'),
('oddoneout', 'medium', '{"options": ["Diamond", "Gold", "Silver", "Wood"], "answer": "Wood", "hint": "Three are precious materials"}'),
('oddoneout', 'medium', '{"options": ["Oxygen", "Nitrogen", "Water", "Helium"], "answer": "Water", "hint": "Three are elements"}'),
('oddoneout', 'medium', '{"options": ["Einstein", "Newton", "Shakespeare", "Hawking"], "answer": "Shakespeare", "hint": "Three are physicists"}'),
('oddoneout', 'medium', '{"options": ["Triangle", "Square", "Circle", "Cube"], "answer": "Cube", "hint": "Three are 2D shapes"}'),
('oddoneout', 'medium', '{"options": ["Sahara", "Amazon", "Gobi", "Kalahari"], "answer": "Amazon", "hint": "Three are deserts"}'),
('oddoneout', 'medium', '{"options": ["Photosynthesis", "Respiration", "Evaporation", "Digestion"], "answer": "Evaporation", "hint": "Three are biological processes"}'),
('oddoneout', 'medium', '{"options": ["Beethoven", "Mozart", "Picasso", "Bach"], "answer": "Picasso", "hint": "Three are composers"}'),
('oddoneout', 'medium', '{"options": ["Kilometer", "Meter", "Kilogram", "Centimeter"], "answer": "Kilogram", "hint": "Three are units of length"}'),
('oddoneout', 'medium', '{"options": ["Pacific", "Atlantic", "Mediterranean", "Indian"], "answer": "Mediterranean", "hint": "Three are oceans"}'),
('oddoneout', 'medium', '{"options": ["Hydrogen", "Helium", "Iron", "Neon"], "answer": "Iron", "hint": "Three are gases at room temperature"}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('oddoneout', 'hard', '{"options": ["Mitochondria", "Nucleus", "Cell Wall", "Ribosome"], "answer": "Cell Wall", "hint": "Three are found in animal cells"}'),
('oddoneout', 'hard', '{"options": ["Fibonacci", "Euler", "Da Vinci", "Gauss"], "answer": "Da Vinci", "hint": "Three are mathematicians"}'),
('oddoneout', 'hard', '{"options": ["Sonnet", "Haiku", "Limerick", "Novel"], "answer": "Novel", "hint": "Three are forms of poetry"}'),
('oddoneout', 'hard', '{"options": ["Baroque", "Renaissance", "Gothic", "Bluetooth"], "answer": "Bluetooth", "hint": "Three are art/architecture periods"}'),
('oddoneout', 'hard', '{"options": ["Proton", "Neutron", "Electron", "Photon"], "answer": "Photon", "hint": "Three are subatomic particles in an atom"}'),
('oddoneout', 'hard', '{"options": ["TCP", "HTTP", "DNA", "FTP"], "answer": "DNA", "hint": "Three are internet protocols"}'),
('oddoneout', 'hard', '{"options": ["Quartz", "Feldspar", "Diamond", "Mica"], "answer": "Diamond", "hint": "Three are common rock-forming minerals"}'),
('oddoneout', 'hard', '{"options": ["Dopamine", "Serotonin", "Insulin", "Endorphin"], "answer": "Insulin", "hint": "Three are neurotransmitters"}'),
('oddoneout', 'hard', '{"options": ["Hubble", "James Webb", "Kepler", "Hadron"], "answer": "Hadron", "hint": "Three are space telescopes"}'),
('oddoneout', 'hard', '{"options": ["Impressionism", "Cubism", "Surrealism", "Capitalism"], "answer": "Capitalism", "hint": "Three are art movements"}'),
('oddoneout', 'hard', '{"options": ["Mandarin", "Cantonese", "Sushi", "Japanese"], "answer": "Sushi", "hint": "Three are Asian languages"}'),
('oddoneout', 'hard', '{"options": ["Plato", "Socrates", "Aristotle", "Archimedes"], "answer": "Archimedes", "hint": "Three are Greek philosophers"}'),
('oddoneout', 'hard', '{"options": ["Igneous", "Sedimentary", "Metamorphic", "Cumulus"], "answer": "Cumulus", "hint": "Three are rock types"}'),
('oddoneout', 'hard', '{"options": ["Allegory", "Metaphor", "Simile", "Algorithm"], "answer": "Algorithm", "hint": "Three are literary devices"}'),
('oddoneout', 'hard', '{"options": ["Pangaea", "Gondwana", "Laurasia", "Atlantis"], "answer": "Atlantis", "hint": "Three are real supercontinents"}');

-- ============================================================================
-- TRIVIA QUIZ
-- Format: {"question": "...", "answer": "...", "choices": [...]}
-- ============================================================================

-- Easy
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'easy', '{"question": "What is the capital of France?", "answer": "Paris", "choices": ["London", "Paris", "Berlin", "Madrid"]}'),
('trivia', 'easy', '{"question": "How many legs does a spider have?", "answer": "8", "choices": ["6", "8", "10", "12"]}'),
('trivia', 'easy', '{"question": "What color is the sky on a clear day?", "answer": "Blue", "choices": ["Red", "Green", "Blue", "Yellow"]}'),
('trivia', 'easy', '{"question": "Which planet is known as the Red Planet?", "answer": "Mars", "choices": ["Venus", "Mars", "Jupiter", "Saturn"]}'),
('trivia', 'easy', '{"question": "What is the largest ocean on Earth?", "answer": "Pacific", "choices": ["Atlantic", "Indian", "Pacific", "Arctic"]}'),
('trivia', 'easy', '{"question": "How many days are in a week?", "answer": "7", "choices": ["5", "6", "7", "8"]}'),
('trivia', 'easy', '{"question": "What do bees produce?", "answer": "Honey", "choices": ["Milk", "Honey", "Silk", "Wax"]}'),
('trivia', 'easy', '{"question": "Which animal is known as the King of the Jungle?", "answer": "Lion", "choices": ["Tiger", "Lion", "Bear", "Elephant"]}'),
('trivia', 'easy', '{"question": "What is the freezing point of water?", "answer": "0°C", "choices": ["0°C", "10°C", "50°C", "100°C"]}'),
('trivia', 'easy', '{"question": "How many colors are in a rainbow?", "answer": "7", "choices": ["5", "6", "7", "8"]}'),
('trivia', 'easy', '{"question": "What is the largest mammal?", "answer": "Blue Whale", "choices": ["Elephant", "Blue Whale", "Giraffe", "Hippo"]}'),
('trivia', 'easy', '{"question": "Which gas do plants absorb from the atmosphere?", "answer": "Carbon Dioxide", "choices": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Helium"]}'),
('trivia', 'easy', '{"question": "What is 7 x 8?", "answer": "56", "choices": ["48", "54", "56", "64"]}'),
('trivia', 'easy', '{"question": "Which continent is Egypt in?", "answer": "Africa", "choices": ["Asia", "Europe", "Africa", "South America"]}'),
('trivia', 'easy', '{"question": "What is the hardest natural substance on Earth?", "answer": "Diamond", "choices": ["Gold", "Iron", "Diamond", "Platinum"]}');

-- Medium
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'medium', '{"question": "What is the chemical symbol for gold?", "answer": "Au", "choices": ["Ag", "Au", "Fe", "Cu"]}'),
('trivia', 'medium', '{"question": "Who painted the Mona Lisa?", "answer": "Leonardo da Vinci", "choices": ["Michelangelo", "Leonardo da Vinci", "Raphael", "Picasso"]}'),
('trivia', 'medium', '{"question": "What is the speed of light approximately?", "answer": "300,000 km/s", "choices": ["150,000 km/s", "300,000 km/s", "500,000 km/s", "1,000,000 km/s"]}'),
('trivia', 'medium', '{"question": "Which country has the most natural lakes?", "answer": "Canada", "choices": ["USA", "Russia", "Canada", "Brazil"]}'),
('trivia', 'medium', '{"question": "What is the smallest prime number?", "answer": "2", "choices": ["1", "2", "3", "5"]}'),
('trivia', 'medium', '{"question": "In what year did World War II end?", "answer": "1945", "choices": ["1943", "1944", "1945", "1946"]}'),
('trivia', 'medium', '{"question": "What is the powerhouse of the cell?", "answer": "Mitochondria", "choices": ["Nucleus", "Mitochondria", "Ribosome", "Golgi Body"]}'),
('trivia', 'medium', '{"question": "Which element has the atomic number 1?", "answer": "Hydrogen", "choices": ["Helium", "Hydrogen", "Oxygen", "Carbon"]}'),
('trivia', 'medium', '{"question": "Who wrote Romeo and Juliet?", "answer": "Shakespeare", "choices": ["Dickens", "Shakespeare", "Austen", "Hemingway"]}'),
('trivia', 'medium', '{"question": "What is the largest desert in the world?", "answer": "Antarctic", "choices": ["Sahara", "Gobi", "Antarctic", "Arabian"]}'),
('trivia', 'medium', '{"question": "How many bones does an adult human have?", "answer": "206", "choices": ["196", "206", "216", "226"]}'),
('trivia', 'medium', '{"question": "Which planet has the most moons?", "answer": "Saturn", "choices": ["Jupiter", "Saturn", "Uranus", "Neptune"]}'),
('trivia', 'medium', '{"question": "What is the main component of the Sun?", "answer": "Hydrogen", "choices": ["Helium", "Hydrogen", "Oxygen", "Nitrogen"]}'),
('trivia', 'medium', '{"question": "Which blood type is the universal donor?", "answer": "O negative", "choices": ["A positive", "B negative", "AB positive", "O negative"]}'),
('trivia', 'medium', '{"question": "What is the longest river in the world?", "answer": "Nile", "choices": ["Amazon", "Nile", "Yangtze", "Mississippi"]}');

-- Hard
INSERT INTO public.game_questions (game_type, difficulty, question_data) VALUES
('trivia', 'hard', '{"question": "What is the half-life of Carbon-14?", "answer": "5,730 years", "choices": ["1,200 years", "5,730 years", "10,000 years", "50,000 years"]}'),
('trivia', 'hard', '{"question": "Which physicist proposed the uncertainty principle?", "answer": "Heisenberg", "choices": ["Bohr", "Heisenberg", "Schrodinger", "Planck"]}'),
('trivia', 'hard', '{"question": "What is the rarest blood type?", "answer": "AB negative", "choices": ["O negative", "B negative", "A negative", "AB negative"]}'),
('trivia', 'hard', '{"question": "In which year was the first email sent?", "answer": "1971", "choices": ["1965", "1971", "1978", "1983"]}'),
('trivia', 'hard', '{"question": "What is the deepest point in the ocean?", "answer": "Mariana Trench", "choices": ["Tonga Trench", "Mariana Trench", "Java Trench", "Puerto Rico Trench"]}'),
('trivia', 'hard', '{"question": "Which mathematician proved the last theorem attributed to Fermat?", "answer": "Andrew Wiles", "choices": ["Andrew Wiles", "Terence Tao", "Grigori Perelman", "John Nash"]}'),
('trivia', 'hard', '{"question": "What is the most abundant gas in Earth''s atmosphere?", "answer": "Nitrogen", "choices": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"]}'),
('trivia', 'hard', '{"question": "Which organ in the human body can regenerate itself?", "answer": "Liver", "choices": ["Heart", "Liver", "Kidney", "Lung"]}'),
('trivia', 'hard', '{"question": "What is absolute zero in Celsius?", "answer": "-273.15°C", "choices": ["-273.15°C", "-300°C", "-250°C", "-100°C"]}'),
('trivia', 'hard', '{"question": "Who discovered penicillin?", "answer": "Alexander Fleming", "choices": ["Louis Pasteur", "Alexander Fleming", "Joseph Lister", "Robert Koch"]}'),
('trivia', 'hard', '{"question": "What is the Chandrasekhar limit?", "answer": "1.4 solar masses", "choices": ["0.5 solar masses", "1.4 solar masses", "3.0 solar masses", "10 solar masses"]}'),
('trivia', 'hard', '{"question": "Which ancient civilization built Machu Picchu?", "answer": "Inca", "choices": ["Maya", "Aztec", "Inca", "Olmec"]}'),
('trivia', 'hard', '{"question": "What programming language was created by Bjarne Stroustrup?", "answer": "C++", "choices": ["Java", "Python", "C++", "JavaScript"]}'),
('trivia', 'hard', '{"question": "How many dimensions does string theory typically require?", "answer": "10 or 11", "choices": ["4", "7", "10 or 11", "26"]}'),
('trivia', 'hard', '{"question": "What is the Fibonacci sequence''s 10th number?", "answer": "55", "choices": ["34", "55", "89", "144"]}');
