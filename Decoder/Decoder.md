The decoder design here is a generic one with a N-bit input code. If any bit of the input is undefined(X or Z), the output is defaulted to 0. The testbench verifies this functionality and runs through all the 2<sup>N</sup> possible valid input codes. A simulation example for a 2-to-4 decoder is shown below:-

Waveform output:-
<img width="1203" height="143" alt="Screenshot 2026-01-28 at 12 15 54 PM" src="https://github.com/user-attachments/assets/751af845-a779-470a-8471-513121a2f52f" />

Outputs logs:-

<img width="329" height="310" alt="Screenshot 2026-01-28 at 12 16 15 PM" src="https://github.com/user-attachments/assets/ff4f32a5-04a6-4268-b25d-875d88164704" />
