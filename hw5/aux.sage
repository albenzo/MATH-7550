x,y = vars('x,y')

W = plot3d(sqrt(-(2-(x^2+y^2)^(1/2))^2+1),(x,-4,4),(y,-4,4),plot_points=400,frame=False,opacity=.8)
Z = plot3d(-sqrt(-(2-(x^2+y^2)^(1/2))^2+1),(x,-4,4),(y,-4,4),plot_points=400,frame=False,opacity=.8)

M = W+Z

show(M)

S = Cylindrical('radius',['azimuth','height'])
theta,z= var('theta,z')
N1 = plot3d(2,(theta,0,2*pi),(z,-3,3),frame=False,transformation=S,color='purple',opacity=.8)

show(N1+M)

N2 = plot3d(1,(theta,0,2*pi),(z,-3,3),frame=False,transformation=S,color='purple',opacity=.8)

show(N2+M)
