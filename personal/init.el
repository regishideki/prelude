(prelude-require-packages '(yasnippet))

(yas-global-mode 1)
(helm-projectile-on)
(global-linum-mode 1)


(require 'desktop)
;; ask to save session before closing
(desktop-save-mode 1)
;; save session when emacs is idle
(defun my-desktop-save ()
  (interactive)
  ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
  (if (eq (desktop-owner) (emacs-pid))
      (desktop-save desktop-dirname)))
(add-hook 'auto-save-hook 'my-desktop-save)
