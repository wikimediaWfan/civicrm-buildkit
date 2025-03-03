/**
 * The `min` list identifies the lowest recommended versions of the system requirements.
 *
 * We rely on a mix of packages from Nix upstream v18.03 (`pkgs`) and custom forks (`bkpkgs`).
 */
let
    dists = import ../../pins;

in (import ../base/default.nix) ++ (import ../mgmt/default.nix) ++ [

    dists.bkit.php71
    dists.v2105.nodejs-14_x
    dists.v2111.apacheHttpd
    dists.v1809.mailcatcher
    dists.v1803.memcached
    dists.bkit.mysql56
    dists.v1803.redis
    dists.bkit.transifexClient

]
