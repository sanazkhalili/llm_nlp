import scipy
from transformers import VitsModel, AutoTokenizer
import torch

model = VitsModel.from_pretrained("SeyedAli/Persian-Speech-synthesis")
tokenizer = AutoTokenizer.from_pretrained("SeyedAli/Persian-Speech-synthesis")


def text_2_speech(text_input):
    inputs = tokenizer(text_input, return_tensors="pt")

    with torch.no_grad():
        output = model(**inputs).waveform
    return output, model.config.sampling_rate