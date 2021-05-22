PKG_NAME="lowres_nx"
PKG_VERSION="12aeb16"
PKG_LICENSE="Zlib"
PKG_SITE="https://github.com/timoinutilis/lowres-nx"
PKG_URL="${PKG_SITE}.git"
PKG_GIT_CLONE_BRANCH="retroarch"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="A simulated retro game console, which can be programmed in the classic BASIC language"
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-C platform/LibRetro"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v platform/LibRetro/lowresnx_libretro.so ${INSTALL}/usr/lib/libretro/
}