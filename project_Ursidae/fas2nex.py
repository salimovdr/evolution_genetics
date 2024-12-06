from Bio import AlignIO

input_fasta = "data/irbp_w_outgroup_alignment_trimmed.fas"
output_nexus = "data/irbp_w_outgroup_alignment_trimmed.nex"

alignment = AlignIO.read(input_fasta, "fasta")
AlignIO.write(alignment, output_nexus, "nexus")

