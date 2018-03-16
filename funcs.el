
(defun spacemacs/fzf-find-files ()
  "Custom fzf-find-files.
TODO: Kill the *fzf* buffer when leaving insert mode"
  (interactive)
  (fzf-find-file))

(defun spacemacs/fzf-recentf ()
  "Custom fzf-recentf.
TODO: Kill the *fzf* buffer when leaving insert mode"
  (interactive)
  (fzf-recentf))
