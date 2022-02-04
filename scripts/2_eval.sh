NAME="$1"
WIDTH="$2"
HEIGHT="$3"
DIR="../data/llff/$NAME"

python eval.py \
   --root_dir "$DIR" \
   --dataset_name llff --scene_name "$NAME" \
   --split test_train \
   --img_wh "$WIDTH" "$HEIGHT" \
   --N_importance 64 \
   --ckpt_path "ckpts/$NAME/epoch=29.ckpt" \
   --spheric_poses \
   --save_depth
