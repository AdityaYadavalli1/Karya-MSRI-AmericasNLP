import io 
import sentencepiece as spm
import json 
import argparse 
from tokenizers.normalizers import NFKC
from tokenizers import SentencePieceBPETokenizer

from tokenizers.processors import TemplateProcessing
from sklearn.model_selection import train_test_split

def generate_translate_data(meta_root, src_lang, tgt_lang, dataset_path):
    dataset = []
    with open(meta_root + 'meta.tsv') as file: 
        files_set = file.read().split('\n') 
        for ele in files_set: 
            wav_name, src_processed, source_raw, target_raw = ele.split('\t')
            item = {'translation': {src_lang: source_raw, tgt_lang: target_raw}}
            dataset.append(item)

    with open(dataset_path, 'w') as f:
        for item in dataset:
            f.write(json.dumps(item, ensure_ascii=False) + '\n')   
    
        
if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type = str, default = './')
    parser.add_argument("--meta_root", type = str, default = './')
    parser.add_argument("--src_lang", type=str)
    parser.add_argument("--tgt_lang", type=str)
    parser.add_argument("--vocab_size", type = int, default = 8000)
    parser.add_argument("--generate_vocab", type = bool, default = False)
    parser.add_argument("--distill", type = bool, default = False)
    args = parser.parse_args()

    if args.distill: 
        train_file_write, val_file_write = f'{args.root}/train_distillation_{args.src_lang}_{args.tgt_lang}.json', f'{args.root}/val_distillation_{args.src_lang}_{args.tgt_lang}.json'
    else: 
        train_file_write, val_file_write = f'{args.root}/train_{args.src_lang}_{args.tgt_lang}.json', f'{args.root}/val_{args.src_lang}_{args.tgt_lang}.json'
    vocab_file_write = f'{args.root}/vocab_{args.src_lang}_{args.tgt_lang}_{args.vocab_size}.json'

    print('Converting Training Data into specific format')
    generate_translate_data(args.src_lang, args.tgt_lang, args.meta_root)
    print('Converting Evaluation Data into specific format')
    generate_translate_data(args.src_lang, args.tgt_lang, args.meta_root)
    
    with open(train_file_write, 'r', encoding = 'UTF-8') as file:
        train_src = [line for line in file.read().split('\n')]
    with open(val_file_write, 'r', encoding = 'UTF-8') as file:
        train_tgt = [line for line in file.read().split('\n')]
    
    #Creating a Shared vocab for the languages
    train_src.extend(train_tgt) 
    train = train_src 

    # Making a shared vocab 
    if args.generate_vocab: 
        print(f'{len(train)} samples being used to generate the vocab.')    
        tokenizer = SentencePieceBPETokenizer(unk_token="<unk>")
        # tokenizer.normalizer = NFKC() 
        tokenizer.train_from_iterator(
            train,
            vocab_size=args.vocab_size,
            show_progress=True, 
            special_tokens = ['<s>', '</s>', '<pad>']
        )
        tokenizer.post_processor = TemplateProcessing(
                single="<s> $A </s>",
                special_tokens=[
                    ("<s>", tokenizer.token_to_id("<s>")),
                    ("</s>", tokenizer.token_to_id("</s>")),
                ],
            )
        tokenizer.save(vocab_file_write)
       
