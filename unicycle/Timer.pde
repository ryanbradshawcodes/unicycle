class StopWatchTimer {
  int startTime = 0, stopTime = 0;
  boolean running = false; 
  
  StopWatchTimer() {
  
  }
  
  void start() {
    startTime = millis();
    running = true;
  }
  
  void stop() {
    stopTime = millis();
    running = false;
  }
  
  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    }
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }
  
  void time(StopWatchTimer sw) {
    textAlign(CENTER);
    text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), wid/2, 225);
  }
  
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}