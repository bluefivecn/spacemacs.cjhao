;;; packages.el --- cjhao layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <CJHao@NLTC163>
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
;; added to `cjhao-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `cjhao/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `cjhao/pre-init-PACKAGE' and/or
;;   `cjhao/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst cjhao-packages
  '(
    ;;restclient
    ;;textmate
    wttrin
    youdao-dictionary
    )
  "The list of Lisp packages required by the cjhao layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")
(defun cjhao/init-wttrin ()
 (use-package wttrin
   :defer t
   :init 
   (setq wttrin-default-cities '("Tianjin")
   )))
(defun cjhao/init-youdao-dictionary ()
 (use-package youdao-dictionary
   :defer t
   :init 
   :config))
;;(defun cjhao/init-restclient ()
;;  (use-package restclient
;;    :defer t
;;    :init 
;;    :config))

;;(defun cjhao/init-textmate ()
;;  (use-package textmate
;;    :defer t
;;    :init
;;    :config))
;;; packages.el ends here
