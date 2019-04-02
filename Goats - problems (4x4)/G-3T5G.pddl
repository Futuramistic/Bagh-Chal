
(define (problem pb3)
  (:domain bagh-chal)
  (:objects
        tiger1 tiger2 tiger3 - tiger
         l1 l2 l3 l4 l5 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 - location
         g1 g2 g3 g4 g5  - goat
  )

  (:init
    (goatMove)
    (= (numberOfTakenGoats) 0)

    (occupied l1)
    (occupied l4)
    (occupied l16)
    (atlocation tiger1 l1)
    (atlocation tiger2 l4)
    (atlocation tiger3 l13)

    (connected l1 l2)
    (connected l1 l5)
    (connected l1 l6)
    (jump l1 l2 l3)
    (jump l1 l5 l9)
    (jump l1 l6 l11)

    (connected l2 l6)
    (connected l2 l3)
    (jump l2 l3 l4)
    (jump l2 l6 l10)

    (connected l3 l6)
    (connected l3 l7)
    (connected l3 l8)
    (connected l3 l4)
    (jump l3 l6 l9)
    (jump l3 l7 l11)

    (connected l4 l8)
    (jump l4 l8 l12)

    (connected l5 l6)
    (connected l5 l9)
    (jump l5 l9 l13)
    (jump l5 l6 l7)

    (connected l6 l9)
    (connected l6 l10)
    (connected l6 l11)
    (connected l6 l7)
    (jump l6 l10 l14)
    (jump l6 l11 l16)
    (jump l6 l7 l8)

    (connected l7 l8)
    (connected l7 l11)
    (jump l7 l11 l15)

    (connected l8 l11)
    (connected l8 l12)
    (jump l8 l11 l14)
    (jump l8 l12 l16)

    (connected l9 l10)
    (connected l9 l13)
    (connected l9 l14)
    (jump l9 l10 l11)

    (connected l10 l11)
    (connected l10 l14)
    (jump l10 l11 l12)

    (connected l11 l14)
    (connected l11 l15)
    (connected l11 l16)
    (connected l11 l12)

    (connected l12 l15)

    (connected l13 l14)
    (jump l13 l14 l15)
    (connected l14 l15)
    (jump l14 l15 l16)
    (connected l15 l16)
  )
  (:goal
      (goatWon)
  )
  (:metric minimize (numberOfTakenGoats))
)
