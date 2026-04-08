{
  description = "shtatus - simple, hackable shell status line generator";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      lib = nixpkgs.lib;
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forEachSystem = lib.genAttrs systems;
    in
    {
      packages = forEachSystem (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        rec {
          default = pkgs.stdenvNoCC.mkDerivation {
            pname = "shtatus";
            version = "unstable";
            src = ./.;

            installPhase = ''
              runHook preInstall

              install -Dm755 shtatus "$out/bin/shtatus"

              runHook postInstall
            '';

            meta = with pkgs.lib; {
              description = "Simple, hackable shell status line generator in POSIX shell";
              homepage = "https://github.com/tavocg/shtatus";
              license = licenses.gpl3Plus;
              mainProgram = "shtatus";
              platforms = platforms.linux;
            };
          };
        });

      apps = forEachSystem (system: {
        default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/shtatus";
        };
      });

      devShells = forEachSystem (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              bashInteractive
              shellcheck
              shfmt
            ];
          };
        });
    };
}
