package ca.openbracket.event {

import flash.events.Event;

public class GameLoopEvent extends Event {

    public static const START_LOOP:String = "START_LOOP";
    public static const STOP_LOOP:String = "STOP_LOOP";

    public function GameLoopEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
    }

    override public function clone():Event {
        return new GameLoopEvent(type, bubbles, cancelable);
    }
}
}