from detectron2.utils.logger import setup_logger
setup_logger()

# import sys
# import numpy as np
# import os, json, cv2, random
# from google.colab.patches import cv2_imshow

# from detectron2 import model_zoo
# from detectron2.engine import DefaultPredictor
from detectron2.config import get_cfg
# from detectron2.utils.visualizer import Visualizer
# from detectron2.data import MetadataCatalog, DatasetCatalog


# sys.path.insert(0, 'third_party/CenterNet2/projects/CenterNet2/')
# from centernet.config import add_centernet_config
# from detic.config import add_detic_config
# from detic.modeling.utils import reset_cls_test

cfg = get_cfg()
# add_centernet_config(cfg)
# add_detic_config(cfg)
# cfg.merge_from_file("configs/Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.yaml")
# cfg.MODEL.WEIGHTS = 'https://dl.fbaipublicfiles.com/detic/Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.pth'
# cfg.MODEL.ROI_HEADS.SCORE_THRESH_TEST = 0.5  # set threshold for this model
# cfg.MODEL.ROI_BOX_HEAD.ZEROSHOT_WEIGHT_PATH = 'rand'
# cfg.MODEL.ROI_HEADS.ONE_CLASS_PER_PROPOSAL = True # For better visualization purpose. Set to False for all classes.
# predictor = DefaultPredictor(cfg)