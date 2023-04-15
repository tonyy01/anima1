README

# 100-animation

Animate 100 metre race using splits data

## Content

1. [Installation](https://github.com/tonyy0001/100-animation/edit/main/README.md#installation)

2. [Running](https://github.com/tonyy0001/100-animation/edit/main/README.md#Running)

3. [Runtime](https://github.com/tonyy0001/100-animation/edit/main/README.md#Runtime)

4. [Models](https://github.com/tonyy0001/100-animation/edit/main/README.md#Models) 

   - [Uniformly Acelerated Motion](https://github.com/tonyy0001/100-animation/edit/main/README.md#uniformly-acelerated-motion)

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
