import asyncio
import websockets

async def hello():
    async with websockets.connect("ws://127.0.0.1:8080") as websocket:
        await websocket.send("Sending data...")
        await websocket.recv()

asyncio.run(hello())
