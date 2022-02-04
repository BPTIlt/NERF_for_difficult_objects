NAME="$1"
WIDTH="$2"
HEIGHT="$3"
DIR="../data/llff/nerf_synthetic/$NAME"

python eval.py \
   --root_dir "$DIR" \
   --dataset_name blender \
   --scene_name "$NAME" \
   --img_wh "$WIDTH" "$HEIGHT" \
   --N_importance 64 \
   --ckpt_path "ckpts/$NAME/epoch=15.ckpt"
