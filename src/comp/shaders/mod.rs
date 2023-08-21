//! Shader code for rendering batches.

/// OpenGL shader code.
pub mod gl {
    /// Base vertex shader.
    pub const BASE_VS: &str = include_str!("base.vert");

    /// Base fragment shader.
    pub const BASE_FS: &str = include_str!("base.frag");

    /// Subpixel text fragment shader.
    pub const SUBPIXEL_FS: &str = include_str!("subpixel.frag");
}
