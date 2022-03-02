# Alphafold for FLOW Type Ⅱ
This is my remote directory using alphafold2 to create conformation of Cas9 endonuclease on FLOW type 2.

## Usage

1. Put your fasta file into input directory.

2. Change `scripts/run_alphafold_nvmesh.sh`.

3. Run 
    pjsub run_alphafold_nvmesh.sh.

Output directory contains results of prediction and time log(you can know when the calculation starts and ends)

Cas9 have 1495 residues (13629 atoms), and it took 2.5 hours to finish the job.