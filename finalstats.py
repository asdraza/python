#!/usr/bin/env python
# coding: utf-8

# In[5]:

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats
import statsmodels.formula.api as smf

df = pd.read_csv('prostate.csv')
print(len(df))
print(df.head())
plt.scatter(df.Blood_marker,df.Cancer_volume)
plt.xlabel('Blood Marker')
plt.ylabel('Cancer Volume')

#blood marker and cancer volume increase at a stedily

# In[3]:

df.corr()

#correlation coefficient = 0.858668
#this is a strong relationship as 0.858668 is very close to 1
#it is positive as the number is positive


# In[10]:

model = smf.ols(formula='Cancer_volume~Blood_marker',data=df).fit()
print(model.summary())

xrange = np.linspace(0, 5, 5)
plt.plot(xrange,model.params.Intercept+model.params.Blood_marker*xrange)
plt.scatter(df.Blood_marker,df.Cancer_volume)
plt.xlabel('Blood Marker')
plt.ylabel('Cancer Volume')

#strong linear relationship present between the blood Marker and cancer Volume


# In[11]:

y = -0.3925 + 0.9794 * 4.3
print(y)

#When 4.3mm cubed, the expected answer is 3.8189200000000003

# In[17]:

residuals = model.resid

plt.figure()
plt.hist(residuals)
plt.axis([-5, 5, 0, 70])
plt.xlabel('Residuals')
plt.ylabel('Frequency')

plt.figure()
plt.scatter(df.Blood_marker,residuals)
plt.axis([0, 5, -5, 5])
plt.xlabel('Blood Marker')
plt.ylabel('Residuals')

#residulas is normally distributed with a mean of 0.
#histogram shows constant variance and also has a mean of 0.
#hence, assumptions about the random component of the linear regression model are met.


# In[4]:

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats
import statsmodels.formula.api as smf

df = pd.read_csv('prostate2.csv')
print(len(df))
print(df.head())
plt.scatter(df.Blood_marker,df.Cancer_volume)
plt.xlabel('Blood Marker')
plt.ylabel('Cancer Volume')

model = smf.ols(formula='Cancer_volume~Blood_marker',data=df).fit()
print(model.summary())

xrange = np.linspace(0, 5, 5)
plt.plot(xrange,model.params.Intercept+model.params.Blood_marker*xrange)
plt.scatter(df.Blood_marker,df.Cancer_volume)
plt.xlabel('Blood Marker')
plt.ylabel('Cancer Volume')


#improved model fits, this is because when all the values below 1 are removed, it also removed all of the outliers.
#This makes the line more accurate to the current data.
