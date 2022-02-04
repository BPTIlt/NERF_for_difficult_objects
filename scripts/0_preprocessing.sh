set -exo pipefail
NAME="$1"
DIR="../data/llff/$NAME"

# rm -rf "$DIR"/sparse
# rm -rf "$DIR"/{colmap_output.txt,database.db*}
# ls "$DIR"

# colmap feature_extractor
#   --database_path "$DIR/database.db" \
#   --image_path "$DIR/images" \
#   --ImageReader.single_camera 1
#   # --SiftExtraction.gpu_index 0

# colmap exhaustive_matcher
#   --database_path "$DIR/database.db"
#   # --SiftMatching.gpu_index 0

# mkdir "$DIR/sparse"
# colmap mapper
#   --database_path "$DIR/database.db" \
#   --image_path "$DIR/images" \
#   --output_path "$DIR/sparse" \
#   --Mapper.num_threads 16 \
#   --Mapper.init_min_tri_angle 4 \
#   --Mapper.multiple_models 0 \
#   --Mapper.extract_colors 0

python ../LLFF/imgs2poses.py "$DIR"
