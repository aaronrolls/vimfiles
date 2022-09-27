
set number
set relativenumber
set noshowmode
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

function EnterInsertMode()
    set norelativenumber
endfunction

function LeaveInsertMode()
	set relativenumber
endfunction

autocmd InsertEnter * call EnterInsertMode()
autocmd InsertLeave * call LeaveInsertMode()

autocmd BufLeave * call LeaveInsertMode()
