

https://user-images.githubusercontent.com/94228508/232267381-2cfc341e-1df0-4ccc-a948-f9e4c73a40a8.mp4

# 100-animation

## Installation

Install [R](https://cran.r-project.org/bin/windows/base/)

Alternative: If you prefer better UI, please install [RStudio](https://posit.co/downloads/)

## Running

The running procedure of the code should be

1. data_importing_variables_defining.R

2. models/(model).R

3. data_visualization.R

If you use R (CMD), please copy and paste the above codes to your command lines. If you use RStudio, you can open all of the files at the same time and run it one by one. 

## Runtime

The code may take a while to run. It depends on your computer's performance and the resolution, fps and the minimum time between states (state_t). You are able to change these settings in the codes. 

## Models

### Uniformly Acelerated Motion

Algorithm:

1. let minimum time = $t$

while $s$ in the current 10-meter section

2. $s = \frac{1}{2}at^2$

3. $v_1 = v_0 + at$

if total distance > 100, break

if s is in the next section

4. $v_0 = v_1$

5. $a = {2((10-s_{exceeded})-v_0t_{next})\over t_{next}^2}$

6. go back to 2

Advantage:

Physics based model

Disadvantage:

Since the velocity of this model is related to $t^2$, whose derivative is $2t$. This means that the speed will become larger as the time passed during each section. As a consequence, the speed of the athletes may be unstable. 

## Gallery

If you think your video is doing well, you can upload it to the "gallery" folder, whose file name should be

(year) (location) (competition) (gender) (race) (model)

where (competition) should be either: 

1. Olympics

2. World Championships

3. Diamond (Diamond League)

4. Other competitions

(race) should be either:

1. H(group) (Heat(group)) i.e. H1 for the first group in Heat

2. SF(group)

3. F

4. Other races

i.e. 2009 Berlin World Championships Men F uniformly_accelerated_motion
