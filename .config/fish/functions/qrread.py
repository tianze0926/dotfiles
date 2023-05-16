import sys
import io

from PIL import Image
from pyzbar.pyzbar import decode

data = sys.stdin.buffer.read()
f = io.BytesIO(data)

res = decode(Image.open(f))

print(res)
