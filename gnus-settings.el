(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(check-mail-boxes (quote ("~/Messages/incoming/mail\\..*\\.spool")))
 '(check-mail-summary-function (quote check-mail-box-summary))
 '(gnus-activate-level 2)
 '(gnus-after-getting-new-news-hook (quote (gnus-group-list-groups gnus-group-save-newsrc gnus-display-time-event-handler)))
 '(gnus-agent-expire-all t)
 '(gnus-agent-expire-days 14)
 '(gnus-agent-go-online t)
 '(gnus-agent-mark-unread-after-downloaded nil)
 '(gnus-agent-synchronize-flags t)
 '(gnus-alias-default-identity "Gmail")
 '(gnus-alias-identity-alist (quote (("Gmail" "" nil "" nil "" "") ("BoostPro" "" "\"John Wiegley\" <johnw@boostpro.com>" "BoostPro Computing, Inc." nil "" "John Wiegley
BoostPro Computing
http://www.boostpro.com") ("NewArtisans" "" "\"John Wiegley\" <johnw@newartisans.com>" "New Artisans LLC" nil "" ""))))
 '(gnus-alias-identity-rules (quote (("Ledger Mailing List" ("To" "ledger-cli@googlegroups\\.com" current) "Newartisans") ("BoostPro Mail" ("From" "@boostpro\\.com" current) "BoostPro") ("BoostPro Clients" ("To" "@\\(ti\\)\\.com" current) "BoostPro") ("BoostPro Clients (Copied)" ("Cc" "@\\(ti\\)\\.com" current) "BoostPro") ("C++, LLVM, Boost, and Clang Groups" ("Newsgroups" "\\(c\\+\\+\\|clang\\|llvm\\|[Bb]oost\\|[Rr]yppl\\)" current) "BoostPro") ("C++, LLVM, Boost, and Clang Mailing Lists" ("To" "\\(c\\+\\+\\|clang\\|llvm\\|[Bb]oost\\|[Rr]yppl\\)" current) "BoostPro"))))
 '(gnus-alias-override-user-mail-address t)
 '(gnus-alias-unknown-identity-rule (quote error))
 '(gnus-always-read-dribble-file t)
 '(gnus-article-date-lapsed-new-header t)
 '(gnus-article-update-date-headers nil)
 '(gnus-asynchronous t)
 '(gnus-check-new-newsgroups nil)
 '(gnus-completing-read-function (quote gnus-ido-completing-read))
 '(gnus-default-adaptive-score-alist (quote ((gnus-dormant-mark (from 20) (subject 100)) (gnus-ticked-mark (subject 30)) (gnus-read-mark (subject 30)) (gnus-del-mark (subject -150)) (gnus-catchup-mark (subject -150)) (gnus-killed-mark (subject -1000)) (gnus-expirable-mark (from -1000) (subject -1000)))))
 '(gnus-default-article-saver (quote gnus-summary-write-to-file))
 '(gnus-gcc-mark-as-read t)
 '(gnus-generate-tree-function (quote gnus-generate-horizontal-tree))
 '(gnus-group-default-list-level 2)
 '(gnus-group-line-format "%S%p%P%M%5y: %(%B%G%B%)
")
 '(gnus-group-mode-hook (quote (gnus-topic-mode gnus-agent-mode hl-line-mode)))
 '(gnus-group-use-permanent-levels t)
 '(gnus-harvest-sender-alist (quote ((".*@\\(boostpro\\|boost-consulting\\|ti\\)\\.com" . johnw@boostpro\.com) (".*@gnu\\.org" . johnw@gnu\.org))))
 '(gnus-home-directory "~/Messages/Gnus/")
 '(gnus-ignored-from-addresses "\\(johnw\\|jwiegley\\)\\(-[^@]+\\)?@\\(gnu\\.org\\|\\(forumjobs\\|3dex\\|gmail\\|hotmail\\|newartisans\\|boostpro\\)\\.com\\|public\\.gmane\\.org\\)")
 '(gnus-ignored-mime-types (quote ("application/x-pkcs7-signature" "application/ms-tnef" "text/x-vcard")))
 '(gnus-interactive-exit (quote quiet))
 '(gnus-large-newsgroup 4000)
 '(gnus-local-domain "boostpro.com")
 '(gnus-mailing-list-groups "\\`\\(list\\|wg21\\)\\.")
 '(gnus-mark-unpicked-articles-as-read t)
 '(gnus-message-archive-group (quote ((format-time-string "sent.%Y"))))
 '(gnus-message-replyencrypt nil)
 '(gnus-novice-user nil)
 '(gnus-parameters (quote (("list\\." (subscribed . t) (gcc-self . t)) ("list\\.wg21\\.\\(.*\\)" (to-address . "c++std-\\1@accu.org") (to-list . "c++std-\\1@accu.org") (gcc-self . t) (gnus-list-identifiers "\\[c\\+\\+std-.+?\\]") (sieve header :contains "list-id" "<c++std-\\1.accu.org>")) ("\\(johnw\\|INBOX\\)" (total-expire . t) (expiry-target . "mail.archive")) ("johnw" (expiry-wait . immediate)) ("INBOX" (expiry-wait . 14)) ("mail\\." (gnus-use-scoring nil)) ("mail\\.archive" (gnus-summary-line-format "%«%U%R %uS %ur %»%(%*%-14,14f   %4u&size; %1«%B%s%»%)
")) ("list\\.ledger\\.devel" (to-address . "ledger-cli@googlegroups.com") (to-list . "ledger-cli@googlegroups.com") (gcc-self . t) (sieve header :contains "list-id" "<ledger-cli.googlegroups.com>")) ("list\\.bahai\\.tarjuman" (to-address . "TARJUMAN-LIST@listserv.buffalo.edu") (to-list . "TARJUMAN-LIST@listserv.buffalo.edu") (sieve header :contains "sender" "TARJUMAN-LIST@LISTSERV.BUFFALO.EDU")) ("list\\.emacs\\.devel" (to-address . "emacs-devel@gnu.org") (to-list . "emacs-devel@gnu.org") (sieve header :contains "list-id" "<emacs-devel.gnu.org>")) ("list\\.emacs\\.orgmode" (to-address . "emacs-orgmode@gnu.org") (to-list . "emacs-orgmode@gnu.org") (list-identifier . "\\[O\\]") (sieve header :contains "list-id" "<emacs-orgmode.gnu.org>")) ("list\\.boost\\.cppnow" (to-address . "boostcon-plan@googlegroups.com") (to-list . "boostcon-plan@googlegroups.com") (sieve header :contains "list-id" "<boostcon-plan.googlegroups.com>")) ("list\\.boost\\.ryppl" (to-address . "ryppl-dev@googlegroups.com") (to-list . "ryppl-dev@googlegroups.com") (sieve header :contains "list-id" "<ryppl-dev.googlegroups.com>")) ("list\\.boost\\.devel" (to-address . "boost@lists.boost.org") (to-list . "boost@lists.boost.org") (list-identifier . "\\[boost\\]") (sieve header :contains "list-id" "<boost.lists.boost.org>")) ("list\\.boost\\.users" (to-address . "boost-users@lists.boost.org") (to-list . "boost-users@lists.boost.org") (list-identifier . "\\[Boost-users\\]") (sieve header :contains "list-id" "<boost-users.lists.boost.org>")) ("list\\.isocpp\\.\\(proposals\\|discussion\\)" (to-address . "std-\\1@isocpp.org") (to-list . "std-\\1@isocpp.org") (list-identifier . "\\\\[\\\\(lang\\\\|lib\\\\|std\\\\)-\\1\\\\]") (sieve header :contains "list-id" "<std-\\1.isocpp.org>")) ("list\\.clang\\.devel" (to-address . "cfe-dev@cs.uiuc.edu") (to-list . "cfe-dev@cs.uiuc.edu") (list-identifier . "\\[\\(cfe-dev\\|LLVMdev\\)\\]") (sieve header :contains "list-id" "<cfe-dev.cs.uiuc.edu>")) ("list\\.llvm\\.devel" (to-address . "llvmdev@cs.uiuc.edu") (to-list . "llvmdev@cs.uiuc.edu") (list-identifier . "\\[\\(cfe-dev\\|LLVMdev\\)]") (sieve header :contains "list-id" "<llvmdev.cs.uiuc.edu>")))))
 '(gnus-permanently-visible-groups "INBOX")
 '(gnus-read-active-file nil)
 '(gnus-read-newsrc-file nil)
 '(gnus-refer-article-method (quote (current (nnir "nnimap:Local") (nntp "LocalNews" (nntp-address "localhost") (nntp-port-number 9119)) (nntp "Gmane" (nntp-address "news.gmane.org")) (nntp "Eternal September" (nntp-address "news.eternal-september.org") (nntp-authinfo-user "jwiegley")))))
 '(gnus-refer-thread-use-nnir t)
 '(gnus-registry-ignored-groups (quote (("nntp" t) ("^INBOX" t))))
 '(gnus-save-killed-list nil)
 '(gnus-save-newsrc-file nil)
 '(gnus-score-default-duration (quote p))
 '(gnus-score-expiry-days 30)
 '(gnus-score-find-score-files-function (quote (gnus-score-find-hierarchical)))
 '(gnus-select-group-hook (quote (gnus-group-set-timestamp)))
 '(gnus-select-method (quote (nnimap "Local" (nnimap-stream shell) (nnimap-shell-program "/usr/local/libexec/dovecot/imap"))))
 '(gnus-sieve-crosspost nil)
 '(gnus-sieve-file "~/Messages/dovecot.sieve")
 '(gnus-sieve-select-method "nnimap:Local")
 '(gnus-signature-separator (quote ("^-- $" "^-- *$" "^_____+$")))
 '(gnus-simplify-subject-functions (quote (gnus-simplify-subject-fuzzy)))
 '(gnus-sort-gathered-threads-function (quote gnus-thread-sort-by-date) t)
 '(gnus-split-methods (quote ((gnus-save-site-lisp-file) (gnus-article-archive-name) (gnus-article-nndoc-name))))
 '(gnus-started-hook (quote ((lambda nil (run-hooks (quote gnus-after-getting-new-news-hook))))))
 '(gnus-subscribe-newsgroup-method (quote gnus-subscribe-topics))
 '(gnus-sum-thread-tree-single-indent "  ")
 '(gnus-summary-expunge-below -100)
 '(gnus-summary-line-format "%«%U%R %uS %ur %»%(%*%-14,14f   %1«%B%s%»%)
")
 '(gnus-summary-mark-below -100)
 '(gnus-summary-pick-line-format "%U%R %uS %ur %(%*%-14,14f  %B%s%)
")
 '(gnus-summary-save-parts-default-mime ".*")
 '(gnus-suspend-gnus-hook (quote (gnus-group-save-newsrc)))
 '(gnus-thread-expunge-below -1000)
 '(gnus-thread-hide-subtree t)
 '(gnus-thread-sort-functions (quote (gnus-thread-sort-by-most-recent-number gnus-thread-sort-by-total-score)))
 '(gnus-topic-display-empty-topics nil)
 '(gnus-topic-line-format "%i[ %A: %(%{%n%}%) ]%v
")
 '(gnus-treat-date-lapsed (quote head))
 '(gnus-treat-hide-citation-maybe t)
 '(gnus-treat-strip-cr t)
 '(gnus-treat-strip-leading-blank-lines t)
 '(gnus-treat-strip-multiple-blank-lines t)
 '(gnus-treat-strip-trailing-blank-lines t)
 '(gnus-treat-unsplit-urls t)
 '(gnus-tree-minimize-window nil)
 '(gnus-uncacheable-groups "^nnml")
 '(gnus-use-adaptive-scoring (quote (line)))
 '(gnus-use-cache t)
 '(gnus-verbose 4)
 '(mail-envelope-from (quote header))
 '(mail-host-address "vulcan.local")
 '(mail-setup-with-from nil)
 '(mail-source-delete-incoming t)
 '(mail-source-delete-old-incoming-confirm nil)
 '(mail-source-report-new-mail-interval 15)
 '(mail-sources (quote ((file :path "/var/mail/johnw"))))
 '(mail-specify-envelope-from t)
 '(mail-user-agent (quote gnus-user-agent))
 '(message-alternative-emails "\\(johnw?\\|jwiegley\\)@\\(gmail\\|newartisans\\|boostpro\\).com")
 '(message-directory "~/Messages/Gnus/Mail/")
 '(message-fill-column 78)
 '(message-interactive t)
 '(message-mail-alias-type nil)
 '(message-mode-hook (quote (abbrev-mode footnote-mode turn-on-auto-fill turn-on-flyspell turn-on-orgstruct (lambda nil (set-fill-column 78)))))
 '(message-send-mail-partially-limit nil)
 '(message-sendmail-envelope-from (quote header))
 '(message-sent-hook (quote (my-gnus-score-followup)))
 '(message-setup-hook (quote (gnus-harvest-set-from message-check-recipients)))
 '(message-signature-separator "^-- *$")
 '(message-subscribed-address-functions (quote (gnus-find-subscribed-addresses)))
 '(message-x-completion-alist (quote (("\\([rR]esent-\\|[rR]eply-\\)?[tT]o:\\|[bB]?[cC][cC]:" . gnus-harvest-find-address) ((if (boundp (quote message-newgroups-header-regexp)) message-newgroups-header-regexp message-newsgroups-header-regexp) . message-expand-group))))
 '(mm-attachment-override-types (quote ("text/x-vcard" "application/pkcs7-mime" "application/x-pkcs7-mime" "application/pkcs7-signature" "application/x-pkcs7-signature" "image/.*")))
 '(mm-decrypt-option (quote always))
 '(mm-discouraged-alternatives (quote ("application/msword" "text/richtext")))
 '(mm-inline-text-html-with-images t)
 '(mm-text-html-renderer (quote w3m))
 '(mm-verify-option (quote always))
 '(mm-w3m-safe-url-regexp nil)
 '(nnir-imap-default-search-key "imap")
 '(nnmail-crosspost nil)
 '(nnmail-expiry-wait 30)
 '(nnmail-extra-headers (quote (To Cc Newsgroups)))
 '(nnmail-scan-directory-mail-source-once t)
 '(sc-citation-leader "")
 '(sc-confirm-always-p nil)
 '(sc-default-attribution "")
 '(sc-default-cite-frame (quote ((begin (progn (sc-fill-if-different) (setq sc-tmp-nested-regexp (sc-cite-regexp "") sc-tmp-nonnested-regexp (sc-cite-regexp) sc-tmp-dumb-regexp (concat "\\(" (sc-cite-regexp "") "\\)" (sc-cite-regexp sc-citation-nonnested-root-regexp))))) ("^[ 	]*$" (if sc-cite-blank-lines-p (sc-cite-line) (sc-fill-if-different ""))) ((and (looking-at "^-- ?$") (not (save-excursion (goto-char (match-end 0)) (re-search-forward "^-- ?$" nil t)))) (sc-fill-if-different "")) (sc-reference-tag-string (if (string= sc-reference-tag-string "") (list (quote continue)) nil)) (sc-tmp-dumb-regexp (sc-cite-coerce-dumb-citer)) (sc-tmp-nested-regexp (sc-add-citation-level)) (sc-tmp-nonnested-regexp (sc-cite-coerce-cited-line)) (sc-nested-citation-p (sc-add-citation-level)) (t (sc-cite-line)) (end (sc-fill-if-different "")))))
 '(sc-preferred-attribution-list nil)
 '(sc-use-only-preference-p t)
 '(send-mail-function (quote sendmail-send-it))
 '(smtpmail-default-smtp-server "smtp.gmail.com")
 '(smtpmail-queue-dir "~/Messages/Gnus/Mail/queue/")
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-smtp-user "jwiegley@gmail.com")
 '(smtpmail-starttls-credentials (quote (("mail.johnwiegley.com" 587 nil nil) ("smtp.gmail.com" 587 nil nil))))
 '(smtpmail-stream-type (quote starttls)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(message-cited-text ((((class color)) (:foreground "Blue"))))
 '(message-header-cc ((((class color)) (:bold t :foreground "green2"))))
 '(message-header-name ((((class color)) (:bold nil :foreground "Blue"))))
 '(message-header-other ((((class color)) (:foreground "Firebrick"))))
 '(message-header-subject ((((class color)) (:foreground "black"))))
 '(message-header-xheader ((((class color)) (:foreground "Blue"))))
 '(message-mml ((((class color)) (:foreground "DarkGreen"))))
 '(message-separator ((((class color)) (:foreground "Tan")))))
