/**
 * Created by IntelliJ IDEA.
 * User: tgillis
 * Date: 9/19/11
 * Time: 12:51 PM
 * To change this template use File | Settings | File Templates.
 */
package ca.openbracket {
import ca.openbracket.signal.GameLoopSignal;

import flash.display.DisplayObjectContainer;

import org.robotlegs.base.ContextEvent;
import org.robotlegs.mvcs.SignalContext;

public class SignalsGameLoopContext extends SignalContext {
    public function SignalsGameLoopContext(contextView:DisplayObjectContainer) {
        super(contextView);
    }

    override public function startup():void{
        commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);
        injector.mapSingleton(GameLoopSignal);
        mediatorMap.mapView(Signals_Gameloop, GameLoopMediator);
        super.startup();
    }
}
}
