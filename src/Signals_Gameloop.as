package {

import ca.openbracket.SignalsGameLoopContext;

import com.bit101.components.PushButton;

import flash.display.Sprite;

public class Signals_Gameloop extends Sprite {
    protected var context:SignalsGameLoopContext;

    public var startLoop:PushButton;
    public var stopLoop:PushButton;

    public function Signals_Gameloop() {
        startLoop = new PushButton(this,0,0,"Start GameLoop");
        stopLoop = new PushButton(this,0,30,"Stop GameLoop");
        context = new SignalsGameLoopContext(this);
    }
}
}
