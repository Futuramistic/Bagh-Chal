(define (domain bagh-chal)

    (:requirements :adl)
    (:types pawn - object
            goat tiger - pawn
            location)
    (:predicates

        (occupied ?l - location)
        (connected ?l - location ?n - location)
        (jump ?from - location ?through - location ?to - location)

        (atlocation ?p - pawn ?l - location)
        (taken ?g - goat)
        (placed ?g - goat)

        (goatWon)
        (tigerWon)
        (goatMove)

    )

    (:functions
      (numberOfTakenGoats)
    )

    (:action place
        :parameters (?g - goat ?l - location)
        :precondition (and
            (not (placed ?g))
            (not (occupied ?l))
            (not (taken ?g))
            (goatMove)
        )
        :effect (and
            (atlocation ?g ?l)
            (not (goatMove))
            (placed ?g)
            (occupied ?l)
        )
    )

    (:action move-Goat
        :parameters (?g - goat ?from - location ?to - location)
        :precondition (and
            (forall (?goat - goat)
                    (or (placed ?goat)
                        (taken ?goat)
                    )
            )
            (atlocation ?g ?from)
            (not (taken ?g))
            (or
                (connected ?from ?to)
                (connected ?to ?from)
            )
            (not (occupied ?to))
            (goatMove)
        )
        :effect (and
            (atlocation ?g ?to)
            (occupied ?to)
            (not (atlocation ?g ?from))
            (not (occupied ?from))
            (not (goatMove))
        ))

    (:action move-Tiger
        :parameters (?t - tiger ?from - location ?to - location)
        :precondition (and
            (atlocation ?t ?from)
            (or
                (connected ?from ?to)
                (connected ?to ?from)
            )
            (not (occupied ?to))
            (not (goatMove))
        )
        :effect (and
            (not (atlocation ?t ?from))
            (not (occupied ?from))
            (atlocation ?t ?to)
            (occupied ?to)
            (goatMove)
        )
    )

    (:action jump
        :parameters (?t - tiger ?from - location ?to - location)
        :vars (?goat - goat ?middle - location)
        :precondition (and
            (atlocation ?t ?from)
            (not (occupied ?to))
            (atlocation ?goat ?middle)
            (or (jump ?from ?middle ?to)
                (jump ?to ?middle ?from))
            (not (goatMove))
        )
        :effect (and
                (atlocation ?t ?to)
                (occupied ?to)
                (not (atlocation ?t ?from))
                (not (occupied ?from))
                (not (atlocation ?goat ?middle))
                (not (occupied ?middle))
                (taken ?goat)
                (not (placed ?goat))
                (goatMove)
                (increase (numberOfTakenGoats) 1)
          )
    )

    (:action win-Goats
     :precondition
     (and
       (not (tigerWon))
       (forall (?tiger - tiger)
         (exists (?blocked - location)
             (and  (atlocation ?tiger ?blocked)
                    (forall (?dest - location ?middle - location)
                             (imply (or (connected ?blocked ?dest)
                                        (connected ?dest ?blocked)
                                        (jump ?blocked ?middle ?dest)
                                        (jump ?dest ?middle ?blocked)
                                        )
                                    (occupied ?dest))
                    )
             )
        )
        )
      )
      :effect (goatWon)
    )

    (:action win-Tigers
     :precondition
     (and
       (not (goatWon))
       (>= (numberOfTakenGoats) 5)
      )
      :effect (tigerWon)
    )
)
