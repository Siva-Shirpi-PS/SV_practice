=== 1. Parent randomization (breakfast only) ===
[BREAKFAST #1] coffee=1 tea=2 green_tea=2 => starter=TEA | DOSA flour=3 oil=1
[BREAKFAST #2] coffee=6 tea=1 green_tea=7 => starter=GREEN_TEA | IDLI flour=6 oil=3

=== 2. Child randomization (full menu) ===
[BREAKFAST #3] coffee=5 tea=0 green_tea=7 => starter=GREEN_TEA | IDLI flour=0 oil=0
[LUNCH    ] meat=5 veggies=0 eggs=0 (raw=0xa0) => NON-VEG | milk=16 shake=44 => shake wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 1 < 4 < 5

[BREAKFAST #4] coffee=6 tea=1 green_tea=0 => starter=COFFEE | DOSA flour=7 oil=3
[LUNCH    ] meat=5 veggies=3 eggs=0 (raw=0xac) => NON-VEG | milk=14 shake=38 => shake wins
[DINNER   ] Order from a hotel
[COURSES  ] 1 < 2 < 6

[BREAKFAST #5] coffee=3 tea=6 green_tea=2 => starter=TEA | IDLI flour=6 oil=0
[LUNCH    ] meat=1 veggies=4 eggs=0 (raw=0x30) =>     VEG | milk=9 shake=41 => shake wins
[DINNER   ] Order from a hotel
[COURSES  ] 1 < 2 < 5

[BREAKFAST #6] coffee=4 tea=7 green_tea=3 => starter=TEA | DOSA flour=5 oil=1
[LUNCH    ] meat=4 veggies=3 eggs=1 (raw=0x8d) => NON-VEG | milk=14 shake=16 => shake wins
[DINNER   ] Hustle: cook it yourself
[COURSES  ] 3 < 5 < 6

=== 3. DISABLE RANDOMIZATION: green_tea frozen at 7 ===
green_tea=7 (stays 7)  starter=GREEN_TEA
green_tea=7 (stays 7)  starter=COFFEE

=== 4. INLINE CONSTRAINT: force hunt + override soft milk ===
[BREAKFAST #9] coffee=1 tea=3 green_tea=7 => starter=GREEN_TEA | IDLI flour=7 oil=2
[LUNCH    ] meat=6 veggies=7 eggs=2 (raw=0xde) =>     VEG | milk=90 shake=9 => milk wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 1 < 5 < 6

=== 5. CONSTRAINT MODE: turn off morning_dish (dist) ===
morning_dish active? 0 | idli_dosa=0 oil=2 (no weighting now)

=== 6. STATIC CONSTRAINT: switch off on m1, check m2 ===
before: m1=1 m2=1
after : m1=0 m2=0  (m2 changed too - shared)
