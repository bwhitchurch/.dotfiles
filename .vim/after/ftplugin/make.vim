au Bufwritepre,filewritepre <buffer> silent! :call Preserve(":call UpdateFileName()")
au Bufwritepre,filewritepre <buffer> silent! :call Preserve(":call UpdateLastModified()")
au Bufwritepre,filewritepre <buffer> silent! :call Preserve(":call UpdateModifiedBy()")
