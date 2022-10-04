#!/bin/bash

# python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Bribri/best_cer_model/ --processor_path /home/t-hdiddee/asr/models_src_raw/Bribri/best_cer_model/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Bribri/test_inputs/ --lang Bribri --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_cer_loss/bzd_test.txt 
# python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Guarani/best_cer_model/ --processor_path /home/t-hdiddee/asr/models_src_raw/Guarani/best_cer_model/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Guarani/test_inputs/ --lang Guarani --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_cer_loss/gn_test.txt 
# python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Quechua/best_cer_model/ --processor_path /home/t-hdiddee/asr/models_src_raw/Quechua/best_cer_model/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Quechua/test_inputs/ --lang Quechua --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_cer_loss/quy_test.txt 

python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Kotiria/best_cer_model/ --processor_path /home/t-hdiddee/asr/models_src_raw/Kotiria/best_cer_model/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Kotiria/test_inputs/ --lang Kotiria --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_cer_loss/gvc_test.txt 
python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Waikhana/best_cer_model/ --processor_path /home/t-hdiddee/asr/models_src_raw/Waikhana/best_cer_model/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Waikhana/test_inputs/ --lang Waikhana --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_cer_loss/tav_test.txt 


python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Bribri/checkpoint-400/ --processor_path /home/t-hdiddee/asr/models_src_raw/Bribri/checkpoint-400/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Bribri/test_inputs/ --lang Bribri --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_val_loss/bzd_test.txt 
python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Guarani/checkpoint-400/ --processor_path /home/t-hdiddee/asr/models_src_raw/Guarani/checkpoint-400/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Guarani/test_inputs/ --lang Guarani --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_val_loss/gn_test.txt 
python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Quechua/checkpoint-400/ --processor_path /home/t-hdiddee/asr/models_src_raw/Quechua/checkpoint-400/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Quechua/test_inputs/ --lang Quechua --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_val_loss/quy_test.txt 

python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Kotiria/checkpoint-500/ --processor_path /home/t-hdiddee/asr/models_src_raw/Kotiria/checkpoint-500/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Kotiria/test_inputs/ --lang Kotiria --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_val_loss/gvc_test.txt 
python inference.py --model_path /home/t-hdiddee/asr/models_src_raw/Waikhana/checkpoint-400/ --processor_path /home/t-hdiddee/asr/models_src_raw/Waikhana/checkpoint-400/ --test_audio_path /home/t-hdiddee/data/americasnlp/test_set/Waikhana/test_inputs/ --lang Waikhana --save_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/ --inference_path /home/t-hdiddee/Karya-MSRI-AmericasNLP/test_inferences/baselines/best_val_loss/tav_test.txt 