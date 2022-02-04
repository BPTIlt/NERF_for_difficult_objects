NAME="$1"
WIDTH="$2"
HEIGHT="$3"
DIR="../data/llff/nerf_synthetic/$NAME"

python3 train.py \
   --dataset_name blender \
   --root_dir "$DIR" \
   --N_importance 64 --img_wh "$WIDTH" "$HEIGHT" --noise_std 0 \
   --num_epochs 16 --batch_size 2048 \
   --optimizer radam --lr 5e-4 \
   --lr_scheduler steplr --decay_step 2 4 8 --decay_gamma 0.5 \
   --exp_name "$NAME" --num_gpus 2
