# Challenge Statement: An excursio on many-body quantum scars

*Background:* many-body quantum scars are arguably the first, and only, discovery of new physical phenomena achieved by experimentation with quantum computers to date. In this phenomenon, a many-body quantum system is driven into one state of a degenerate ordered phase and given a sudden “drive kick” – technically known as a quench. This quench onsets a melting of the ordered phase, which then evolves under the influence of quantum mechanics. Organically, and surprisingly, the melted system “refreezes” in another instance of the set of degenerate phases. The process keeps repeating itself – naturally losing coherence.

Challenge goals: In most hackathons, particularly in quantum ones, a big emphasis is given to application development. In this case, the application comes ready for you: you will be playing with quantum scars. The phenomenon still holds mysteries in physics and holds promising application directions as an algorithmic resource to enhance optimization protocols. In this challenge, we want to bring out the experimentalist in you and focus on close interactions with real hardware and data-analysis to extract design directives for performant quantum computing. 

## activities

With a total of 7000 shots of quantum compute, you are tasked with:
* Securing experiments that demonstrate 1 scar revival between 2 ordered phases (one going to the other, no return) while seeking
    * Largest possible number of atoms
    * Largest probability of revival

We expect as deliverables
* a write up on your experiment showcasing your understanding and analysis of the problem
* a Bloqade python module to deploy readout error mitigation methodologies on local observables

Optimization directions for your experiment may include:
-	Lattice choice.
-	Waveform choice.
-   Readout error mitigation strategies.


And to keep things exciting, remember: we want to bring out the experimentalist in you! The prize goes to the best experimental demonstration, so creativity counts! Even if large systems with high probability are the target, showing scars in novel geometries, implementing new protocols for data analysis, or other novel approaches to the phenomenon analysis will count towards your chance for victory!


### References

1) https://www.science.org/doi/full/10.1126/science.abg2530
2) https://www.nature.com/articles/nature24622
3) https://arxiv.org/pdf/1711.03528.pdf
4) https://arxiv.org/pdf/2006.14044.pdf
5) https://mitiq.readthedocs.io/en/stable/guide/rem-5-theory.html
