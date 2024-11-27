class CatEmotion { 
  String behaviour;
  String emotion;
  int rating;
  color colorCode; 
  String context;
  
  CatEmotion(String b, String e, int r, color c, String ctx) {
    behaviour = b;
    emotion = e;
    rating = r;
    colorCode = c;
    context = ctx;
  }
  
  void drawCircle(float x, float y) {
    noStroke();
    fill(colorCode);
    ellipse(x, y, rating * 27, rating * 27);
  }
}

ArrayList<CatEmotion> data = new ArrayList<CatEmotion>();

void setup() {
  size(800, 800);
  
  color red = color(167, 42, 42);
  color green = color(33, 129, 48);
  color yellow = color(203, 203, 83);
  color orange = color(224, 181, 100);
  
  data.add(new CatEmotion("Cat got covered in paint", "Stressed", 4, red, "Painting walls, cat walked in paint tray."));
  data.add(new CatEmotion("Stepped on cat's tail", "Freaked out", 5, red, "Accidentally stepped on it in hallway."));
  data.add(new CatEmotion("Cats play fight", "Found it funny", 2, yellow, "Watching them tussle on the living room rug."));
  data.add(new CatEmotion("Cat interested in piano", "Curious, happy", 2, yellow, "Played the piano, cat pawed at the keys."));
  data.add(new CatEmotion("Cats fought", "Found it amusing", 2, yellow, "Pulled out phone to record."));
  
  data.add(new CatEmotion("Thought cat got lost", "Panicked", 5, red, "Searched the whole house."));
  data.add(new CatEmotion("Found cat sleeping", "Relieved", 2, green, "Relieved to find the cat."));
  data.add(new CatEmotion("Cat slept on lap", "Emotionally attached", 1, green, "Reading on couch, cat curled up on lap."));
  data.add(new CatEmotion("Cat snuggled after argument", "Grateful, relaxed", 1, green, "Comforted after an argument."));
  data.add(new CatEmotion("Played with cat", "Uplifted, joyful", 1, green, "Playtime after a long day."));
  
  data.add(new CatEmotion("Cat follows around", "Happy, content", 2, green, "Petted it each time it approached."));
  data.add(new CatEmotion("Fed cat; cat licked hand", "Amused", 2, yellow, "Surprised by affection after feeding."));
  data.add(new CatEmotion("Cat acted sassy (no treats)", "Found it funny", 3, yellow, "Gave more treats despite attitude."));
  data.add(new CatEmotion("Cat cuddled under blanket", "Awe, cozy", 1, green, "Curled up on sofa with cat under blanket."));
  data.add(new CatEmotion("Cat stared out window for hours", "Relaxed", 2, yellow, "Watching the cat observe the world."));
  
  data.add(new CatEmotion("Cat climbed table", "Nervous", 3, orange, "Worried it might knock something over."));
  data.add(new CatEmotion("Cat knocked over a glass", "Annoyed", 4, orange, "Cleaned up the mess, found it funny later."));
  data.add(new CatEmotion("Cat stretched beside me", "Admiring", 1, green, "Watching cat stretch beside me on the floor."));
  data.add(new CatEmotion("Cat appeared out of nowhere", "Scared", 5, red, "Startled while watching a horror movie."));
  
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  
  float radius = 250; 
  for (int i = 0; i < data.size(); i++) {
    float angle = (TWO_PI * i) / data.size(); 
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    data.get(i).drawCircle(x, y); 
    
    save("CreativeCoding.png");
  }
}
