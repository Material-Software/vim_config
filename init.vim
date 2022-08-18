:set number
:set shiftwidth=4
:set path+=**
:set nowrap
:set laststatus=0

:nnoremap<c-t> :tabnew<cr>
:nnoremap<c-left> :tabp<cr>
:nnoremap<c-right> :tabn<cr>
:nnoremap<c-up> :find<space>
:inoremap<c-l> <right><backspace>

"snippets

:nnoremap ,cout :-1read ~/.config/nvim/snippets/cout.txt<CR>13li
:nnoremap ,if :-1read ~/.config/nvim/snippets/if.txt<CR>3li
:nnoremap ,for :-1read ~/.config/nvim/snippets/for.txt<CR>19li
:nnoremap ,while :-1read ~/.config/nvim/snippets/while.txt<CR>6li
:nnoremap ,main :-1read ~/.config/nvim/snippets/main.txt<CR>4j$i
:nnoremap ,class :-1read ~/.config/nvim/snippets/class.txt<CR> <bar> :sleep 1 <bar> :%s /tempClassName
:nnoremap ,struct :-1read ~/.config/nvim/snippets/struct.txt<CR> <bar> :sleep 1 <bar> :%s /tempStructName
:nnoremap ,inc :-1read ~/.config/nvim/snippets/include.txt<CR>10li
:nnoremap ,func :-1read ~/.config/nvim/snippets/function.txt<CR> <bar> :sleep 1 <bar> :%s /tempFunctionName/



call plug#begin()
Plug 'Mofiqul/vscode.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'projekt0n/github-nvim-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()





" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"Plug 'neoclide/coc.nvim', {'branch': 'release'}
:colorscheme github_dark_default
":colorscheme vscode 
