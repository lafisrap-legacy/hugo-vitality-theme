
vpath %.html public/
vpath %.css static/css
vpath %.less static/less

all:  	vitality.css\
		index.html
	hugo

vitality.css: $(shell ls static/less)
	lessc static/less/vitality.less static/css/vitality.css

