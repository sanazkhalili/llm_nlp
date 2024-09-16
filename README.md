## Clean Function for Dataset Folder

We use various libraries and tools for cleaning and preprocessing the poem dataset ([link to dataset](https://github.com/soleimani101/Persian-poems/tree/main/database)).

The tools are:

1. **haraai_clean.py**: [ParsiNorm](https://github.com/haraai/ParsiNorm)
2. **hazm normalizer**

To use the clean function, you can use the following code:

```python
from main_clean import clean

with open('/content/anvari.txt') as fp:
    texts = fp.readlines()

list_clean = clean(texts[0:15])
print(list_clean)
```


## Persian model tools folder
We have collected several models for Persian and multilingual (supporting Persian) tokenization and text classification tasks.
