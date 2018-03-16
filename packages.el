;;; packages.el --- fzf layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Aaron Ash <aaron@Aarons-MacBook-Air.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `fzf-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `fzf/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `fzf/pre-init-PACKAGE' and/or
;;   `fzf/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst fzf-packages
  '((fzf :location (recipe :fetcher github :repo "seenaburns/fzf.el"))))

(defun fzf/init-fzf ()
  (use-package fzf
    :defer 1
    :commands (spacemacs/fzf-find-files)
    :init
    (progn
      (spacemacs/set-leader-keys
        "of"  'spacemacs/fzf-find-files))))

;;; packages.el ends here
