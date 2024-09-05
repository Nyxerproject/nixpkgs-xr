{
  lib,
  stdenv,
  rustPlatform,
  fetchFromGitHub,
  alsa-lib,
  dbus,
  fontconfig,
  libxkbcommon,
  makeWrapper,
  openvr,
  openxr-loader,
  pipewire,
  pkg-config,
  pulseaudio,
  shaderc,
  wayland,
  xorg,
}:
rustPlatform.buildRustPackage rec {
  pname = "motoc";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "galister";
    repo = "motoc";
    rev = "v${version}";
    hash = "sha256-0000000000000000000000000000000000000000000=";
  };

  cargoLock = {
    lockFile = ../../_sources/motoc-ffc7696a607cb3efa2e3840292986d16d3d08574/Cargo.lock;
    # outputHashes = {
    # "ovr_overlay-0.0.0" = "sha256-9999999999999999999999999999999999999999999=";
    # "vulkano-0.34.0" = "sha256-7777777777777777777777777777777777777777777=";
    # "wlx-capture-0.3.1" = "sha256-8888888888888888888888888888888888888888888=";
    # };
  };

  nativeBuildInputs = [
    makeWrapper
    pkg-config
    rustPlatform.bindgenHook
  ];

  buildInputs = [
    alsa-lib
    dbus
    fontconfig
    libxkbcommon
    openvr
    openxr-loader
    pipewire
    xorg.libX11
    xorg.libXext
    xorg.libXrandr
  ];

  env.SHADERC_LIB_DIR = "${lib.getLib shaderc}/lib";

  postPatch = ''
    substituteAllInPlace src/res/watch.yaml \
      --replace '"pactl"' '"${lib.getExe' pulseaudio "pactl"}"'

    # TODO: src/res/keyboard.yaml references 'whisper_stt'
  '';

  # postInstall = ''
  # patchelf $out/bin/motoc \
  # --add-needed ${lib.getLib wayland}/lib/libwayland-client.so.0 \
  # --add-needed ${lib.getLib libxkbcommon}/lib/libxkbcommon.so.0
  # '';

  meta = with lib; {
    description = "a thing for playspace calibration";
    homepage = "https://github.com/galister/motoc";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [idk];
    platforms = platforms.linux;
    broken = stdenv.isAarch64;
    mainProgram = "motoc";
  };
}
