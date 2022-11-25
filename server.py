import asyncio
import websockets

async def handleConnection(websocket):
    async for message in websocket:
        print('New client connected...')
        await websocket.send(message)

async def runServer():
    async with websockets.serve(handleConnection, "127.0.0.1", 8080):
        print('Server is listening')
        await asyncio.Future()  # run forever

asyncio.run(runServer())
