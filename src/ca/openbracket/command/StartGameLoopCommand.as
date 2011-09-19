package ca.openbracket.command {

import ca.openbracket.signal.GameLoopSignal;

import flash.events.Event;

import org.osflash.signals.Signal;

import org.robotlegs.mvcs.Command;

public class StartGameLoopCommand extends Command {
    [Inject]public var gameLoopSignal:GameLoopSignal;
    override public function execute():void {
        contextView.addEventListener(Event.ENTER_FRAME, onEnterFrame);
    }

    private function onEnterFrame(ev:Event):void{
        gameLoopSignal.dispatch();
    }
}
}