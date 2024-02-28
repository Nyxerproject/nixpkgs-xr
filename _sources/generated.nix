# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  index_camera_passthrough = {
    pname = "index_camera_passthrough";
    version = "04fb965edb14eee5a3591ea35d35c33e428ba7fe";
    src = fetchgit {
      url = "https://github.com/yshui/index_camera_passthrough.git";
      rev = "04fb965edb14eee5a3591ea35d35c33e428ba7fe";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-UAyXAPqJqq1uGrpW3AEQB/pyE3yoFa32tJxLVhI+OPs=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./index_camera_passthrough-04fb965edb14eee5a3591ea35d35c33e428ba7fe/Cargo.lock;
      outputHashes = {
        "vulkano-0.34.0" = "sha256-co2+rDJ1jOee36x9FcLX2Pze9ZItBYHq9/pEq0NhcpY=";
      };
    };
    date = "2024-02-27";
  };
  monado = {
    pname = "monado";
    version = "42047ef15719c479a59da0adb88c6b99ccefdbca";
    src = fetchgit {
      url = "https://gitlab.freedesktop.org/monado/monado.git";
      rev = "42047ef15719c479a59da0adb88c6b99ccefdbca";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-kML5KdJ7W/7CAPv9GoxVdzfMNK81VYIcHd22+PWUUBU=";
    };
    date = "2024-02-26";
  };
  opencomposite = {
    pname = "opencomposite";
    version = "021a644e0da02d77ec131c5878598f3897c0e86b";
    src = fetchgit {
      url = "https://gitlab.com/znixian/OpenOVR.git";
      rev = "021a644e0da02d77ec131c5878598f3897c0e86b";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-qW0Tbe3zXBu+lAGwPjPuRJIVUgxTkYUAn6fNo17X7oU=";
    };
    date = "2024-02-11";
  };
  wlx-overlay-s = {
    pname = "wlx-overlay-s";
    version = "8e2677bd87c11292d90986851f9e999c976d4410";
    src = fetchgit {
      url = "https://github.com/galister/wlx-overlay-s.git";
      rev = "8e2677bd87c11292d90986851f9e999c976d4410";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-fsPhzM1wfD26Sil9fxbObHYYMigIPp0acE5NXfWGm0Y=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./wlx-overlay-s-8e2677bd87c11292d90986851f9e999c976d4410/Cargo.lock;
      outputHashes = {
        "vulkano-0.34.0" = "sha256-0ZIxU2oItT35IFnS0YTVNmM775x21gXOvaahg/B9sj8=";
        "ovr_overlay-0.0.0" = "sha256-KpvNJraDRtJEg8BPpQqpeZ5Yxx2FII+QNDu6wsDwzsI=";
        "wlx-capture-0.2.0" = "sha256-4Ntx6ysYmmj0XG56fGMS8pHgYwfm3HHQJIDUmxSsukU=";
      };
    };
    date = "2024-02-28";
  };
}
