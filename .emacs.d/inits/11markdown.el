(add-hook 'markdown-mode-hook
          '(lambda () (outline-minor-mode t)))


(defun md2pdf ()
  "Generate pdf from currently open markdown."
  (interactive)
  (shell-command-to-string
   (concat "pandoc "
	   (buffer-file-name (current-buffer))
	   " -o "
	   (file-name-sans-extension (buffer-file-name (current-buffer)))
	   ".pdf -V mainfont=IPAPGothic -V fontsize=16pt --pdf-engine=lualatex")))


(defun md2docx ()
  "Generate docx from currently open markdown."
  (interactive)
  (shell-command-to-string
   (concat "pandoc "
	   (buffer-file-name (current-buffer))
	   " -t docx -o "
	   (file-name-sans-extension (buffer-file-name (current-buffer)))
	   ".docx -V mainfont=IPAPGothic -V fontsize=16pt --toc --highlight-style=zenburn")))


;; markdown-preview like github
(setq markdown-command "github-markup"
      markdown-command-needs-filename t
      markdown-content-type "application/xhtml+xml"
      markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown.min.css"
			   "http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/styles/github.min.css")
      markdown-xhtml-header-content "
<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
<style>
body {
  box-sizing: border-box;
  max-width: 740px;
  width: 100%;
  margin: 40px auto;
  padding: 0 10px;
}
</style>
<script src='http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/highlight.min.js'></script>
<script>
document.addEventListener('DOMContentLoaded', () => {
  document.body.classList.add('markdown-body');
  document.querySelectorAll('pre[lang] > code').forEach((code) => {
    code.classList.add(code.parentElement.lang);
    hljs.highlightBlock(code);
  });
});
</script>
")
