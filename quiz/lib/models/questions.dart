class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id, 
    required this.question, 
    required this.answer, 
    required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "On Harry’s first Hallowe’en at Hogwarts, who was responsible for the troll in the dungeon?",
    "options": ['Hagrid ', 'Draco Malfoy', 'Professor Snape', 'Professor Quirrell'],
    "answer_index": 4,
  },
  {
    "id": 2,
    "question": 
        "How many house points were Harry and Ron awarded for defeating the troll?",
    "options": ['Ten points each', 'Fifteen points each', 'Five points each', 'Twenty points each'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": 
        "Which old Hogwarts relic did Harry pull out of the Sorting Hat?",
    "options": ['The Sword of Gryffindor', 'Ravenclaw\'s Diadem', 'Hufflepuff\'s Cup', 'Slytherin\'s Locket'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": 
        "In Harry Potter and the Order of the Phoenix, what did Hermione get Harry and Ron for Christmas?",
    "options": ['Copies of Hogwarts: A history', 'Homework planners', 'Honeydukes chocolates', 'Sneakoscopes'],
    "answer_index": 2,
  },
];
