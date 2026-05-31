#!/usr/bin/env python3
import argparse
import csv
import hashlib
import pathlib


def sha256(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest().upper()


def main() -> int:
    parser = argparse.ArgumentParser(description="Verify MANIFEST.tsv.")
    parser.add_argument("root", help="Directory containing manifest")
    parser.add_argument("--manifest", default="MANIFEST.tsv")
    args = parser.parse_args()

    root = pathlib.Path(args.root).resolve()
    manifest = root / args.manifest
    if not manifest.exists():
        raise SystemExit(f"missing manifest: {manifest}")

    checked = 0
    with manifest.open("r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            path = root / row["path"]
            if not path.exists():
                raise SystemExit(f"missing file: {row['path']}")
            size = path.stat().st_size
            if size != int(row["bytes"]):
                raise SystemExit(f"size mismatch: {row['path']} expected {row['bytes']} got {size}")
            digest = sha256(path)
            if digest != row["sha256"].upper():
                raise SystemExit(f"sha256 mismatch: {row['path']} expected {row['sha256']} got {digest}")
            checked += 1

    print(f"OK {checked} manifest entries checked")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

