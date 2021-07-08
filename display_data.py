import matplotlib.pyplot as plt
import random
fig, ax = plt.subplots()

squares = [[0,2,1,1],[2,8,2,2],[1,0,3,3],[0,8,2,1],[0,3,4,5],[0,0,1,2]]



def plot_rect(ax,x,y,w,h):
    r = random.random()
    b = random.random()
    g = random.random()
    color = (r, g, b)
    rect = plt.Rectangle((x,y), w, h,color=color)
    ax.add_patch(rect)
    ax.scatter(0,0)
    
for i in squares:
    plot_rect(ax,i[0],i[1],i[2],i[3])


plt.show()
 
