from langchain_community.tools.tavily_search import TavilySearchResults
import os


os.environ['TAVILY_API_KEY'] = "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"
internet_search = TavilySearchResults()

