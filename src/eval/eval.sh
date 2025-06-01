#!/bin/bash

outdir="./af3_eval"
mkdir $outdir

for dir in ./af3_result/*/; do
    subfolder=$(basename "$dir")
    
    reference_basename=$(echo "$subfolder" | cut -d '_' -f 2 | tr '[:lower:]' '[:upper:]')
    filename=$(echo "$subfolder" | cut -d '_' -f 2 )
    ref_pdb="./raw/${reference_basename}.pdb"
    ref_cif="./raw/${reference_basename}.cif"
    if [ -f "$ref_pdb" ]; then
        reference_file="$ref_pdb"
    elif [ -f "$ref_cif" ]; then
        reference_file="$ref_cif"
    fi

    ost compare-structures \
    -m "$dir/job_${filename}_model.cif" \
    -r "$reference_file" \
    --fault-tolerant \
    --min-pep-length 4 \
    --min-nuc-length 4 \
    -o "${outdir}/${subfolder}_af3.json" \
    --lddt --bb-lddt --qs-score --dockq \
    --ics --ips --rigid-scores --patch-scores --tm-score
    
    ost compare-ligand-structures \
    -m "$dir/job_${filename}_model.cif" \
    -r "$reference_file" \
    --fault-tolerant \
    --lddt-pli --rmsd \
    --substructure-match \
    -o "${outdir}/${subfolder}_af3_ligand.json"

    DockQ "$dir/job_${filename}_model.cif" "$reference_file" --short > "${outdir}/${subfolder}_af3.txt"

    DockQ "$dir/job_${filename}_model.cif" "$reference_file" --small_molecule > "${outdir}/${subfolder}_af3_ligand.txt"

done

echo "Processing completed. Results are saved in ${outdir} directory."