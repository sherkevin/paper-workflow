#!/usr/bin/env python3
import argparse
import hashlib
import pathlib


def sha256(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def main() -> int:
    parser = argparse.ArgumentParser(description="Build a simple SHA256 manifest.")
    parser.add_argument("root", help="Directory to manifest")
    parser.add_argument("--output", default="MANIFEST.tsv")
    args = parser.parse_args()

    root = pathlib.Path(args.root).resolve()
    output = root / args.output
    rows = []
    for path in sorted(root.rglob("*")):
        if not path.is_file():
            continue
        if path.resolve() == output.resolve():
            continue
        rel = path.relative_to(root).as_posix()
        rows.append((rel, path.stat().st_size, sha256(path)))

    with output.open("w", encoding="utf-8", newline="\n") as f:
        f.write("path\tbytes\tsha256\n")
        for rel, size, digest in rows:
            f.write(f"{rel}\t{size}\t{digest}\n")

    print(f"OK wrote {len(rows)} entries to {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

