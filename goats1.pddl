
(define (problem pb3)
  (:domain goats)
  (:objects
        tiger1 tiger2 - tiger
         location1 location2 location3 location4 location5 location6 location7 location8 location9 - location
         goat1 goat2 goat3 goat4 goat5 goat6 - goat
  )

  (:init
    (goatMove)
    (occupied location9)
    (atlocation tiger1 location9)

    (jumpable location1 location2 location3)
    (jumpable location1 location4 location7)
    (jumpable location1 location5 location9)
    (jumpable location2 location5 location8)
    (jumpable location3 location5 location7)
    (jumpable location4 location5 location6)
    (jumpable location3 location6 location9)
    (jumpable location7 location8 location9)

    (jumpable location3 location2 location1)
    (jumpable location7 location4 location1)
    (jumpable location9 location5 location1)
    (jumpable location8 location5 location2)
    (jumpable location7 location5 location3)
    (jumpable location6 location5 location4)
    (jumpable location9 location6 location3)
    (jumpable location9 location8 location7)


    (connected location1 location4)
    (connected location4 location7)
    (connected location7 location8)
    (connected location8 location9)
    (connected location9 location6)
    (connected location6 location3)
    (connected location3 location2)
    (connected location2 location1)

    (connected location4 location1)
    (connected location7 location4)
    (connected location8 location7)
    (connected location9 location8)
    (connected location6 location9)
    (connected location3 location6)
    (connected location2 location3)
    (connected location1 location2)

    (connected location1 location5)
    (connected location3 location5)
    (connected location2 location5)
    (connected location4 location5)
    (connected location6 location5)
    (connected location7 location5)
    (connected location8 location5)
    (connected location9 location5)

    (connected location5 location1)
    (connected location5 location3)
    (connected location5 location2)
    (connected location5 location4)
    (connected location5 location6)
    (connected location5 location7)
    (connected location5 location8)
    (connected location5 location9)
  )

  ; The goal state describe what we desire to achieve

  (:goal
    (blockedTiger tiger1)
  )
)
