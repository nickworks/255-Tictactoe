package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Game extends MovieClip {
		
		var isItPlayerOnesTurn:Boolean = true;
		
		public function Game() {
			
			b1.buttonMode = true;
			b2.buttonMode = true;
			b3.buttonMode = true;
			b4.buttonMode = true;
			b5.buttonMode = true;
			b6.buttonMode = true;
			b7.buttonMode = true;
			b8.buttonMode = true;
			b9.buttonMode = true;
			
			b1.stop();
			b2.stop();
			b3.stop();
			b4.stop();
			b5.stop();
			b6.stop();
			b7.stop();
			b8.stop();
			b9.stop();
			
			b1.addEventListener(MouseEvent.CLICK, handleClick);
			b2.addEventListener(MouseEvent.CLICK, handleClick);
			b3.addEventListener(MouseEvent.CLICK, handleClick);
			b4.addEventListener(MouseEvent.CLICK, handleClick);
			b5.addEventListener(MouseEvent.CLICK, handleClick);
			b6.addEventListener(MouseEvent.CLICK, handleClick);
			b7.addEventListener(MouseEvent.CLICK, handleClick);
			b8.addEventListener(MouseEvent.CLICK, handleClick);
			b9.addEventListener(MouseEvent.CLICK, handleClick);
			
		}
		
		function handleClick(e:MouseEvent):void {
			
			
			if(e.target.currentFrame != 1) return;
			
			if(isItPlayerOnesTurn){
				e.target.gotoAndStop(2);
			} else {
				e.target.gotoAndStop(3);
			}
			
			isItPlayerOnesTurn = !isItPlayerOnesTurn;
			
			// toggle visibilty of UI elements
			// TODO: look for a winner...
			
		}
		
	}
	
}
