# Hashcom

A repository of hashed comments. Computes an 8-char SHA-256 fingerprint of a file and outputs it as a `/* comment */`. Matches against the `hc/` registry of known JS/CSS library headers.

# INSTALL

```bash
git clone https://github.com/Rbcafe/Hashcom ./hashcom
cd ./hashcom
chmod u+x hashcom.sh hashcomnf.sh
```

# USAGE

```bash
./hashcom.sh FILE                # with figlet banner
./hashcom.sh --no-figlet FILE    # without banner
./hashcomnf.sh FILE              # alias for --no-figlet
./hashcom.sh --help
```

# hc/ registry

Each file in `hc/` is named after an 8-char hash and contains the matching library comment block. When a hash matches, it is printed alongside the result.

# NOTE

`hashcomnf.sh` is kept for backwards compatibility — it is a wrapper around `hashcom.sh --no-figlet`.
