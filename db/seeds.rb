questions_data = [
  {
    "question_type" => "multiple",
    "difficulty" => "medium",
    "category" => "Entertainment: Comics",
    "question" => "What's the weakness of American vampires (Scott Snyder's American Vampire)?",
    "correct_answer" => "Gold",
    "incorrect_answer_1" => "Sunlight",
    "incorrect_answer_2" => "Wood",
    "incorrect_answer_3" => "Silver"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "easy",
    "category" => "Entertainment: Japanese Anime & Manga",
    "question" => "Who is the main character with yellow hair in the anime Naruto?",
    "correct_answer" => "Naruto",
    "incorrect_answer_1" => "Ten Ten",
    "incorrect_answer_2" => "Sasuke",
    "incorrect_answer_3" => "Kakashi"
  },
  {
    "question_type" => "boolean",
    "difficulty" => "medium",
    "category" => "Animals",
    "question" => "\"Kamea,\" the Gilbertese Islander word for dog, is derived from the English phrase \"Come here!\"",
    "correct_answer" => "True",
    "incorrect_answer_1" => "False"
  },
  {
    "question_type" => "boolean",
    "difficulty" => "easy",
    "category" => "Entertainment: Video Games",
    "question" => "Solid Snake is actually a clone from the DNA of Big Boss in the Metal Gear Solid series' history.",
    "correct_answer" => "True",
    "incorrect_answer_1" => "False"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "medium",
    "category" => "Entertainment: Books",
    "question" => "Which of the following authors was not born in England? ",
    "correct_answer" => "Arthur Conan Doyle",
    "incorrect_answer_1" => "Graham Greene",
    "incorrect_answer_2" => "H G Wells",
    "incorrect_answer_3" => "Arthur C Clarke"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "medium",
    "category" => "Entertainment: Comics",
    "question" => "Who authored The Adventures of Tintin?",
    "correct_answer" => "Hergé",
    "incorrect_answer_1" => "E.P. Jacobs",
    "incorrect_answer_2" => "Rin Tin Tin",
    "incorrect_answer_3" => "Chic Young"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "easy",
    "category" => "Entertainment: Video Games",
    "question" => "Which Mario spin-off game did Waluigi make his debut?",
    "correct_answer" => "Mario Tennis",
    "incorrect_answer_1" => "Mario Party 3",
    "incorrect_answer_2" => "Mario Kart: Double Dash!!",
    "incorrect_answer_3" => "Mario Golf: Toadstool Tour"
  },
  {
    "question_type" => "boolean",
    "difficulty" => "medium",
    "category" => "Vehicles",
    "question" => "Arriva is owned by the Deutsche Bahn.",
    "correct_answer" => "True",
    "incorrect_answer_1" => "False"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "medium",
    "category" => "History",
    "question" => "What was the name of one of the surviving palaces of Henry VIII located near Richmond, London?",
    "correct_answer" => "Hampton Court",
    "incorrect_answer_1" => "St James's Palace",
    "incorrect_answer_2" => "Buckingham Palace",
    "incorrect_answer_3" => "Coughton Court"
  },
  {
    "question_type" => "multiple",
    "difficulty" => "medium",
    "category" => "Mythology",
    "question" => "The Maori hold that which island nation was founded by Kupe, who discovered it under a long white cloud?",
    "correct_answer" => "New Zealand",
    "incorrect_answer_1" => "Vanuatu",
    "incorrect_answer_2" => "Fiji",
    "incorrect_answer_3" => "Hawaii"
  }
]

questions_data.each do |data|
  Question.create(data)
end
