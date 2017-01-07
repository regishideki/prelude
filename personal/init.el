(prelude-require-packages '(yasnippet))

(yas-global-mode 1)
(helm-projectile-on)
(global-linum-mode 1)

(desktop-save-mode 1)

(defun add-projects(dir projects)
  (while projects
    (projectile-add-known-project (concat dir "/" (car projects)))
    (setq projects (cdr projects))))

(defvar workspace "~/workspace")
(defvar personal_workspace (concat workspace "/regis"))
(defvar bankfacil_workspace (concat workspace "/bankfacil"))
(defvar personal_projects '("programming-challenges" "presentations" "project_euler" "programming-languages"))
(defvar bankfacil_projects '("core" "operational" "provisioning" "front" "middle-office" "ember-cli-bkf-core" "provisioning-dev" "qa-functional-specs" "docker-dev"))

(add-projects personal_workspace personal_projects)
(add-projects bankfacil_workspace bankfacil_projects)
