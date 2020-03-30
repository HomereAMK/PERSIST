#!/usr/bin/env bash
#PBS -q
#PBS -l walltime=24:00:00
#PBS -l smem=20g
#PBS -N vcftools

WORKIR="/PERSIST"
INDIR="05_freebayes"
VCFTOOLSENV=""
VCF=DP10_SNP_MAF0.01_miss0.1_PERSIST_freebayes_stringent_biallelic_IndFiltered.recode_noComplex_imputed.vcf

$VCFTOOLSENV
cd $WORKDIR

vcftools  --remove-indv E1_1 --remove-indv E1_2_bis --remove-indv E1_3 --remove-indv E1_5 --remove-indv E1_8_bis --remove-indv E1_10_bis --remove-indv E1_11 --remove-indv E1_12 --remove-indv E1_13_bis --remove-indv E1_14 --remove-indv E1_15 --remove-indv E1_16 --remove-indv E1_17 --remove-indv E1_18 --remove-indv E1_19 --remove-indv E1_20_bis --remove-indv E1_21 --remove-indv E1_22 --remove-indv E1_23 --remove-indv E1_25 --remove-indv E1_26 --remove-indv E1_27 --remove-indv E1_28 --remove-indv E1_29 --remove-indv E1_30 --remove-indv E2_1 --remove-indv E2_4 --remove-indv E2_7 --remove-indv E2_9 --remove-indv E2_12 --remove-indv E2_13 --remove-indv E2_14 --remove-indv E2_15 --remove-indv E2_16 --remove-indv E2_17 --remove-indv E2_18 --remove-indv E2_19 --remove-indv E2_20 --remove-indv E2_21 --remove-indv E2_22 --remove-indv E2_23 --remove-indv E2_24 --remove-indv E2_25 --remove-indv E2_26 --remove-indv E2_27 --remove-indv E2_30 --remove-indv E2_31 --remove-indv E2_32 --remove-indv E2_34 --remove-indv E2_35 --remove-indv E2_36 --remove-indv E2_37 --remove-indv E2_38 --remove-indv E2_39 --remove-indv E2_40 --remove-indv E2_42 --remove-indv E3_1 --remove-indv E3_2 --remove-indv E3_3 --remove-indv E3_4 --remove-indv E3_5 --remove-indv E3_6 --remove-indv E3_7 --remove-indv E3_8 --remove-indv E3_10 --remove-indv E3_11 --remove-indv E3_12 --remove-indv E3_13 --remove-indv E3_14 --remove-indv E3_16 --remove-indv E3_18 --remove-indv E3_19 --remove-indv E3_20 --remove-indv E3_22 --remove-indv E3_23 --remove-indv E3_24 --remove-indv E3_25 --remove-indv E3_26 --remove-indv E3_27 --remove-indv E3_28 --remove-indv E3_29 --remove-indv E4_2 --remove-indv E4_4 --remove-indv E4_5 --remove-indv E4_9 --remove-indv E4_10 --remove-indv E4_12 --remove-indv E4_13 --remove-indv E4_15 --remove-indv E4_19 --remove-indv E4_20 --remove-indv E4_22 --remove-indv E5_1 --remove-indv E5_3 --remove-indv E5_4 --remove-indv E5_5 --remove-indv E5_6 --remove-indv E5_7 --remove-indv E5_8 --remove-indv E5_10 --remove-indv E5_11 --remove-indv E5_12 --remove-indv E5_13 --remove-indv E5_14 --remove-indv E5_15 --remove-indv E5_16 --remove-indv E5_17 --remove-indv E5_18 --remove-indv E5_19 --remove-indv E5_20 --remove-indv E5_21 --remove-indv E5_22 --remove-indv E5_23 --remove-indv E5_24 --remove-indv E5_25 --remove-indv E5_26 --remove-indv E5_27 --remove-indv E5_28 --remove-indv E5_29 --remove-indv E5_30 --remove-indv E6_1 --remove-indv E6_2 --remove-indv E6_3 --remove-indv E6_4 --remove-indv E6_5 --remove-indv E6_6 --remove-indv E6_7 --remove-indv E6_8 --remove-indv E6_9 --remove-indv E6_10 --remove-indv E6_11 --remove-indv E6_12 --remove-indv E6_13 --remove-indv E6_14 --remove-indv E6_15 --remove-indv E6_16 --remove-indv S2_2 --remove-indv S2_8 --remove-indv S2_10 --remove-indv S2_12 --remove-indv S2_14 --remove-indv S2_16 --remove-indv S2_17 --remove-indv S2_19_bis --remove-indv S2_22_bis --remove-indv S3_1_bis --remove-indv S3_2_bis --remove-indv S3_4 --remove-indv S3_5 --remove-indv S3_6_bis --remove-indv S3_9_bis --remove-indv S3_11_bis --remove-indv S3_14 --remove-indv S3_15_bis --remove-indv S3_17_bis --remove-indv S3_18_bis --remove-indv S3_20_bis --remove-indv S3_24 --remove-indv S3_25 --remove-indv S3_27 --remove-indv S3_30 --remove-indv S3_31 --remove-indv S4_1 --remove-indv S4_3 --remove-indv S4_4 --remove-indv S4_5 --remove-indv S4_6 --remove-indv S4_8 --remove-indv S4_9 --remove-indv S4_10 --remove-indv S4_11 --remove-indv S4_12 --remove-indv S4_13 --remove-indv S4_14 --remove-indv S4_15 --remove-indv S4_16 --remove-indv S4_21_bis --remove-indv S4_23 --remove-indv S4_24 --remove-indv S4_25 --remove-indv S4_27 --remove-indv S4_28 --remove-indv S5_2 --remove-indv S5_4 --remove-indv S5_5 --remove-indv S5_6 --remove-indv S5_9 --remove-indv S5_10 --remove-indv S5_11 --remove-indv S5_12 --remove-indv S5_13 --remove-indv S5_14 --remove-indv S5_15 --remove-indv S6_2 --remove-indv S6_3 --remove-indv S6_7 --remove-indv S6_11 --remove-indv S6_12 --remove-indv S6_13 --remove-indv S6_14 --remove-indv S6_16 --remove-indv S6_18 --remove-indv S6_20 --remove-indv S6_22 --remove-indv S6_24 --remove-indv S6_25_bis --remove-indv S6_26 --remove-indv S6_30 --remove-indv S7_1 --remove-indv S7_2 --remove-indv S7_4 --remove-indv S7_5 --remove-indv S7_6 --remove-indv S7_11 --remove-indv S7_12 --remove-indv S7_16 --remove-indv S7_17 --remove-indv S7_18 --vcf $INDIR/$VCF --out $INDIR/PERSIST_noComplex_Collector --recode

vcftools  --remove-indv S2_2 --remove-indv S2_8 --remove-indv S2_10 --remove-indv S2_12 --remove-indv S2_14 --remove-indv S2_16 --remove-indv S2_17 --remove-indv S2_19_bis --remove-indv S2_22_bis --remove-indv S3_1_bis --remove-indv S3_2_bis --remove-indv S3_4 --remove-indv S3_5 --remove-indv S3_6_bis --remove-indv S3_9_bis --remove-indv S3_11_bis --remove-indv S3_14 --remove-indv S3_15_bis --remove-indv S3_17_bis --remove-indv S3_18_bis --remove-indv S3_20_bis --remove-indv S3_24 --remove-indv S3_25 --remove-indv S3_27 --remove-indv S3_30 --remove-indv S3_31 --remove-indv S4_1 --remove-indv S4_3 --remove-indv S4_4 --remove-indv S4_5 --remove-indv S4_6 --remove-indv S4_8 --remove-indv S4_9 --remove-indv S4_10 --remove-indv S4_11 --remove-indv S4_12 --remove-indv S4_13 --remove-indv S4_14 --remove-indv S4_15 --remove-indv S4_16 --remove-indv S4_21_bis --remove-indv S4_23 --remove-indv S4_24 --remove-indv S4_25 --remove-indv S4_27 --remove-indv S4_28 --remove-indv S5_2 --remove-indv S5_4 --remove-indv S5_5 --remove-indv S5_6 --remove-indv S5_9 --remove-indv S5_10 --remove-indv S5_11 --remove-indv S5_12 --remove-indv S5_13 --remove-indv S5_14 --remove-indv S5_15 --remove-indv S6_2 --remove-indv S6_3 --remove-indv S6_7 --remove-indv S6_11 --remove-indv S6_12 --remove-indv S6_13 --remove-indv S6_14 --remove-indv S6_16 --remove-indv S6_18 --remove-indv S6_20 --remove-indv S6_22 --remove-indv S6_24 --remove-indv S6_25_bis --remove-indv S6_26 --remove-indv S6_30 --remove-indv S7_1 --remove-indv S7_2 --remove-indv S7_4 --remove-indv S7_5 --remove-indv S7_6 --remove-indv S7_11 --remove-indv S7_12 --remove-indv S7_16 --remove-indv S7_17 --remove-indv S7_18 --remove-indv C1_1 --remove-indv C1_4 --remove-indv C1_6 --remove-indv C1_7 --remove-indv C2_1 --remove-indv C3_1 --remove-indv C3_2 --remove-indv C3_3 --remove-indv C3_4 --remove-indv C3_5 --remove-indv C3_6 --remove-indv C3_7 --remove-indv C3_9 --remove-indv C3_10 --remove-indv C3_11 --remove-indv C3_12 --remove-indv C3_13 --remove-indv C3_14 --remove-indv C3_15 --remove-indv C3_16 --remove-indv C3_17 --remove-indv C3_18 --remove-indv C3_19 --remove-indv C3_20 --remove-indv C3_21 --remove-indv C3_22 --remove-indv C4_1 --remove-indv C4_2 --remove-indv C4_3 --remove-indv C5_1 --remove-indv C5_2 --remove-indv C5_3 --remove-indv C5_4 --remove-indv C5_5 --remove-indv C5_6 --remove-indv C5_7 --remove-indv C5_8 --vcf $INDIR/$VCF --out $INDIR/PERSIST_noComplex_Exploited --recode


vcftools  --remove-indv E1_1 --remove-indv E1_2_bis --remove-indv E1_3 --remove-indv E1_5 --remove-indv E1_8_bis --remove-indv E1_10_bis --remove-indv E1_11 --remove-indv E1_12 --remove-indv E1_13_bis --remove-indv E1_14 --remove-indv E1_15 --remove-indv E1_16 --remove-indv E1_17 --remove-indv E1_18 --remove-indv E1_19 --remove-indv E1_20_bis --remove-indv E1_21 --remove-indv E1_22 --remove-indv E1_23 --remove-indv E1_25 --remove-indv E1_26 --remove-indv E1_27 --remove-indv E1_28 --remove-indv E1_29 --remove-indv E1_30 --remove-indv E2_1 --remove-indv E2_4 --remove-indv E2_7 --remove-indv E2_9 --remove-indv E2_12 --remove-indv E2_13 --remove-indv E2_14 --remove-indv E2_15 --remove-indv E2_16 --remove-indv E2_17 --remove-indv E2_18 --remove-indv E2_19 --remove-indv E2_20 --remove-indv E2_21 --remove-indv E2_22 --remove-indv E2_23 --remove-indv E2_24 --remove-indv E2_25 --remove-indv E2_26 --remove-indv E2_27 --remove-indv E2_30 --remove-indv E2_31 --remove-indv E2_32 --remove-indv E2_34 --remove-indv E2_35 --remove-indv E2_36 --remove-indv E2_37 --remove-indv E2_38 --remove-indv E2_39 --remove-indv E2_40 --remove-indv E2_42 --remove-indv E3_1 --remove-indv E3_2 --remove-indv E3_3 --remove-indv E3_4 --remove-indv E3_5 --remove-indv E3_6 --remove-indv E3_7 --remove-indv E3_8 --remove-indv E3_10 --remove-indv E3_11 --remove-indv E3_12 --remove-indv E3_13 --remove-indv E3_14 --remove-indv E3_16 --remove-indv E3_18 --remove-indv E3_19 --remove-indv E3_20 --remove-indv E3_22 --remove-indv E3_23 --remove-indv E3_24 --remove-indv E3_25 --remove-indv E3_26 --remove-indv E3_27 --remove-indv E3_28 --remove-indv E3_29 --remove-indv E4_2 --remove-indv E4_4 --remove-indv E4_5 --remove-indv E4_9 --remove-indv E4_10 --remove-indv E4_12 --remove-indv E4_13 --remove-indv E4_15 --remove-indv E4_19 --remove-indv E4_20 --remove-indv E4_22 --remove-indv E5_1 --remove-indv E5_3 --remove-indv E5_4 --remove-indv E5_5 --remove-indv E5_6 --remove-indv E5_7 --remove-indv E5_8 --remove-indv E5_10 --remove-indv E5_11 --remove-indv E5_12 --remove-indv E5_13 --remove-indv E5_14 --remove-indv E5_15 --remove-indv E5_16 --remove-indv E5_17 --remove-indv E5_18 --remove-indv E5_19 --remove-indv E5_20 --remove-indv E5_21 --remove-indv E5_22 --remove-indv E5_23 --remove-indv E5_24 --remove-indv E5_25 --remove-indv E5_26 --remove-indv E5_27 --remove-indv E5_28 --remove-indv E5_29 --remove-indv E5_30 --remove-indv E6_1 --remove-indv E6_2 --remove-indv E6_3 --remove-indv E6_4 --remove-indv E6_5 --remove-indv E6_6 --remove-indv E6_7 --remove-indv E6_8 --remove-indv E6_9 --remove-indv E6_10 --remove-indv E6_11 --remove-indv E6_12 --remove-indv E6_13 --remove-indv E6_14 --remove-indv E6_15 --remove-indv E6_16  --remove-indv C1_1 --remove-indv C1_4 --remove-indv C1_6 --remove-indv C1_7 --remove-indv C2_1 --remove-indv C3_1 --remove-indv C3_2 --remove-indv C3_3 --remove-indv C3_4 --remove-indv C3_5 --remove-indv C3_6 --remove-indv C3_7 --remove-indv C3_9 --remove-indv C3_10 --remove-indv C3_11 --remove-indv C3_12 --remove-indv C3_13 --remove-indv C3_14 --remove-indv C3_15 --remove-indv C3_16 --remove-indv C3_17 --remove-indv C3_18 --remove-indv C3_19 --remove-indv C3_20 --remove-indv C3_21 --remove-indv C3_22 --remove-indv C4_1 --remove-indv C4_2 --remove-indv C4_3 --remove-indv C5_1 --remove-indv C5_2 --remove-indv C5_3 --remove-indv C5_4 --remove-indv C5_5 --remove-indv C5_6 --remove-indv C5_7 --remove-indv C5_8 --vcf $INDIR/$VCF --out $INDIR/PERSIST_noComplex_Natural --recode
