The decoder design here is a generic one with a N-bit input code. If any bit of the input is undefined(X or Z), the output is defaulted to 0. The testbench verifies this functionality and runs through all the 2<sup>N</sup> possible valid input codes. A simulation example for a 2-to-4 decoder is shown below:-

Waveform output:-
![alt text](<Screenshot 2026-01-28 at 12.15.54 PM.png>)

Output logs:-
![alt text](<Screenshot 2026-01-28 at 12.16.15 PM.png>)