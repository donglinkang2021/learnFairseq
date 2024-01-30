# Evaluating Pre-trained Models

```bash
curl https://dl.fbaipublicfiles.com/fairseq/models/wmt14.v2.en-fr.fconv-py.tar.bz2 | tar xvjf -
```

```bash
MODEL_DIR=wmt14.en-fr.fconv-py
fairseq-interactive \
    --path $MODEL_DIR/model.pt $MODEL_DIR \
    --beam 5 --source-lang en --target-lang fr \
    --tokenizer moses \
    --bpe subword_nmt --bpe-codes $MODEL_DIR/bpecodes
```