import pandas as pd
from gpt4all import Embed4All
import numpy as np
from langchain_core.tools import tool



df = pd.read_excel('questions_and_answers.xlsx')
doc = df.to_dict('records')


class VectorStoreRetriever:
    def __init__(self, docs: list, vectors: list, oai_client):
        self._arr = np.array(vectors)
        self._docs = docs
        self._client = oai_client

    @classmethod
    def from_docs(cls, docs, oai_client):
        embeddings = oai_client.embed([doc["Question"] for doc in docs])
        vectors = [emb for emb in embeddings]
        return cls(docs, vectors, oai_client)

    def query(self, query: str, k: int = 5) -> list[dict]:
        embed = self._client.embed([query])

        # "@" is just a matrix multiplication in python
        scores = np.array(embed) @ self._arr.T
        scores = scores[0]
        top_k_idx = np.argpartition(scores, -k)[-k:]
        top_k_idx_sorted = top_k_idx[np.argsort(-scores[top_k_idx])]



        return [
            {**self._docs[idx], "similarity": scores[idx]} for idx in top_k_idx_sorted
        ]


retriever = VectorStoreRetriever.from_docs(doc, Embed4All())


@tool
def lookup_policy(query: str) -> str:
    """Looks up frequently asked questions (FAQ) in a Persian-language document.

    Parameters:
        query (str): The query or question for which the policy is being looked up.

    Returns:
        str: The policy or answer corresponding to the provided query."""
    docs = retriever.query(query, k=1)
    return "\n\n".join([doc["Answer"] for doc in docs])