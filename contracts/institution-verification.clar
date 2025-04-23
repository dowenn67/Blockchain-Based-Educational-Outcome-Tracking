;; Institution Verification Contract
;; Validates legitimate educational entities

(define-data-var admin principal tx-sender)

;; Map of verified institutions
(define-map verified-institutions
  principal
  {
    name: (string-ascii 100),
    accreditation-id: (string-ascii 50),
    verified-at: uint,
    active: bool
  }
)

;; Public function to verify an institution
(define-public (verify-institution
    (institution principal)
    (name (string-ascii 100))
    (accreditation-id (string-ascii 50)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u1)) ;; Only admin can verify
    (map-set verified-institutions institution {
      name: name,
      accreditation-id: accreditation-id,
      verified-at: block-height,
      active: true
    })
    (ok true)
  )
)

;; Public function to revoke verification
(define-public (revoke-institution (institution principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u1))
    (asserts! (is-some (map-get? verified-institutions institution)) (err u2))
    (let ((current-data (unwrap-panic (map-get? verified-institutions institution))))
      (map-set verified-institutions institution
        (merge current-data { active: false })
      )
    )
    (ok true)
  )
)

;; Read-only function to check if an institution is verified
(define-read-only (is-verified (institution principal))
  (match (map-get? verified-institutions institution)
    institution-data (and (get active institution-data) true)
    false
  )
)

;; Read-only function to get institution details
(define-read-only (get-institution-details (institution principal))
  (map-get? verified-institutions institution)
)

;; Function to transfer admin rights
(define-public (transfer-admin (new-admin principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u1))
    (var-set admin new-admin)
    (ok true)
  )
)
