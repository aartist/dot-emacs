;;; pkg-info-tests.el --- Unit tests for pkg-info    -*- lexical-binding: t; -*-

;; Copyright (C) 2013  Sebastian Wiesner

;; Author: Sebastian Wiesner <lunaryorn@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Unit tests for pkg-info.

;;; Code:

(require 'pkg-info)

(require 'ert)
(require 'lisp-mnt)

(require 'pkg-info-dummy-package)

(defconst pkg-info-ruby-mode-version
  (with-temp-buffer
    (insert-file-contents (find-library-name "ruby-mode"))
    (version-to-list (lm-header "Version"))))

(ert-deftest pkg-info-library-version/feature-exists ()
  (should (equal (pkg-info-library-version 'pkg-info-dummy-package) '(3 4 2 1))))

(ert-deftest pkg-info-library-version/builtin-feature ()
  (should (equal (pkg-info-library-version 'ruby-mode)
                 pkg-info-ruby-mode-version)))

(ert-deftest pkg-info-library-version/feature-does-not-exist ()
  (should-error (pkg-info-library-version 'no-such-feature)))

(ert-deftest pkg-info-library-version/loaded-feature-outside-load-path ()
  :expected-result 'failed
  ;; TODO: Fails?  We must find a way to get the defining file of a `require'
  (should (equal (pkg-info-library-version 'pkg-info) (pkg-info-version))))

(ert-deftest pkg-info-library-version/library-exists ()
  (should (equal (pkg-info-library-version "pkg-info-dummy-package.el")
                 '(3 4 2 1))))

(ert-deftest pkg-info-library-version/library-does-not-exist ()
  (should-error (pkg-info-library-version "no-such-library")))

(ert-deftest pkg-info-defining-library-version/defined-function ()
  (should (equal (pkg-info-defining-library-version
                  #'pkg-info-dummy-package-dummy-function)
                 '(3 4 2 1))))

(ert-deftest pkg-info-defining-library-version/undefined-function ()
  (should-error (pkg-info-defining-library-version #'this-is-no-function)))

(ert-deftest pkg-info-defining-library-version/anonymous-function-without-source ()
  (should-error (pkg-info-defining-library-version (lambda () "foo"))))

(ert-deftest pkg-info-package-version/installed-package ()
  (should (equal (pkg-info-package-version 'pkg-info-dummy-package) '(3 4 2 1))))

(ert-deftest pkg-info-package-version/package-does-not-exist ()
  (should-error (pkg-info-package-version 'no-such-package)))

(ert-deftest pkg-info-version-info/feature-and-package-are-the-same ()
  (should (equal (pkg-info-version-info 'pkg-info-dummy-package) "3.4.2.1")))

(ert-deftest pkg-info-version-info/library-and-package-are-the-same ()
  (should (equal (pkg-info-version-info "pkg-info-dummy-package") "3.4.2.1")))

(ert-deftest pkg-info-version-info/feature-and-package-are-different ()
  (should (equal (pkg-info-version-info 'ruby-mode 'pkg-info-dummy-package)
                 (format "%s (package 3.4.2.1)"
                         (pkg-info-format-version pkg-info-ruby-mode-version)))))

(ert-deftest pkg-info-version-info/library-and-package-are-different ()
  (should (equal (pkg-info-version-info "ruby-mode" 'pkg-info-dummy-package)
                 (format "%s (package 3.4.2.1)"
                         (pkg-info-format-version pkg-info-ruby-mode-version)))))

(ert-deftest pkg-info-version-info/package-does-not-exist ()
  (should (equal (pkg-info-version-info 'pkg-info-dummy-package 'no-such-package)
                 "3.4.2.1")))

(ert-deftest pkg-info-version-info/feature-does-not-exist ()
  (should-error (pkg-info-version-info 'no-such-library)))

(ert-deftest pkg-info-version-info/library-does-not-exist ()
  (should-error (pkg-info-version-info "no-such-library")))

(ert-deftest pkg-info-format-version/release-version ()
  (should (equal (pkg-info-format-version '(3 4 2 1)) "3.4.2.1")))

(ert-deftest pkg-info-format-version/prerelease-version ()
  (should (equal (pkg-info-format-version '(2 1 -3)) "2.1alpha")))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; pkg-info-tests.el ends here
