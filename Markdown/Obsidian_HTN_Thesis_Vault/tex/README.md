# Minimal Bachelor's Thesis LaTeX starter

## Files
- `main.tex`: main document and chapter scaffold.
- `images/logo.png`: replace this with your logo, keeping the filename `logo.png`, or update the path in `main.tex`.

## Overleaf setup
1. Create a blank project or upload this ZIP to Overleaf.
2. Upload your university's official title page and affidavit files, if they are separate `.tex` files.
3. Add `\input{titlepage}` and `\input{affidavit}` near the top of `main.tex`, adjusting the filenames to match. If the university provides a single combined file, include that file instead.
4. Upload your logo to `images/logo.png`.
5. Set `main.tex` as the Main document in Overleaf if it is not selected automatically.

The logo header uses `fancyhdr` and checks whether `images/logo.png` exists, so the project can compile before you add the logo. The university's title page and affidavit should remain as provided; confirm any university-specific rules on page numbering, margins, and headers before final submission.

This is a starting structure, not a guarantee that the university's official formatting requirements are met.
