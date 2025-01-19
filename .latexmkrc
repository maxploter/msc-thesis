# Add --shell-escape flag needed for minted
$latex = 'latex  %O  --shell-escape %S';
$pdflatex = 'pdflatex  %O  --shell-escape %S';



ensure_path( 'TEXINPUTS', './estonian//' );
ensure_path( 'TEXINPUTS', './english//' );