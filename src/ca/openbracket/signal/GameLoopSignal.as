/**
 * Created by IntelliJ IDEA.
 * User: tgillis
 * Date: 9/19/11
 * Time: 1:03 PM
 * To change this template use File | Settings | File Templates.
 */
package ca.openbracket.signal {
import flash.display.Shape;
import flash.events.Event;

import org.osflash.signals.Signal;

public class GameLoopSignal extends Signal{
    private var shape:Shape;
    public function GameLoopSignal() {
        shape = new Shape();
    }

    private function onEnter(ev:Event):void {
        this.dispatch();
    }

    public function start():void{
        shape.addEventListener(Event.ENTER_FRAME, onEnter);
    }

    public function stop():void{
        shape.removeEventListener(Event.ENTER_FRAME, onEnter);
    }
}
}
