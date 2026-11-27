# Always build with LuaLaTeX (pdf_mode 4 = lualatex)
$pdf_mode = 4;
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$postscript_mode = $dvi_mode = 0;

# biblatex with biber backend
$bibtex_use = 2;

# Workaround: TeX Live 2026's universal biber fails to self-extract on this macOS
# ("extracting arm64 binary with lipo failed"). Keep a thinned arm64 copy in
# ~/.local/bin and use it. The copy is (re)made automatically when missing or
# when TeX Live's biber is newer (e.g. after `tlmgr update`).
use Cwd 'abs_path';
my $tl_biber    = abs_path('/Library/TeX/texbin/biber');
my $local_biber = "$ENV{HOME}/.local/bin/biber";
chomp(my $machine = `uname -m`);
if ($^O eq 'darwin' && $machine eq 'arm64' && $tl_biber && -x $tl_biber) {
    if (!-x $local_biber || (stat($tl_biber))[9] > (stat($local_biber))[9]) {
        mkdir "$ENV{HOME}/.local"; mkdir "$ENV{HOME}/.local/bin";
        print "latexmkrc: extracting arm64 biber to $local_biber\n";
        if (system('lipo', $tl_biber, '-thin', 'arm64', '-output', $local_biber) == 0) {
            chmod 0755, $local_biber;
        } else {
            warn "latexmkrc: lipo failed; falling back to TeX Live biber\n";
        }
    }
}
if (-x $local_biber) {
    $biber = "\"$local_biber\" %O %S";
}

# Also delete these on `latexmk -c`
$clean_ext = 'bbl run.xml synctex.gz';
