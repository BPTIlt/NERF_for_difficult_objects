NAME="$1"
WIDTH="$2"
HEIGHT="$3"
DIR="../data/llff/$NAME"

python3 train.py \
  --dataset_name llff \
  --root_dir "$DIR" \
  --N_importance 64 --img_wh "$WIDTH" "$HEIGHT" \
  --num_epochs 30 --batch_size 2048 \
  --optimizer radam --lr 5e-4 \
  --lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
  --exp_name "$NAME" \
  --spheric_poses # --num_gpus 2
