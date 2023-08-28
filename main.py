from fastapi import FastAPI
import uvicorn
from mylib.logic import search_wiki
from mylib.logic import wiki as wikilogic
from mylib.logic import phrase as wikip

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Wikipedia API. Call, Search, or Wiki."}


@app.get("/search/{value}")
async def search(value: str):
    """Search Wikipedia pages"""

    result = search_wiki(value)
    return {"result": result}


@app.get("/wiki/{name}")
async def wiki(name: str):
    """Get Wikipedia page"""

    result = wikilogic(name)
    return {"result": result}


@app.get("/phrase/{name}")
async def phrase(name: str):
    """Get Wikipedia page and return phrases"""

    result = wikip(name)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
