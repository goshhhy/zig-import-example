#include "../../swrender/r_common.h"


int main( int argc, char** argv ) {
	if ( softRwInit() != 0 ) {
		fprintf( stderr, "failed to initialize sofware renderer\n" );
		exit( 1 );
	}
	switch ( softRwSetMode( 640, 480, 0, false ) ) {
		case renderErr_ok: break;
		case renderErr_invalid_fullscreen:
		case renderErr_invalid_mode:
		case renderErr_unknown:
			fprintf( stderr, "failed setting renderer mode\n" );
			exit( 2 ); 
	}
	printf("wheeeeee\n");
}