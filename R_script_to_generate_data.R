setwd("/path")
devtools::load_all()
library(transcriptomicsBatchEffectSim)

sim_params <-
  list(
    approx_n_genes = 10000,
    n_examples = 400,
    batch1_indices = 1:200,
    batch2_indices = 201:400,
    batch1_group1_indices = 1:100,
    batch1_group2_indices = 101:200,
    batch2_group1_indices = 201:300,
    batch2_group2_indices = 301:400,
    group1_indices = c(1:100, 201:300),
    group2_indices = c(101:200, 301:400),
    batch_difference_threshold = 1,
    n_true_diff_genes = 2000,
    n_true_upreg_genes = 1000,
    max_baseline_log2FC_between_groups = 0.25,
    avg_log2FC_between_groups = 2,
    train_split_prop = 0.70,
    batch_effects_exist = TRUE
  )

for (i in 1:10) {
  sim_data_folder_number <- paste0("../sim_data_", i)
  dir.create(sim_data_folder_number, showWarnings = FALSE)
  data_objs_batch <- simulate_exprsmat_with_batch_and_group_differences(sim_params = sim_params)
  write_list_to_disk(data_objs_batch, sim_data_folder_number)
}

