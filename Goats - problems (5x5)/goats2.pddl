
(define (problem pb3)
  (:domain bagh-chal)
  (:objects
        tiger1 tiger2 tiger3 tiger4 - tiger
         l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 - location
         g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 g11 g12 g13 g14 g15 g16 g17 g18 g19 g20 - goat
  )

  (:init
    (goatMove)
    (= (numberOfTakenGoats) 0)

    (occupied l1)
    (occupied l5)
    (occupied l25)
    (occupied l21)
    (atlocation tiger1 l1)
    (atlocation tiger2 l5)
    (atlocation tiger3 l21)
    (atlocation tiger4 l25)

    (connected l1 l2)
    (connected l1 l6)
    (connected l1 l7)
    (jump l1 l2 l3)
    (jump l1 l6 l11)
    (jump l1 l7 l13)

    (connected l2 l7)
    (connected l2 l3)

    (jump l2 l3 l4)
    (jump l2 l7 l12)


    (connected l3 l7)
    (connected l3 l8)
    (connected l3 l9)
    (connected l3 l4)
    (jump l3 l7 l11)
    (jump l3 l8 l13)
    (jump l3 l9 l15)
    (jump l3 l4 l5)

    (connected l4 l9)
    (connected l4 l5)
    (jump l4 l9 l14)

    (connected l5 l9)
    (connected l5 l10)
    (jump l5 l9 l13)
    (jump l5 l10 l15)

    (connected l6 l7)
    (connected l6 l11)
    (jump l6 l11 l16)
    (jump l6 l7 l8)

    (connected l7 l11)
    (connected l7 l12)
    (connected l7 l13)
    (connected l7 l8)
    (jump l7 l12 l17)
    (jump l7 l13 l19)
    (jump l7 l8 l9)

    (connected l8 l9)
    (connected l8 l13)
    (jump l8 l13 l18)
    (jump l8 l9 l10)

    (connected l9 l13)
    (connected l9 l14)
    (connected l9 l15)
    (connected l9 l10)
    (jump l9 l13 l17)
    (jump l9 l14 l19)

    (connected l10 l15)
    (jump l10 l15 l20)

    (connected l11 l12)
    (connected l11 l16)
    (connected l11 l17)
    (jump l11 l16 l21)
    (jump l11 l17 l23)
    (jump l11 l12 l13)

    (connected l12 l13)
    (connected l12 l17)
    (jump l12 l17 l22)
    (jump l12 l13 l14)

    (connected l13 l17)
    (connected l13 l18)
    (connected l13 l19)
    (connected l13 l14)
    (jump l13 l17 l21)
    (jump l13 l18 l23)
    (jump l13 l19 l25)
    (jump l13 l14 l15)

    (connected l14 l15)
    (connected l14 l19)
    (jump l14 l19 l24)

    (connected l15 l19)
    (connected l15 l20)
    (jump l15 l20 l25)

    (connected l16 l21)
    (connected l16 l17)
    (jump l16 l17 l18)

    (connected l17 l21)
    (connected l17 l22)
    (connected l17 l23)
    (connected l17 l18)
    (jump l17 l18 l19)

    (connected l18 l19)
    (connected l18 l23)
    (jump l18 l19 l20)

    (connected l19 l23)
    (connected l19 l24)
    (connected l19 l25)
    (connected l19 l20)

    (connected l20 l25)

    (connected l20 l21)
    (connected l21 l22)
    (connected l22 l23)
    (connected l23 l24)
    (connected l24 l25)
    (jump l21 l22 l23)
    (jump l22 l23 l24)
    (jump l23 l24 l25)
  )
  (:goal
      (goatWon)
  )
  (:metric minimize (numberOfTakenGoats))
)
