#!/usr/bin/perl
use strict;
use warnings;
use Bio::SeqIO;
use Bio::Perl;

# Read fasta file
my $input = Bio::SeqIO->new(
    -format => 'fasta',
    -file   => '../data/outputs/park2.fas',
);
 
# Read sequence
while (my $sequence = $input->next_seq()) {
    print('-------------------------------------------------');
    my $blast_result = blast_sequence($sequence->seq);
    write_blast('>../data/outputs/resultados-remoto.blast', $blast_result);
}
