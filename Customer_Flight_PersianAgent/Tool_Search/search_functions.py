from langchain_community.tools.tavily_search import TavilySearchResults
import os


os.environ['TAVILY_API_KEY'] = ""
internet_search = TavilySearchResults()

