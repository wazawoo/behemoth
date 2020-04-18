/// @description Insert description here
// You can write your code in this editor


switch (room) {
	case rTitle:
		draw_text(50, 50, "title");
		break;
	case rGame:
		with (oSection) {
			script_execute(DrawStatus, object_index);
		}
		break;
	case rRetry:
		draw_text(50, 50, "retry");
		break;
	case rSuccess:
		draw_text(50, 50, "success");
		break;
}
