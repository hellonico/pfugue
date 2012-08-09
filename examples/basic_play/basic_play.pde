import org.jfugue.extras.*;
import org.jfugue.*;

void setup() {
    Player player = new Player();
    // play
    Pattern pattern = new Pattern("I[Flute] E5s A5s C6s B5s E5s B5s D6s C6i E6i G#5i E6i | A5s E5s A5s C6s B5s E5s B5s D6s C6i A5i Ri"); 
    player.play(pattern);
    
    // save
    try {
      File midi = new File(dataPath("flute.midi"));
      println("Saved midi in:"+midi.getAbsolutePath());
      player.saveMidi(pattern, midi);
    } catch(Exception e) {
      println(e);
    }
    
    // load
    try {
      org.jfugue.Pattern p2 = player.loadMidi(new File(dataPath("frerejacques.midi")));
      println(p2.getMusicString());   
    } catch(Exception e) {
      println(e);
    }
}

void draw() {
    
}
