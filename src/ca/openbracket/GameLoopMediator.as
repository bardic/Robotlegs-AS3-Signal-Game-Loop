package ca.openbracket {

import ca.openbracket.signal.GameLoopSignal;

import flash.events.Event;
import flash.events.MouseEvent;

import org.robotlegs.mvcs.Mediator;

public class GameLoopMediator extends Mediator {

    [Inject]public var view:Signals_Gameloop;
    [Inject]public var gameLoopSignal:GameLoopSignal;
    override public function onRegister():void {
        view.startLoop.addEventListener(MouseEvent.CLICK,onStartLoop);
        view.stopLoop.addEventListener(MouseEvent.CLICK, onStopLoop);
        gameLoopSignal.add(onGameLoop);
    }

    private function onGameLoop():void {
        trace("game look is running");
    }

    private function onStartLoop(ev:MouseEvent):void {
        gameLoopSignal.start();
    }

    private function onStopLoop(ev:MouseEvent):void {
        gameLoopSignal.stop()
    }
}
}