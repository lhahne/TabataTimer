var lowPeriod = true;

var lowTime = 10;
var highTime = 20;

var maxRounds = 8;

var tick = function() {
    time = time + 1;

    if(lowPeriod && time >= lowTime) {
        time = 0;
        lowPeriod = false;
        sound.play()
        lowIndicator.text = "go"
    }
    else if (!lowPeriod && time >= highTime) {
        time = 0;
        lowPeriod = true;
        round = round + 1;
        if(round >= maxRounds) {
            enabled = false;
        }
        sound.play()
        lowIndicator.text = "rest"
    }
}

var toggleEnabled = function() {
    if(enabled) {
        startButton.text = "stop/reset"
        lowIndicator.text = "get ready"
    }
    else {
        time = 0;
        round = 0;
        startButton.text = "start"
        lowIndicator.text = "get ready"
    }
}
