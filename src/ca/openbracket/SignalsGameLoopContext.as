/**
 * Created by IntelliJ IDEA.
 * User: tgillis
 * Date: 9/19/11
 * Time: 12:51 PM
 * To change this template use File | Settings | File Templates.
 */
package ca.openbracket {
import ca.openbracket.command.StartGameLoopCommand;
import ca.openbracket.command.StopGameLoopCommand;
import ca.openbracket.event.GameLoopEvent;
import ca.openbracket.signal.GameLoopSignal;

import flash.display.DisplayObjectContainer;

import org.robotlegs.base.ContextEvent;

import org.robotlegs.mvcs.Context;
import org.robotlegs.mvcs.SignalContext;

public class SignalsGameLoopContext extends SignalContext {
    public function SignalsGameLoopContext(contextView:DisplayObjectContainer) {
        super(contextView);
    }

    override public function startup():void{
        commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);
        commandMap.mapEvent(GameLoopEvent.START_LOOP, StartGameLoopCommand);
        commandMap.mapEvent(GameLoopEvent.STOP_LOOP, StopGameLoopCommand);

        injector.mapSingleton(GameLoopSignal);

        mediatorMap.mapView(Signals_Gameloop, GameLoopMediator);

        super.startup();
    }
}
}
