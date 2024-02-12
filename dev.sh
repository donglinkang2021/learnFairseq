fairseq-train names-bin \
  --task model/simple_classification \
  --arch task/pytorch_tutorial_rnn \
  --optimizer adam \
  --lr 0.001 \
  --lr-shrink 0.5 \
  --max-tokens 1000