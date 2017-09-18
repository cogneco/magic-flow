use draw
use flow

Consumer: abstract class extends Filter {
	init: func {
		super(0)
	}
	receive: abstract func (frame: Frame)
	_receive: Func(Frame)
	getInput: override func (index: Int) -> Func(Frame) {
		result: Func(Frame)
		if (index == 0)
			result = func(frame: Frame) { this receive(frame) }
		else
			result = func(frame: Frame) { }
		result
	}
}
