" ViM Pastebin extension
"
" Original version by Dennis, at
" http://djcraven5.blogspot.com/2006/10/vimpastebin-post-to-pastebin-from.html
"
" Updated in 2008 Olivier Lê Thanh Duong <olethanh@gmail.com>
" to use an XML-RPC interface compatible with http://paste.debian.net/rpc-interface.html
"
" Updated in 2009 for python compatibility by Balazs Dianiska
" <balazs@longlake.co.uk>
"
" Updated in 2010 for pastebin.com compatibility, removed gajim and xmlrpc
" support.
"
" Updated in 2011 to make filetypes work (hack) and full file post work
" and to add automatic user detection by Ben Sinclair
" <ben@moopet.net>
"
" Make sure the Vim was compiled with +python before loading the script...
if !has("perl")
        finish
endif

" Map a keystroke for Visual Mode only (default:F2)
:vmap <f2> :PasteCode<cr>

" Send to pastebin
:command -range -nargs=* PasteCode :call PasteMe(<line1>,<line2>,"None")

function! PasteMe(line1, line2, args)
perl << EOF
use WWW::Pastebin::PastebinCom::API;

$line1 = VIM::Eval('a:line1');
$line2 = VIM::Eval('a:line2');
($extension) = $curbuf->Name() =~ /\.([^.]+)$/;

%fileformats = (
	'txt' => 'text', 'py' => 'python', 
	'sh' => 'bash', 'pl' => 'perl', 'pm' => 'perl',
       	'css' => 'css', 'php' => 'php', 'html' => 'html',
        'java' => 'java', 'conf' => 'apache'
);

# Setting file format
$fileformat = $fileformats{$extension} || "text" ;

# Extracting code to paste
# @code = $curbuf->Get($line1 .. $line2);
$code = join("\n", $curbuf->Get($line1 .. $line2));

# Paste Code
my $bin = WWW::Pastebin::PastebinCom::API->new(
	api_key => 'ea3cd45bb778e528e1262fbe9dc64f0a',
);
print VIM::Msg($bin->paste($code,
			   format => $fileformat)
);

EOF
endfunction
