const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const render_sdl = b.addSharedLibrary("render_sdl", null, b.version(3, 19, 0));
    render_sdl.setBuildMode(mode);

    const obj = b.addObject("src/platform/linux/soft_sdl_rw.zig", "src/platform/linux/soft_sdl_rw.zig");
    render_sdl.addObject(obj);
    render_sdl.addCSourceFile("src/platform/linux/sys_main.c", [][]const u8{"-std=c99"});

    render_sdl.linkSystemLibrary("c");
    render_sdl.addIncludeDir("./");

    b.default_step.dependOn(&render_sdl.step);
}
