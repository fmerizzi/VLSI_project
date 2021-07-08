import matplotlib.pyplot as plt
import random
import numpy as np

fig, ax = plt.subplots(figsize=[15,15])

xCoordinate = [13, 22, 13, 0, 2, 9, 5, 7, 21, 0, 5, 19, 15, 13, 10, 16, 13, 10, 17, 2, 10, 10, 10, 12, 3, 14, 17, 5, 21, 0]
yCoordinate = [1, 12, 12, 11, 14, 9, 12, 12, 8, 6, 9, 12, 7, 0, 4, 12, 9, 7, 8, 11, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0]
xDimension = [1,3,3,2,3,4,2,3,4,5,4,3,2,1,2,3,4,5,4,3,4,3,2,1,2,3,4,5,4,3]
yDimension = [1,2,3,4,1,2,3,2,4,5,3,2,1,1,1,2,3,2,4,3,2,3,4,5,6,7,8,9,8,6];

def plot_rect(ax,x,y,w,h):
    r = random.random()
    b = random.random()
    g = random.random()
    color = (r, g, b)
    rect = plt.Rectangle((x,y), w, h,color=color)
    ax.add_patch(rect)
    ax.scatter(0,0)
    
for i in range(len(xCoordinate)):
    plot_rect(ax,xCoordinate[i],yCoordinate[i],xDimension[i],yDimension[i])

plt.axis('square')
plt.xticks(np.arange(0, max(xCoordinate) + max(xDimension), 1))
plt.yticks(np.arange(0, max(yCoordinate) + max(yDimension), 1))
plt.show()
