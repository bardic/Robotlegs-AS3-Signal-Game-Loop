package ca.openbracket.command {

import ca.openbracket.signal.GameLoopSignal;

import org.robotlegs.mvcs.Command;

public class StopGameLoopCommand extends Command {
    [Inject]public var gameLoopSignal:GameLoopSignal;
    override public function execute():void {
        gameLoopSignal.removeAll();
    }
}
}