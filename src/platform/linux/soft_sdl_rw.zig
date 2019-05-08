const c = @cImport(@cInclude("../../src/swrender/r_common.h"));

export fn softRwBeginFrame(camera_separation: f32) void {

}

export fn softRwEndFrame() void {

}

export fn softRwInit() i32 {
    return 0;
}

export fn softRwSetPalette( pal: [256]u8 ) void {

}

export fn softRwShutdown() void {

}

export fn softRwSetMode( width: u32, height: u32, mode: u32, fullscreen: bool ) c.renderErr_t {
    return renderErr_ok;
}