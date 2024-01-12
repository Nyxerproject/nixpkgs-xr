# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  index_camera_passthrough = {
    pname = "index_camera_passthrough";
    version = "19178f5ffeecaf594d20c50c969c464fb09b1062";
    src = fetchgit {
      url = "https://github.com/yshui/index_camera_passthrough.git";
      rev = "19178f5ffeecaf594d20c50c969c464fb09b1062";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-XvoMV7CCOyzesd58IjjHZS0mJQcG9RxW58csRjE9Ids=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./index_camera_passthrough-19178f5ffeecaf594d20c50c969c464fb09b1062/Cargo.lock;
      outputHashes = {
        "vulkano-0.34.0" = "sha256-co2+rDJ1jOee36x9FcLX2Pze9ZItBYHq9/pEq0NhcpY=";
      };
    };
    date = "2023-12-21";
  };
  monado = {
    pname = "monado";
    version = "084dae3c7eef6536ab8501dd8f42ec3ad9d88e33";
    src = fetchgit {
      url = "https://gitlab.freedesktop.org/monado/monado.git";
      rev = "084dae3c7eef6536ab8501dd8f42ec3ad9d88e33";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-VkjxPUOSv6AJaOaWgypglgvP63PlPx0O/7iir/y3vKw=";
    };
    date = "2024-01-10";
  };
  opencomposite = {
    pname = "opencomposite";
    version = "2ab29e49c96c5e446e439a408521a677737c4956";
    src = fetchgit {
      url = "https://gitlab.com/znixian/OpenOVR.git";
      rev = "2ab29e49c96c5e446e439a408521a677737c4956";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-he8ceYe6Q9DeaBkjvOihcd7DP6hCR0XVeRl7ySonUXk=";
    };
    date = "2023-12-29";
  };
}
