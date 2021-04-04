PKG_NAME="glsl-shaders"
PKG_VERSION="d7928c3"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/glsl-shaders"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="libretro_suite"
PKG_SHORTDESC="Common GSLS shaders for RetroArch"
PKG_TOOLCHAIN="manual"

#configure_target() {
#  cd $PKG_BUILD
#}

makeinstall_target() {
  cd ${PKG_BUILD}
  make install INSTALLDIR="${INSTALL}/usr/share/common-shaders"
}