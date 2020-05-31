#!/usr/bin/perl
use strict;
use Bio::Seq;
use Bio::SeqIO;

# Read genbank file
my $input = Bio::SeqIO->new(
    -format => 'genbank',
    -file   => '../data/inputs/park2.gb',
);

# Create fasta file
my $output = Bio::SeqIO->new(
    -format => 'fasta',
    -file   => '>../data/outputs/park2.fas',
);

while (my $sequence = $input->next_seq()) {
    # See park2.gb file, CDS section
    my $sub_sequence = $sequence->subseq(99, 1496);
    my $prot_obj = Bio::Seq->new(-seq => $sub_sequence)->translate();
    $output->write_seq($prot_obj);
}

# while (my $sequence = $input->next_seq()) {
#     # Realizamos la traduccion a ARN a Proteina (Ejemplo ATG a M)
    
#     my $prot_obj1 = $sequence->translate(-frame => 0);
#     $output->write_seq($prot_obj1);

#     my $prot_obj2 = $sequence->translate(-frame => 1);
#     $output->write_seq($prot_obj2);

#     my $prot_obj3 = $sequence->translate(-frame => 2);
#     $output->write_seq($prot_obj3);

#     my $prot_obj4 = $sequence->revcom->translate(-frame => 0);
#     $output->write_seq($prot_obj4);

#     my $prot_obj5 = $sequence->revcom->translate(-frame => 1);
#     $output->write_seq($prot_obj5);
    
#     my $prot_obj6 = $sequence->revcom->translate(-frame => 2);
#     $output->write_seq($prot_obj6);
# }

# Uno por cada ORF
# Empieza con un codón de inicio (AUG) de la traducción
# Termina con un codón de terminación

# Una vez que tienen la secuencia bajada tengan en cuenta que ustedes desconocen cuál es el marco de
# lectura correcto de los 6 posibles. Por lo tanto deberán calcular los 6 marcos de lectura posibles, evaluar
# todos ellos en el ejercicio 2, y así darse cuenta cuál de los 6 es el real. Existen funciones en BioPerl para
# hacer esto, o mismo pueden usar el programa OrfFinder para ayudarse.