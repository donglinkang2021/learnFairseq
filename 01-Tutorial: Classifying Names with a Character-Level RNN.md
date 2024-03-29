# Tutorial: Classifying Names with a Character-Level RNN

## Preprocessing the data

```bash
wget https://dl.fbaipublicfiles.com/fairseq/data/tutorial_names.tar.gz
tar -xzvf tutorial_names.tar.gz
rm -rf tutorial_names.tar.gz
```

```bash
fairseq-preprocess \
  --trainpref names/train \
  --validpref names/valid \
  --testpref names/test \
  --source-lang input \
  --target-lang label \
  --destdir names-bin \
  --dataset-impl raw
```

```bash
INFO:fairseq_cli.preprocess:Namespace(no_progress_bar=False, log_interval=100, log_format=None, log_file=None, aim_repo=None, aim_run_hash=None, tensorboard_logdir=None, wandb_project=None, azureml_logging=False, seed=1, cpu=False, tpu=False, bf16=False, memory_efficient_bf16=False, fp16=False, memory_efficient_fp16=False, fp16_no_flatten_grads=False, fp16_init_scale=128, fp16_scale_window=None, fp16_scale_tolerance=0.0, on_cpu_convert_precision=False, min_loss_scale=0.0001, threshold_loss_scale=None, amp=False, amp_batch_retries=2, amp_init_scale=128, amp_scale_window=None, user_dir=None, empty_cache_freq=0, all_gather_list_size=16384, model_parallel_size=1, quantization_config_path=None, profile=False, reset_logging=False, suppress_crashes=False, use_plasma_view=False, plasma_path='/tmp/plasma', criterion='cross_entropy', tokenizer=None, bpe=None, optimizer=None, lr_scheduler='fixed', scoring='bleu', task='translation', source_lang='input', target_lang='label', trainpref='names/train', validpref='names/valid', testpref='names/test', align_suffix=None, destdir='names-bin', thresholdtgt=0, thresholdsrc=0, tgtdict=None, srcdict=None, nwordstgt=-1, nwordssrc=-1, alignfile=None, dataset_impl='raw', joined_dictionary=False, only_source=False, padding_factor=8, workers=1, dict_only=False)
INFO:fairseq_cli.preprocess:Wrote preprocessed data to names-bin
```

## Registering a new Model

## Training the Model