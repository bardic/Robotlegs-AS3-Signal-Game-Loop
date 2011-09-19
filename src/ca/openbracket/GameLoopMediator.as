package ca.openbracket {


import ca.openbracket.event.GameLoopEvent;
import ca.openbracket.signal.GameLoopSignal;

import com.bit101.components.PushButton;

import flash.events.Event;

import flash.events.MouseEvent;

import org.robotlegs.mvcs.Mediator;

public class GameLoopMediator extends Mediator {

    [Inject]public var view:Signals_Gameloop;
    [Inject]public var gameLoopSignal:GameLoopSignal;
    override public function onRegister():void {
        view.startLoop.addEventListener(MouseEvent.CLICK,onStartLoop);
        view.stopLoop.addEventListener(MouseEvent.CLICK, onStopLoop);
    }

    private function onGameLoop():void {
        trace("game look is running");
    }

    private function onStopLoop(ev:MouseEvent):void {
        dispatch(new GameLoopEvent(GameLoopEvent.STOP_LOOP));
        trace("STOP GAME LOOP");
    }

    private function onStartLoop(ev:MouseEvent):void {
        trace("START GAME LOOP");
        gameLoopSignal.add(onGameLoop);
        dispatch(new GameLoopEvent(GameLoopEvent.START_LOOP));
    }
}
}