" ============================================================================
" File: after/plugin/ctrlsf.vim
" Description: An ack/ag powered code search and view tool.
" Author: Ye Ding <dygvirus@gmail.com>
" Licence: Vim licence
" Version: 0.01
" ============================================================================

func! CtrlSFStatusLine(...)
    " main window
    if bufname('%') == '__CtrlSF__'
        let w:airline_section_a = 'CtrlSF'
        let w:airline_section_b = '%{ctrlsf#utils#SectionB()}'
        let w:airline_section_c = '%{ctrlsf#utils#SectionC()}'
        let w:airline_section_x = '%{ctrlsf#utils#SectionX()}'
        let w:airline_section_y = ''
    endif

    " preview window
    if bufname('%') == '__CtrlSFPreview__'
        let w:airline_section_a = 'Preview'
        let w:airline_section_c = '%{ctrlsf#utils#PreviewSectionC()}'
    endif

    if bufname('%') == '__CtrlSFEdit__'
        let w:airline_section_a = 'Edit'
        let w:airline_section_c = '%{ctrlsf#utils#EditSectionC()}'
    endif
endf

if exists('g:loaded_airline')
    call airline#add_statusline_func('CtrlSFStatusLine')
endif
