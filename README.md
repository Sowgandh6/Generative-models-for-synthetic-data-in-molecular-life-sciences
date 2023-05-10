# Variational Autoencoders(VAE) and Vanilla Generative Adversial Networks(GAN) for synthetic data generation in molecular life sciences 

Insufficient data for training machine learning models can result in issues such as underfitting or overfitting. This is because machine learning models may not have enough statistical power to accurately capture the true signals in the data. Additionally, a lack of knowledge about the ground truth values of real data can impact the interpretability of the models. Therefore, there is a growing need for synthetic data to address these challenges. Modern deep learning methods, including generative models, can be employed to generate synthetic data, which can aid in improving the performance and interpretability of machine learning models. In this study, we compared the performance of generative models namely, Variational Autoencoders (VAEs) and vanilla Generative Adversarial Networks (GANs) in generating synthetic tabular data. While GANs have proven to be successful in generating synthetic image data, they have encountered difficulties when it comes to tabular data. Simulated datasets were used to gain a deeper understanding of generative models, with technical noise and signals introduced in the form of batches and groups. VAEs outperformed vanilla GANs in capturing all the complex patterns, including the most diverse genes introduced during the data simulation. This project is done as a part of machine learning course in my masters curriculum.

The "R_script_to_generate_data.R" consists of the script which is used to simulate the data.

"DATASETS" folder consists of the 10 simulated datasets.

The "VAE_GAN_SYNTH_DATA_GENERATION" file is the code which can be used to reproduce the the results. 

The performance of VAE and Vanilla GAN in terms of Precision and Recall:
![image](https://github.com/Sowgandh6/Generative-models-for-synthetic-data-in-molecular-life-sciences/assets/74649012/c379f321-e075-403a-9052-9b1d015ebc0c)

![image](https://github.com/Sowgandh6/Generative-models-for-synthetic-data-in-molecular-life-sciences/assets/74649012/c49bf990-64a5-4882-94d9-58a53f9de5e6)


## License

This project is licensed under the [MIT License](LICENSE).
