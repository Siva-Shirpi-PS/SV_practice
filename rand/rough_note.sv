=== 1. Full menu randomization ===
[BREAKFAST #1] coffee=1 tea=2 green_tea=2 => starter=TEA | DOSA flour=2 oil=2
[LUNCH    ] meat=2 veggies=5 eggs=1 (raw=0x55) =>     VEG | milk=18 shake=6 => milk wins
[DINNER   ] Hustle: cook it yourself
[COURSES  ] 3 < 4 < 5

[BREAKFAST #2] coffee=6 tea=1 green_tea=7 => starter=GREEN_TEA | DOSA flour=1 oil=2
[LUNCH    ] meat=7 veggies=5 eggs=3 (raw=0xf7) => NON-VEG | milk=3 shake=11 => shake wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 1 < 2 < 3

[BREAKFAST #3] coffee=5 tea=4 green_tea=4 => starter=COFFEE | DOSA flour=0 oil=3
[LUNCH    ] meat=3 veggies=2 eggs=0 (raw=0x68) => NON-VEG | milk=13 shake=2 => milk wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 1 < 2 < 3

[BREAKFAST #4] coffee=7 tea=3 green_tea=0 => starter=COFFEE | IDLI flour=7 oil=3
[LUNCH    ] meat=4 veggies=7 eggs=3 (raw=0x9f) =>     VEG | milk=18 shake=41 => shake wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 1 < 3 < 6

=== 2. DISABLE RANDOMIZATION: green_tea frozen at 7 ===
green_tea=7 (stays 7)  starter=GREEN_TEA
green_tea=7 (stays 7)  starter=GREEN_TEA

=== 3. INLINE CONSTRAINT: force hunt + override soft milk ===
[BREAKFAST #7] coffee=4 tea=7 green_tea=6 => starter=TEA | DOSA flour=0 oil=3
[LUNCH    ] meat=7 veggies=1 eggs=0 (raw=0xe4) => NON-VEG | milk=90 shake=21 => milk wins
[DINNER   ] You hunt for today's dinner
[COURSES  ] 3 < 5 < 6
Simulation complete via $finish(1) at time 0 FS + 0
./rand_practice.sv:225     $finish;
