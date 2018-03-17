
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

(defun spacemacs/fzf-buffers ()
  "Custom fzf-buffers.
TODO: Kill the *fzf* buffer when leaving insert mode"
  (interactive)
  (fzf-switch-buffer))

;; (defun spacemacs/fzf-grep ()
;;   "Custom fzf-grep.
;; TODO: Kill the *fzf* buffer when leaving insert mode"
;;   (interactive)
;;   (fzf-grep))
