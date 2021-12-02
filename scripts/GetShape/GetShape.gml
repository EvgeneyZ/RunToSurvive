///@desc GetShape();
function GetShape() {

	///Return a shape of blocks

	var _shapes = [
		[
			[2, 1, 1, 1, -1, 1, 1, 1, 1, 3]
		],
	
		[
			[0, 0, 0, 0, 0, 2, 1, -1, 1, 3],
			[2, 1, 1, 1, 1, 4, 4, 4, 4, 4]
		],
	
		[
			[0, 0, 0, 0, 2, 1, -1, 1, 3, 0],
			[0, 0, 2, 1, 4, 4, 4, 4, 4, 3],
			[2, 1, 4, 4, 4, 4, 4, 4, 4, 4]
		],
	
		[
			[0, 2, 3, 0, 0, 0, 0, 2, -3, 0],
			[0, 4, 4, 3, 0, 0, 2, 4, 4, 0],
			[2, 4, 4, 4, 0, 0, 4, 4, 4, 3],
			[4, 4, 4, 4, 1, 1, 4, 4, 4, 4]
		]
	];	

	return _shapes[irandom(array_length_1d(_shapes) - 1)];


}