# "Toy Baselines" - commands to get things running, but only ~100 eval points.

# Blind Baseline
python -m firm_foundations.routines.membership_inference --dataset.name "anonymous-ml-paper/pythia_dedupe_0-97000_97000-98500" --features.names "['bow_tokens']" --dataset.num_train_samples 100 --dataset.train_start_index 0 --dataset.num_val_samples 100 --dataset.val_start_index 4000 --model.name "EleutherAI/pythia-70m-deduped" --classifier.name log_reg --features.compute True --classifier.train True --classifier.infer True --model.revision "step97000"

# LOSS Baseline
python -m firm_foundations.routines.membership_inference --dataset.name "anonymous-ml-paper/pythia_dedupe_0-97000_97000-98500" --dataset.num_train_samples 1 --dataset.train_start_index 0 --dataset.num_val_samples 100 --dataset.val_start_index 4000 --features.names "['loss']" --classifier.name threshold --model.name "EleutherAI/pythia-70m-deduped" --features.compute True --classifier.train False --classifier.infer True --model.revision "step97000"

# Min-K Baseline
python -m firm_foundations.routines.membership_inference --dataset.name "anonymous-ml-paper/pythia_dedupe_0-97000_97000-98500" --dataset.num_train_samples 1 --dataset.train_start_index 0 --dataset.num_val_samples 100 --dataset.val_start_index 4000 --features.names "['mink']" --classifier.name threshold --model.name "EleutherAI/pythia-70m-deduped" --features.compute True --classifier.train False --classifier.infer True --model.revision "step97000"

# MoPe Baseline
python -m firm_foundations.routines.membership_inference --dataset.name "anonymous-ml-paper/pythia_dedupe_0-97000_97000-98500" --dataset.num_train_samples 1 --dataset.train_start_index 0 --dataset.num_val_samples 100 --dataset.val_start_index 4000 --features.names "['mope']" --classifier.name threshold --model.name "EleutherAI/pythia-70m-deduped" --features.compute True --classifier.train False --classifier.infer True --model.revision "step97000" --mope.num_models 2 --mope.noise_stdev 0.005 --mope.noise_type "gaussian"
