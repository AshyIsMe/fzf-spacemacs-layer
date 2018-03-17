;;; packages.el --- fzf layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Aaron Ash <aaron.ash@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; The beginnings of an fzf layer to replace helm.

;; TODO:
;;  - Kill the *fzf* buffer and process on exiting insert mode in the *fzf* buffer
;;    (For now C-c C-c seems to work)
;;  - Fix C-j C-k etc keybindings (so behaviour is the same as fzf.vm)
;;  - set-leader-keys properly to override the helm ones

;;; Code:

(defconst fzf-packages
  ;; '((fzf :location (recipe :fetcher github :repo "seenaburns/fzf.el"))))  ;; Upstream

  '((fzf :location (recipe :fetcher github :repo "AshyIsMe/fzf.el"))))  ;; temporary
  ;; '((fzf :location local)))

(defun fzf/init-fzf ()
  (use-package fzf
    :defer 1
    :commands (spacemacs/fzf-find-files)
    :init
    (progn
      (spacemacs/set-leader-keys
        "off"  'spacemacs/fzf-find-files
        "ofr"  'spacemacs/fzf-recentf
        "obb"  'spacemacs/fzf-buffers
        ))))

;;; packages.el ends here
