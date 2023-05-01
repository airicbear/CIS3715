### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ 8287e1b7-4554-4f5d-bc37-55415adaf685
begin
	using PlutoUI
	PlutoUI.TableOfContents()
end

# ╔═╡ 4d991824-967a-11ed-2dc4-0118fb3fdac3
begin
	using LinearAlgebra
	using StatsBase
	using DataFrames
md"""
# CIS 3715 Principles of Data Science Notes

Hongchang Gao

Spring 2023
"""
end

# ╔═╡ 005ef0e7-be1c-408b-a225-b02c91ac26d5
md"""
# Lecture 1: Course Intro
"""

# ╔═╡ db770bf9-4e5c-4ad3-b87e-a80bf241a504
md"## Course overview"

# ╔═╡ 7861226d-0f95-478e-bec8-93e660fcd2bb
md"""
### Instructor

- Research areas:

  - Machine/Deep Learning

  - Large-scale optimization
"""

# ╔═╡ 6b96e4c1-fd7c-4777-ac88-d56daa84fc17
md"""
### Course Logistics

- Lecture section:

  - The class meets at 9:30-10:50am on Tue and Thu

  - BEURY, 00162

- Lab section:

  - The class meets at 9:00-10:50am on Mon

  - TA for Section 001:

    - Yihan Zhang

    - SERC, 00204

  - TA for Section 002:

    - Xinwen (Ellen) Zhang

    - SERC, 00206

- Office hour

  - Instructor: Hongchang Gao, hongchang.gao@temple.edu

    - 11:00am-12:00pm Tuesday,

    - SERC 318

  - Section 001 TA: Yihan Zhang, yihan.zhang0002@temple.edu

    - 8:00am-10:00am Wednesday,

    - SERC 303

  - Section 002 TA: Xinwen (Ellen) Zhang, ellenz@temple.edu

    - 1:00pm-3:00pm Wednesday,

    - SERC 303

- Prerequisites

  - CIS 2166 or linear algebra, CIS 1051 or 1057 or 1068

  - Be familiar with basic mathematical knowledge about algebra and statistics.
    For example, it is expected that you know vector, matrix, mean, variance.

  - Good programming skills in Python.
    It is expected that you can use Python to preprocess data and implement state-of-the-art data mining methods to analyze data.
"""

# ╔═╡ 4b568852-b481-487d-b075-3dd16e79a053
md"""
### Grading Policy

- Class attendance and participation: 10%

  - **Check in for every lab section**

- Labs and homework: 25%

  - 10 lab assignments

- Quizzes: 20%

  - Weekly quizzes

- Midterm: 25%

- Final project: 20%
"""

# ╔═╡ 5688b72c-2c2b-4653-99c5-5502a61b9f5c
md"""
### Lab Assignments

- How to submit?

  - Upload via Canvas

  - Not accept email submission

- Policy

  - **NOT accept late submission**

  - **Do NOT copy others' solutions**

  - Feel free to use resources from the web, but make sure to acknowledge the sources.
"""

# ╔═╡ 455f8a7c-d700-41c8-80e7-eedda6035302
md"""
### Final Project

- A list of potential topics will be given

- Performed individually or in groups of up to 3 students

- You will need to submit

  - A brief proposal:

    - What's topic you plan to work on?

    - Why you choose this topic?

    - Which aspects you will focus on?

  - Final report

    - An entire pipeline of this project: data preprocessing, data understanding, data analysis with machine learning models, result analysis
"""

# ╔═╡ fc8a5ff8-2993-47df-9371-b7fbe21c40fb
md"""
### Course Schedule

- 01/17 - Course Introduction

- 01/19 - Introduction Python

- 01/23 - **Lab 1** (due 02/05)

- 01/24 - Mathematics foundation

- 01/26 - Mathematics foundation

- 01/30 - **Lab 2** (due 02/12)

- 01/31 - Data Preprocessing

- 02/02 - Data Understanding

- 02/06 - **Lab 3** (due 02/19)

- 02/07 - Supervised Learning

- 02/09 - Supervised Learning

- 02/13 - **Lab 4** (due 02/26)

- 02/14 - Supervised Learning

- 02/16 - Supervised Learning

- 02/20 - **Lab 5** (due 03/19)

- 02/21 - Supervised Learning

- 02/23 - Supervised Learning

- 02/28 - Midterm review

- 03/02 - **Midterm exam**

- 03/07 - **Spring Break**

- 03/09 - **Spring Break**

- 03/13 - **Lab 6** (due 03/26)

- 03/14 - Unsupervised Learning

- 03/16 - Unsupervised Learning

- 03/20 - **Lab 7** (due 04/02)

- 03/21 - Unsupervised Learning

- 03/23 - Unsupervised Learning

- 03/27 - **Lab 8** (due 04/09)

- 03/28 - Document analysis

- 03/30 - Document analysis

- 04/03 - **Lab 9** (due 04/16)

- 04/04 - Recommendation system

- 04/06 - Recommendation system

- 04/10 - **Lab 10** (due 04/30)

- 04/11 - Deep neural networks

- 04/13 - Deep neural networks

- 04/18 - Deep neural networks

- 04/20 - Deep neural networks

- 04/23 - **Final Project due**

- 04/25 - Final project presentation

- 04/27 - Final project presentation

- 05/02 - Study days
"""

# ╔═╡ 4c592049-d03a-4f7c-847f-badcb1ebd7ec
md"""
## Introduction to data science

- What is data science?

  - Extract knowledge from data
"""

# ╔═╡ 57ee2c1d-67c4-4934-baf8-c32f55828eb1
md"""
### Example: Spam detection

- Step 1: load data

  ```python
  message_data = pd.read_csv("spam.csv", encoding="latin")
  message_data.head()
  ```


- Step 2: data preprocessing

  - Some features are missing or not important

  - Transform words to numerical values

    - Build a dictionary ⟹ [world, Hello, computer, math, PA, Temple, campus]

    - Hello Temple ⟹ [0, 1, 0, 0, 0, 1, 0]

- Step 3: build the classifier (e.g., logistic regression)

- Step 4: evaluation
"""

# ╔═╡ f5d9c076-e96c-4f2a-972d-66e48c6f7f12
md"""
### Data Science Applications

- Internet search

  - Autocomplete feature

  - Ranking results

- Recommender system

  - Recommend products to users

- Target advertising

  - Deciding which ads to show

  - How to show them

- Social network analysis

- Natural language processing

- Self-driving cars

- Sequential decision: robotics
"""

# ╔═╡ f87a198c-3a63-4085-80a1-6fb4c9ec3325
md"""
### Exciting Success 1

- Image classification

  - ImageNet competition
"""

# ╔═╡ 09c8d472-bc1e-4fe2-b650-5e8a054eaa9a
md"""
### Exciting Success 2

- **S**tanford **Qu**estion **A**nswering **D**ataset (SQuAD):

  - a reading comprehension dataset

  - questions posed by crowd workers on a set of Wikipedia articles

  - the answer to every question is a segment of text, or *span*
"""

# ╔═╡ 1d10365d-6345-470e-90ab-d1c550363676
md"""
### Exciting Success 3

- Alpha Go
"""

# ╔═╡ ffa8b4ad-dafe-403e-b701-88a734fe7a0f
md"""
### Exciting Success 4

- AlphaFold:

  - Highly accurate protein structure prediction for the human proteome

    - Previously: 17% of the total residues in human protein sequences are covered

    - AlphaFold: 98.5% of human proteins
"""

# ╔═╡ 129ae27f-b150-45f0-a50b-c82eeaf9001e
md"""
### Conclusion

- Data Science is everywhere

- Data Science is interesting

- Data Science is powerful
"""

# ╔═╡ bd00ccb9-040f-485d-954f-3b8b4d201f7b
md"# Lecture 2: Using Python for Data Science"

# ╔═╡ 93dd6516-737d-41f1-ac7f-d5c182cd5838
md"""
## Python for Data Science

Packages:

- Numpy

- Scikit-learn (sklearn)

- Pytorch

- Tensorflow

- Pandas

- Matplotlib
"""

# ╔═╡ 8b4b6045-767d-4e14-94ea-28af864863e1
md"""
### NumPy

NumPy: fundamental package for scientific computing

- Large, multi-dimensional arrays and matrices

- High-level mathematical functions

- 1-D array: `arr = np.array([1, 2, 3, 4, 5])`

- 2-D array: `arr = np.array([1, 2, 3], [4, 5, 6])`

- Array indexing: `arr[2] + arr[3]`

- Mathematic operation:

  ```python
  >>> a = np.array([1,2,3])
  >>> b = np.array([0,1,0])
  >>> np.inner(a, b)
  2
  ```
"""

# ╔═╡ 7ea847d6-d5c5-483c-8fbb-0d3762f3195f
md"""
### scikit-learn (sklearn)

- Machine learning package in Python

- It includes [various datasets for machine learning tasks](https://scikit-learn.org/stable/modules/classes.html#module-sklearn.datasets)

- It includes [various state-of-the-art machine learning models](https://scikit-learn.org/stable/modules/classes.html#module-sklearn.cluster)
"""

# ╔═╡ e9a27bb5-b917-4f5a-8f12-2de7fe011d8a
md"""
### PyTorch

- Deep Learning tools in Python, developed by Facebook
"""

# ╔═╡ e45d1933-0d36-4d66-8f11-c60a82a2887a
md"""
### Tensorflow

- Deep Learning tools in Python, developed by Google
"""

# ╔═╡ 61bcef96-d4c6-44b9-b022-65039f438d55
md"""
### Pandas

- A Python package for working with datasets

- Has functions for

  - Analyze data

  - Clean data

  - Explore data

  - Manipulate data

Read CSV example:

```python
import pandas as pd

df = pd.read_csv('data.csv')
```

Read JSON example:

```python
import pandas as pd

df = pd.read_json('data.json')
```
"""

# ╔═╡ e4a38dc2-24c7-48e1-ab66-52b970752ae2
md"""
### Matplotlib

- A Python package for visualizing data
"""

# ╔═╡ e5ba5c1d-40ea-4f55-af71-3f0831f97718
md"""
## Python Basics

Creating variables

- Python has no command for declaring a variable

- A variable is created the moment you first assign a value to it

```python
x = 5
y = "John"
print(x)
print(y)
```

```
5
John
```

```python
x = 5
y = "John"
print(type(x))
print(type(y))
```

```
<class 'int'>
<class 'str'>
```
"""

# ╔═╡ 2410f506-c07d-46ee-8081-85c2af34a070
md"""
### List

List:

- Ordered: have a defined order, and that order will not change

- Changeable: we can change, add, and remove items in a list

- Allow duplicates: lists can have items with the same value

List examples:

```python
list1 = ["apple", "banana", "cherry"]
list2 = [1, 5, 7, 9, 3]
list3 = [True, False, False]
```

Access item example:

```python
thislist = ["apple", "banana", "cherry"]
print(thislist[0])
print(thislist[-1])
print(thislist[-2])
```

```
apple
cherry
banana
```

Access items example:

```python
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[2:5])
print(thislist[2:-2])
```

```
['cherry', 'orange', 'kiwi']
['cherry', 'orange', 'kiwi']
```

Append: add an item to the end of the list

```python
thislist = ["apple", "banana", "cherry"]
thislist.append("orange")
print(thislist)
```

```
['apple', 'banana', 'cherry', 'orange']
```

Insert: insert an item at a specified index

```python
thislist = ["apple", "banana", "cherry"]
thislist.append(1, "orange")
print(thislist)
```

```
['apple', 'orange', 'banana', 'cherry']
```

Extend: append elements from *another list* to the current list

```python
thislist = ["apple", "banana", "cherry"]
tropical = ["mango", "pineapple", "papaya"]
thislist.extend(tropical)
print(thislist)
```

```
['apple', 'banana', 'cherry', 'mango', 'pineapple', 'papaya']
```

Remove: remove the specified item

```python
thislist = ["apple", "banana", "cherry"]
thislist.remove("banana")
print(thislist)
```

```
['apple', 'cherry']
```

Loop through a list

```python
thislist = ["apple", "banana", "cherry"]
for x in thislist:
	print(x)
```

```python
thislist = ["apple", "banana", "cherry"]
for i in range(len(thislist)):
	print(thislist[i])
```

```
apple
banana
cherry
```
"""

# ╔═╡ 89fb7ae6-030c-4373-b3ab-820f2a8fe190
md"""
### Tuple

- Tuple: store multiple items in a single variable

  - Ordered: the items have a defined order, and that order will not change

  - **Unchangeable:** cannot change, add or remove items after the tuple has been created

  ```python
  thistuple = ("apple", "banana", "cherry", "apple", "cherry")
  print(thistuple)
  ```

  ```
  ('apple', 'banana', 'cherry', 'apple', 'cherry')
  ```


- Access:

  ```python
  thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
  print(thistuple[1])
  print(thistuple[-1])
  print(thistuple[2:5])
  ```

  ```
  banana
  mango
  ('cherry', 'orange', 'kiwi')
  ```


- Unpack: extract the values back into variables

  ```python
  fruits = ("apple", "banana", "cherry")

  (green, yellow, red) = fruits

  print(green)
  print(yellow)
  print(red)
  ```

  ```
  apple
  banana
  cherry
  ```


- Loop through a tuple

  ```python
  thistuple = ("apple", "banana", "cherry")
  for x in thistuple:
    print(x)
  ```

  ```python
  thistuple = ("apple", "banana", "cherry")
  for i in range(len(thistuple)):
    print(thistuple[i])
  ```

  ```
  apple
  banana
  cherry
  ```
"""

# ╔═╡ 5ec76298-8955-42d9-aa18-4a9d9347e923
md"""
### Dictionary

- Dictionary: store data values in key:value pairs

  - items are **unordered**, **changeable**, and does **not allow duplicates**

  - items can be referred to by using the key name.

  ```python
  thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
  }
  print(thisdict)
  print(thisdict["brand"])
  ```

  ```
  {'brand': 'Ford', 'model': 'Mustang', 'year': 1964}
  Ford
  ```


- Access:

  ```python
  thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
  }

  x = thisdict.keys()
  print(x)

  y = thisdict.values()
  print(y)

  z = thisdict.items()
  print(z)
  ```
"""

# ╔═╡ 66e651e7-6d28-4142-987e-9b4569787264
md"""
### Pandas

- A Python library for working with data sets

- Has functions for

  - Analyzing data

  - Cleaning data

  - Exploring data

  - Manipulating data

- DataFrame

  - A 2-dimensional data structure, like a 2-dimensional array, or a table with rows and columns

  ```python
  import pandas as pd

  data = {
      "calories": [420, 380, 390],
      "duration": [50, 40, 45]
  }

  df = pd.DataFrame(data)

  print(df)
  print(type(df))
  ```


- Load CSV file

  ```python
  import pandas as pd

  df = pd.read_csv("cars.csv")

  print(df)
  ```


- Get rows

  ```python
  print("===The first row===")

  print(df.iloc[0])
  ```

  ```python
  print("===The last row===")

  print(df.iloc[-1])
  ```


- Get columns

  ```python
  print("===The first column===")

  print(df.iloc[:, 0])
  ```

  ```python
  print("===The last column===")

  print(df.iloc[:, -1])
  ```

- Get multiple rows or columns

  ```python
  print(df.iloc[1, [2,3]])
  ```

  ```python
  print(df.iloc[[1,2], 3])
  ```

- Convert DataFrame to numpy Array

  ```python
  print(df.to_numpy())
  ```

  ```python
  print(df.iloc[:, 1:-1].to_numpy())
  ```
"""

# ╔═╡ 773de639-5365-4d40-9746-80d483f44077
md"""
### Matplotlib

- A Python package for visualization

  - Plot: draws a line from point to point

  ```python
  import matplotlib.pyplot as plt
  import numpy as np

  x_coord = np.array([1, 8])
  y_coord = np.array([3, 10])

  plt.plot(x_coord, y_coord)
  plt.show()
  ```


- Scatter

  - plot one dot for each point

  ```python
  import matplotlib.pyplot as plt
  import numpy as np

  x = np.array([5,7,8,7,2,17,2,9,4,11,12,9,6])
  y = np.array([99,86,87,88,111,86,103,87,94,78,77,85,86])

  plt.scatter(x, y)
  plt.show()
  ```


- Bar plot

  - draw bar graph

  ```python
  import matplotlib.pyplot as plt
  import numpy as np

  x = np.array(["A", "B", "C", "D"])
  y = np.array([3, 8, 1, 10])

  plt.bar(x,y)
  plt.show()
  ```


- Histogram plot

  - the number of observations within each given interval

  ```python
  import matplotlib.pyplot as plt
  import numpy as np

  x = np.random.normal(170, 10, 250)

  plt.hist(x)
  plt.show()
  ```
"""

# ╔═╡ 13a06395-fa10-42c9-8f33-46f05ef48bbe
md"""
### NumPy

- Create a NumPy nd-array object

  - Pass a list, tuple or any array-like object into the `array()` method

  ```python
  import numpy as np

  a = np.array(42)
  b = np.array([1, 2, 3, 4, 5])
  c = np.array([[1, 2, 3], [4, 5, 6]])
  d = np.array([[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [4, 5, 6]]])

  print(a.ndim)
  print(b.ndim)
  print(c.ndim)
  print(d.ndim)
  ```


- Access array elements

  ```python
  import numpy as np

  arr = np.array([1, 2, 3, 4])

  print(arr[0])
  print(arr[-1])
  print(arr[0:2])
  ```

  ```python
  import numpy as np

  arr = np.array([[1,2,3], [6,7,8]])

  print('1st row: ', arr[0, :])
  print('1st col: ', arr[:, 0])
  print('2nd element on 1st row: ', arr[0, 1])
  ```


- Array slicing

  - taking elements from one given index to another given index

  ```python
  import numpy as np

  arr = np.array([1, 2, 3, 4, 5, 6, 7])

  print(arr[1:5])
  print(arr[1:])
  print(arr[:5])
  print(arr[:])
  print(arr[1:-2])
  print(arr[1:5:2])
  ```


- Joining NumPy Arrays

  - putting contents of two or more arrays in a single array

  ```python
  import numpy as np

  arr1 = np.array([[1,2],[3,4]])
  arr2 = np.array([[5,6],[7,8]])
  print(arr1)
  print(arr2)

  new_arr = np.concatenate((arr1, arr2), axis=1)
  print(new_arr)

  new_arr = np.concatenate((arr1, arr2), axis=0)
  print(new_arr)
  ```
"""

# ╔═╡ e6b543ec-c54d-4338-8dce-34e7a547d37e
md"# Lecture 3: Mathematics for Data Science"

# ╔═╡ 34778db3-82f5-450c-b371-9513d09a33f4
md"""
### Background

- Training data

- Linear regression: ``\min_𝐰 \|𝐲 - X𝐰\|^2``

  $𝐗𝐰 = \begin{pmatrix} x_{11} & x_{12} & ⋯ & x_{1n} \\ x_{21} & x_{22} & ⋯ & x_{2n} \\ ⋮ & ⋮ & & ⋮ \\ x_{m1} & x_{m2} & ⋯ & x_{mn} \end{pmatrix} \begin{pmatrix} w_1 \\ w_2 \\ ⋮ \\ w_n \end{pmatrix}$

  $\|𝐱\|_2 = \;? \quad \|𝐗\|_F = \;?$
"""

# ╔═╡ 0069c9e7-cf25-4480-b872-c3718637c79f
md"""
### Vector

- Definition: ``𝐱 = (x_1,x_2,…,x_d)``

- Column vector

  - A single column of ``n`` elements

  - In mathematics, a vector is assumed to be a column vector by default

- Row vector

  - A single row of ``n`` elements

- Addition

  - Two vectors should have the same size

  $\begin{align*}
  𝐱 &= (x_1, x_2, …, x_d) \\
  𝐲 &= (y_1, y_2, …, y_d) \\
  𝐱 + 𝐲 &= (x_1 + y_1, x_2 + y_2, …, x_d + y_d)
  \end{align*}$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])
  house2 = np.array([3,2,1680,8080,1])

  print("house1: {}".format(house1))
  print("house1: {}".format(house2))
  print("house1+house2: {}".format(house1+house2))
  ```

  ```
  house1: [   3    1 1180 5650    1]
  house2: [   3    2 1680 8080    1]
  house1+house2: [    6    3  2860 13730     2]
  ```


- Subtraction

  - Two vectors should have the same size

  $\begin{align*}
  𝐱 &= (x_1, x_2, …, x_d) \\
  𝐲 &= (y_1, y_2, …, y_d) \\
  𝐱 - 𝐲 &= (x_1 - y_1, x_2 - y_2, …, x_d - y_d)
  \end{align*}$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])
  house2 = np.array([3,2,1680,8080,1])

  print("house1: {}".format(house1))
  print("house1: {}".format(house2))
  print("house1+house2: {}".format(house1-house2))
  ```

  ```
  house1: [   3    1 1180 5650    1]
  house2: [   3    2 1680 8080    1]
  house1-house2: [    0    -1  -500 -2430     0]
  ```


- Scalar multiplication

  - The product between a scalar and a vector

  $c𝐱 = (cx_1, cx_2, …, cx_d)$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])

  print("house1: {}".format(house1))
  print("2*house1: {}".format(house1*2))
  ```

  ```
  house1: [   3    1 1180 5650    1]
  2*house1: [    6     2  2360 11300     2]
  ```


- Element-wise multiplication

  - Two vectors should have the same size

  $\begin{align*}
  𝐱 &= (x_1, x_2, …, x_d) \\
  𝐲 &= (y_1, y_2, …, y_d) \\
  𝐱 * 𝐲 &= (x_1 * y_1, x_2 * y_2, …, x_d * y_d)
  \end{align*}$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])
  house2 = np.array([3,2,1680,8080,1])

  print("house1: {}".format(house1))
  print("house1: {}".format(house2))
  print("house1+house2: {}".format(np.multiply(house1,house2)))
  ```

  ```
  house1: [   3    1 1180 5650    1]
  house2: [   3    2 1680 8080    1]
  house1*house2: [       9        2  1982400 45652000        1]
  ```


- Inner product

  - Two vectors should have the same size

  $\begin{align*}
  𝐱 &= (x_1, x_2, …, x_d) \\
  𝐲 &= (y_1, y_2, …, y_d) \\
  𝐱^T 𝐲 &= x_1 * y_1 + x_2 * y_2 + … + x_d * y_d
  \end{align*}$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])
  house2 = np.array([3,2,1680,8080,1])

  print("house1: {}".format(house1))
  print("house1: {}".format(house2))
  print("house1+house2: {}".format(np.inner(house1,house2)))
  ```

  ```
  house1: [   3    1 1180 5650    1]
  house2: [   3    2 1680 8080    1]
  inner product: 47634412
  ```


- Vector norm

  - Measure the magnitude of a vector

  - ``ℓ_1``-norm: ``\|𝐱\|_1 = |x_1| + |x_2| + ⋯ + |x_d|``

  - ``ℓ_2``-norm: ``\|𝐱\|_2 = \sqrt{{x_1}^2 + {x_2}^2 + ⋯ + {x_d}^2}``

  - ``ℓ_∞``-norm (Max-norm): ``\|𝐱\|_∞ = \max_{1 ≤ i ≤ d} |x_i|``

  ```python
  import numpy as np

  x = np.array([1,2,3,4])

  print("l1-norm: {}".format(np.linalg.norm(x, ord=1)))
  print("l2-norm: {}".format(np.linalg.norm(x, ord=2)))
  print("lI-norm: {}".format(np.linalg.norm(x, ord=np.inf)))
  ```

  ```
  l1-norm: 10.0
  l2-norm: 5.477225575051661
  lI-norm: 4.0
  ```


- Exercise

  $\begin{align*}
  𝐱 &= (1, -2, 2, 0) \\
  𝐲 &= (1, 3, 2, 5) \\
  𝐱^T 𝐲 &= \;?
  \end{align*}$

  - **Solution.**

  $\begin{align*}
  𝐱^T 𝐲 &= \begin{bmatrix} 1 & -2 & 2 & 0 \end{bmatrix} \begin{bmatrix} 1 \\ 3 \\ 2 \\ 5 \end{bmatrix} \\
  &= (1)(1) + (-2)(3) + (2)(2) + (0)(5) \\
  &= 1 - 6 + 4 + 0 = -1
  \end{align*}$

- Properties

  - ``\|𝐱\| ≥ 0`` for all ``𝐱``,

  - ``\|𝐱\| = 0`` if and only if ``𝐱 = 0``,

  - ``\|α𝐱\| = |α|\|𝐱\|``, for all ``α ∈ ℝ``,

  - ``\|𝐱 + 𝐲\| ≤ \|𝐱\| + \|𝐲\|``, the triangular equality

- How to measure the distance between two vectors?
  
  $\begin{align*}
  𝐱 &= (x_1, x_2, …, x_d) \\
  𝐲 &= (y_1, y_2, …, y_d) \\
  𝐱 - 𝐲 &= (x_1 - y_1, x_2 - y_2, …, x_d - y_d) \\
  \|𝐱 - 𝐲\|_2 &= \sqrt{(x_1 - y_1)^2 + (x_2 - y_2)^2 + ⋯ + (x_d - y_d)^2}
  \end{align*}$

  ```python
  import numpy as np

  house1 = np.array([3,1,1180,5650,1])
  house2 = np.array([3,2,1680,8080,1])

  print("distance: {}".format(np.linalg.norm(house1-house2, ord=2)))
  ```

  ```
  distance: 2480.90729371333
  ```


- Exercise

  $\begin{align*}
  𝐱 &= (1,-2,2,0) \\
  𝐲 &= (1,3,2,5) \\
  \|𝐱 - 𝐲\|_2 &= \;?
  \end{align*}$

  - **Solution.**

    $𝐱 - 𝐲 = \begin{bmatrix} 1 \\ -2 \\ 2 \\ 0 \end{bmatrix} - \begin{bmatrix} 1 \\ 3 \\ 2 \\ 5 \end{bmatrix} = \begin{bmatrix} 0 \\ -5 \\ 0 \\ -5 \end{bmatrix}$

    $(𝐱 - 𝐲)^2 = \begin{bmatrix} 0 \\ 25 \\ 0 \\ 25 \end{bmatrix}$

    $\sum (𝐱 - 𝐲)^2 = 0 + 25 + 0 + 25 = 50$

    $\|𝐱 - 𝐲\|_2 = \sqrt{\sum (𝐱 - 𝐲)^2} = \sqrt{50} = 5 \sqrt{2} = 7.0710678118654755$

- Orthogonality

  - Two vectors ``𝐱`` and ``𝐲`` are orthogonal, if ``𝐱^T 𝐲 = 0``

  - Examples:

    $\begin{align*}
    𝐱 &= (1,0), \; 𝐲 = (0,1) \\
    𝐱 &= (-1,1), \; 𝐲 = (1,1) \\
    𝐱 &= (1,0,0), \; 𝐲 = (0,1,0) \\
    𝐱 &= (2,2,0), \; 𝐲 = (-1,1,10)
    \end{align*}$
"""

# ╔═╡ e97316a4-cb4b-4497-bf28-acd3c8748ca2
md"""
### Matrix

- Definition: A rectangular array of numbers

- Addition

  - ``A`` and ``B`` should have the same size

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  B = np.array([[11,12,13],[14,15,16]])

  print("A= {}\n".format(A))
  print("B= {}\n".format(B))
  print("A+B= {}\n".format(A+B))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  B = [[11 12 13]
   [14 15 16]]

  A+B = [[12 14 16]
    [18 20 22]]
  ```


- Subtraction

  - ``A`` and ``B`` should have the same size

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  B = np.array([[11,12,13],[14,15,16]])

  print("A= {}\n".format(A))
  print("B= {}\n".format(B))
  print("A-B= {}\n".format(A-B))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  B = [[11 12 13]
   [14 15 16]]

  A-B = [[-10 -10 -10]
    [-10 -10 -10]]
  ```


- Transposition

  - ``(A^T)^T = A``

  - ``(A + B)^T = A^T + B^T``

  $\begin{bmatrix} 1 & 2 & 3 \\ 0 & -6 & 7 \end{bmatrix}^T = \begin{bmatrix} 1 & 0 \\ 2 & -6 \\ 3 & 7 \end{bmatrix}$

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  B = np.transpose(A)
  C = np.transpose(B)

  print("A = {}\n".format(A))
  print("B = {}\n".format(B))
  print("C = {}\n".format(C))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  B = [[1 4]
   [2 5]
   [3 6]]

  C = [[1 2 3]
   [4 5 6]]
  ```


- Scalar multiplication

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  c = 2

  print("A = {}\n".format(A))
  print(c*A = {}\n".format(c*A))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  c*A = [[2 4 6]
   [ 8 10 12]]
  ```


- Matrix-vector multiplication

  - The number of columns of ``A`` should be equal to the number of rows of ``𝐱``

  - Linear combination of columns of ``A``

  $𝐀𝐱 = (𝐚_1, 𝐚_2, …, 𝐚_n) \begin{pmatrix} x_1 \\ x_2 \\ ⋮ \\ x_n \end{pmatrix} = \sum_{j=1}^n x_j 𝐚_j$

  $𝐀𝐰 = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 2 \\ 0 \\ 1 \end{pmatrix} = 2 ⋅ \begin{pmatrix} 1 \\ 1 \\ 0 \\ 0 \end{pmatrix} + 0 ⋅ \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} + 1 ⋅ \begin{pmatrix} 0 \\ 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 2 \\ 2 \\ 0 \\ 1 \end{pmatrix}$

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  x = np.array([[2],[2],[2]])

  print("A = {}\n".format(A))
  print("x = {}\n".format(x))
  print("A*x = {}\n".format(np.dot(A,x)))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  x = [[2]
   [2]
   [2]]

  A*x = [[12]
   [30]]
  ```

- Matrix-matrix multiplication

  - The number of columns of ``A`` should be equal to the number of rows of ``B``

  $\begin{pmatrix} 2 & 3 \\ 6 & 4 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 5 & 1 \\ -2 & 1 \end{pmatrix} = \begin{pmatrix} (2)(5) + (3)(-2) & (2)(1) + (3)(1) \\ (6)(5) + (4)(-2) & (6)(1) + (4)(1) \\ (1)(5) + (0)(-2) & (1)(1) + (0)(1) \end{pmatrix} = \begin{pmatrix} 4 & 5 \\ 22 & 10 \\ 5 & 1 \end{pmatrix}$

  ```python
  import numpy as np

  A = np.array([[1,2,3],[4,5,6]])
  B = np.array([[1,1],[2,2],[3,3]])
  C = np.dot(A,B)

  print("A = {}\n".format(A))
  print("A = {}\n".format(B))
  print("A = {}\n".format(C))
  ```

  ```
  A = [[1 2 3]
   [4 5 6]]

  B = [[1 1]
   [2 2]
   [3 3]]

  C = [[14 14]
   [32 32]]
  ```


- Norm

  - Frobenius norm

    $\|A\|_F = \sqrt{\sum_{i=1}^m \sum_{j=1}^n a_{ij}^2}$

    ```python
    import numpy as np

    A = np.array([[1,2,3],[4,5,6]])
    norm = np.linalg.norm(A, ord='fro')

    print("Frobenius norm: {}".format(norm))
    ```

    ```
    Frobenius norm: 9.539392014169456
    ```


-  For all scalars and for all matrices ``A, B ∈ K^{m \times n}``

  - ``\|αA\| = |α|\|A\|`` (being absolutely homogeneous)

  - ``\|A + B\| ≤ \|A\| + \|B\|`` (being sub-additive or satisfying the triangle inequality)

  - ``\|A\| ≥ 0`` (being positive-valued)

  - ``\|A\| = 0 ⟺ A = 0_{m,n}`` (being definite)

- Orthonormal basis

  - Given ``n`` vectors ``[𝐱_1, 𝐱_2, …, 𝐱_n]``, if ``𝐱_i^T 𝐱_j = 0``, ``i ≠ j`` and ``\|𝐱_i\|_2 = 1``, ``∀i``

- Orthogonal matrix

  - A matrix ``X ∈ 𝐑^{n \times n}`` with orthonormal columns is called an **orthogonal matrix**

  $X^TX = I$

- Symmetric matrix: ``A = A^T``
"""

# ╔═╡ 2764baf9-64fc-4c67-a029-6d40cfcfd0b6
md"""
### Gradient Descent

- Machine learning model is an optimization problem: ``\min_x f(x)``

  - ``f(x)`` is the objective function, or loss function.

  - ``x`` is the model parameter.

  - Goal: find a model parameter to minimize the objective function

- Gradient Descent method:

  - Decrease the loss function along the direction of the negative gradient

    $x_{t + 1} = x_t - η ∇f(x_t)$

    - ``x_t`` is the model parameter in the ``t``-th iteration

    - ``∇f(x_t)`` is the gradient

    - ``η`` is the learning rate, or step size

- Example: Linear regression: ``\min_w \|y - Xw\|^2``

  - Gradient: ``-2X^T (y - Xw)``

  - Gradient descent: ``w_{t + 1} = w_t - η(2X^T(Xw_t - y))``
"""

# ╔═╡ b4dcb8bd-873c-437f-86c4-679e6c055bda
md"# Lecture 4: Exploratory Data Analysis"

# ╔═╡ acdbc762-2bbe-4684-b791-8b154430bbbf
md"""
### Data Understanding

- Exploratory Data Analysis (EDA): different data have different properties

  - Once a dataset is loaded, the first step is to learn something about it

  - The dataset is small, directly inspect it

  - The dataset is large, visualize it or explore its statistics
"""

# ╔═╡ 5de74fa9-ffad-47fc-b5ed-8bbc78929307
md"""
### Tabular Data

- Tabular Data

  - dataset is represented as a 2d array

  - rows, also referred to as examples, data points

  - columns, also referred to as attributes, features, variables

**Numerical features**

- Statistics of numerical features

  ```python
  import pandas as pd

  df = pd.read_csv('cars.csv')

  df.describe()
  ```


- Visualize numerical features

  - Line plot: extreme values?

    ```python
    import pandas as pd
    import matplotlib.pyplot as plt

    df = pd.read_csv('cars.csv')

    plt.plot(df['Horsepower'])
    plt.show()
    ```


  - Hist plot: distribution?

    ```python
    import pandas as pd
    import matplotlib.pyplot as plt

    df = pd.read_csv('cars.csv')

    df.hist(bins=50, figsize=(20,15))
    plt.show()
    ```

    ```python
    import pandas as pd
    import matplotlib.pyplot as plt

    df = pd.read_csv('cars.csv')

    df.hist(df['MPG'], bins=50)
    plt.show()
    ```



  - It displays the frequency of attribute values within small intervals ranging from the minimum to the maximum value of the attribute.

  - Long tail distribution VS non-long tail distribution

  - Boxplot: show statistics of features

    - Minimum

    - Maximum

    - Media

    - First quartile

    - Third quartile

    ```python
    import pandas as pd
    import matplotlib.pyplot as plt

    df = pd.read_csv('cars.csv')

    plt.boxplot(df['Acceleration'], vert=False)
    plt.show()
    ```


- Exploring pairs of features:

  - Disclose the *dependencies* or *correlations* between the attributes

  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  df.read_csv('cars.csv')

  plt.scatter(df['MPG'], df['Weight'])
  plt.show()
  ```

  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  df.read_csv('cars.csv')

  hcorr = df.corr()
  hcorr.style.background_gradient()
  ```


**Categorical features**

```python
import pandas as pd

df = pd.read_csv('cars.csv')

print(df['Origin'].value_counts())
```

- Visualization of categorical features

  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  df = pd.read_csv('cars.csv')

  df['Origin'].value_counts().plot(kind = 'bar')
  plt.show()
  ```

  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  df = pd.read_csv('cars.csv')

  df['Origin'].value_counts().plot(kind = 'pie')
  plt.show()
  ```
"""

# ╔═╡ 80140595-d627-44f8-97fa-efa1b4a29c1b
md"""
### Temporal Data

- A value or values that change in time

  - Trend, seasonality

- Visualization of temporal data

  ```python
  import pandas as pd
  import matplotlib.pyplot as plt

  df = pd.read_csv('daily-min-temperatures.csv')

  df.plot()
  plt.show()
  ```
"""

# ╔═╡ 0e5e437f-0e6d-4182-9d36-60a605216cce
md"""
### Spatial Data

- A value or values that change over space
"""

# ╔═╡ 334ce63b-aaad-4fe8-8fe0-5dd01349d75d
md"""
### Graph Data

- Dataset is represented as a graph, where nodes and edges can have their own properties and values

- Statistics of Graph

  - Nodes, edges, degrees

  ```python
  import networkx as nx

  G = nx.erdos_renyi_graph(20, 0.4)

  print(G.number_of_nodes())
  print(G.number_of_edges())
  print(G.degree([1,2]))
  ```


- Number of connected components

  ```python
  import networkx as nx

  G = nx.erdos_renyi_graph(20, 0.1)

  print(list(nx.connected_components(G)))
  ```


- Visualization of graph data

  ```python
  import networkx as nx
  import matplotlib.pyplot as plt

  G = nx.erdos_renyi_graph(20, 0.2)

  nx.draw(G, with_labels=True, font_weight='bold')
  plt.show()
  ```
"""

# ╔═╡ 2558a879-5a8d-4d22-8785-a3eabf8f6973
md"# Lecture 5: Data Preprocessing"

# ╔═╡ 41e6f322-6194-4bd0-a244-133e1da38cef
md"""
### Missing values

- Find the missing values

  - DataFrame.isnull()

    - Return a boolean same-sized object indicating if the values are NA

    ```python
    import pandas as pd

    df = pd.read_csv('housing.csv')

    print(df.shape)

    df.isnull().sum()
    ```

- Methods:

  1. Remove the feature with a lot of missing values

     - If more than 50% of values are missing

     ```python
     import pandas as pd

     df = pd.read_csv('housing.csv')

     print(df.columns)

     df = df.drop('total_bedrooms', axis=1)

     print(df.columns)
     ```

  2. Fill in the missing values

     - Numerical values

       - Fill in the missing values with mean or median

       - Mean or Median value? Check the distribution

         - Long tail distribution: median

         - Non-long tail distribution: mean or median

    - Categorical features

      - Impossible to compute mean or median values

      - Add a new categorical value
"""

# ╔═╡ 8f7fbb02-0a66-4322-8db5-a938e18bae6f
# Missing values example
let
	x = [1,2,3,5,4,200]
	mean(x), median(x)
end

# ╔═╡ f1b0c2ef-d7f3-4601-b887-924932ce4a43
# Missing values example
let
	x = [1,2,3,5,2,4]
	mean(x), median(x)
end

# ╔═╡ a0f114b7-265c-4291-a600-90f338911e94
md"""
### Categorical features

Convert categorical values to numerical values

- Label Encoding

  - Each categorical feature is converted into an integer value

- One-Hot Encoding

  - Each category is mapped with a vector containing either 0 or 1

- Ordinal Encoding

  - The categorical feature is ordinal

  - Retaining the order is important
"""

# ╔═╡ 86e1ca92-1fe2-443d-9140-7ea93f297789
md"""
### Feature scaling

- Different features have different scales

  - The feature with large scale dominates the distance

  - Example

    $x = (1, 1000), \; y = (2, 2000)$

    $\|x - y\|_2 = \sqrt{(1 - 2)^2 + (1000 - 2000)^2} = \sqrt{10000001}$

    $x = (1,4), \; y = (3, 5)$

    $\|x - y\|_2 = \sqrt{(1 - 3)^2 + (4 - 5)^2} = \sqrt{5}$

- Min-max normalization

  - Sensitive to outliers

  $x' = \frac{x - x_{\min}}{x_{\max} - x_{\min}}$

  - Example

    $𝐱 = [1,2,3,4]$

    $x'_1 = \frac{1 - 1}{4 - 1} = \frac{0}{3}$

    $x'_2 = \frac{2 - 1}{4 - 1} = \frac{1}{3}$

    $x'_3 = \frac{3 - 1}{4 - 1} = \frac{2}{3}$

    $x'_4 = \frac{4 - 1}{4 - 1} = \frac{3}{3}$

    $𝐱' = \left[0,\frac{1}{3},\frac{2}{3},1\right]$

- Z-Score normalization (Standardization)

  - Good for normal distribution

  $x' = \frac{x - \bar{x}}{σ}$

  $\bar{x} = \frac{1}{n} \sum_{i=1}^n x_i$

  $σ^2 = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})^2$

  - Example

    $𝐱 = [1,2,3,4]$

    $\bar{𝐱} = \frac{1}{4} (1 + 2 + 3 + 4) = \frac{10}{4}$

    $\begin{align*}
     σ^2 &= \frac{1}{4} \left[\left(1 - \frac{10}{4}\right)^2 + \left(2 - \frac{10}{4}\right)^2 + \left(3 - \frac{10}{4}\right)^2 + \left(4 - \frac{10}{4}\right)^2\right] \\
       &= \frac{1}{4} \left[\left(- \frac{6}{4}\right)^2 + \left(- \frac{2}{4}\right)^2 + \left(\frac{2}{4}\right)^2 + \left(\frac{6}{4}\right)^2\right] \\
       &= \frac{1}{4} \left(\frac{36}{16} + \frac{4}{16} + \frac{4}{16} + \frac{36}{16}\right) \\
       &= \frac{1}{4} \left(\frac{80}{16}\right) \\
       &= \frac{20}{16} \\
       &= \frac{5}{4} \\
     \end{align*}$

    $σ = \sqrt{\frac{5}{4}}$

    $x'_1 = \frac{1 - \frac{10}{4}}{\sqrt{\frac{5}{4}}}$

    $x'_2 = \frac{2 - \frac{10}{4}}{\sqrt{\frac{5}{4}}}$

    $x'_3 = \frac{3 - \frac{10}{4}}{\sqrt{\frac{5}{4}}}$

    $x'_4 = \frac{4 - \frac{10}{4}}{\sqrt{\frac{5}{4}}}$
"""

# ╔═╡ e0173040-6861-432b-841a-4a02a58a4948
# Large scale example
let
	x1 = [1, 1000]
	y1 = [2, 2000]
	x2 = [1, 4]
	y2 = [3, 5]
	norm(x1 - y1), norm(x2 - y2)
end

# ╔═╡ ab534622-c699-4a80-8d50-fc4214ee24fe
# Z-Score normalization example
let
	x = [1,2,3,4]
	n = length(x)
	x̄ = mean(x)
	σ² = (1/n) * sum([(xi - x̄)^2 for xi ∈ x])
	σ = sqrt(σ²)
	x′ = (x .- x̄) / σ
end

# ╔═╡ 9de0a52e-dfc7-432d-a4d1-aca03d485c87
md"# Lecture 6: Linear Regression"

# ╔═╡ b2ee08de-8378-4b40-86f1-d76d25ef2a13
md"""
### Supervised Learning

- Supervised Learning:

  - Given: feature and label/response/ground truth of the sample

  - Goal: predict samples' labels
"""

# ╔═╡ f6c5973c-baad-4b43-a57d-85f18744a3c7
md"""
### Unsupervised Learning

- Unsupervised Learning

  - Given: only features, NO labels

  - Clustering: find meaningful groups of samples s.t.

    - Samples in the same group are "similar"

    - Samples in different groups are "dissimilar"
"""

# ╔═╡ 2d375588-bdcb-4d95-8537-9873eb2a05cb
md"""
### Supervised Learning

- Supervised Learning Methods:

  - Given ``n`` samples: ``\{(x_1, y_1), (x_2, y_2), …, (x_n, y_n)\}``

    Learn a mapping function ``x_i \overset{f(x)}{→} y_i``

    Given a new sample: ``x_{n + 1} \overset{f(x)}{→} \;?``
"""

# ╔═╡ 810c2d50-5883-4f6f-a71f-f94bb371198a
md"""
### Regression

- Stock Market Prediction

- Weather Prediction
"""

# ╔═╡ c3dfbbe9-2fce-4d96-8004-412213cb92d3
md"""
### Linear Regression: build model

- Linear regression

  - Learn a mapping function ``x_i \overset{f(x)}{→} y_i``

  - ``f(x_i)`` is a linear combination of input features ``f(x_i) = w_0 + w_1 x_{i,1} + w_2 x_{i,2} + ⋯ + w_d x_{i,d}``

    - ``𝐱_i = (x_{i,1}, x_{i,2}, …, x_{i,d})`` is the feature vector of the ``i``-th sample

    - ``𝐰 = (w_0, w_1, w_2, …, w_d)`` is the model parameter

    - ``w_0`` is bias ``f(x_i) = w_0 + w_1 x_{i,1} + w_2 x_{i,2} + ⋯ + w_d x_{i,d} = 𝐰^T 𝐱_i``
"""

# ╔═╡ afdf2f99-1a98-4300-9535-ff72bde0202e
md"""
### Linear Regression: optimize model

- How to determine the model parameter?

  - ``f(x)`` is a linear combination of input features ``f(x_i) = w_0 + w_1 x_{i,1} + w_2 x_{i,2} + ⋯ + w_d x_{i,d}``

  - Residual error:

    $y_i - f(x_i)$

  - Minimize residual error via loss function:

    $\min_w \frac{1}{n} \sum_{i=1}^n (y_i - f(x_i))^2$

- Vector representation:

  $y = \begin{pmatrix} y_1 \\ y_2 \\ ⋮ \\ y_n \end{pmatrix} \qquad f(𝐗) = 𝐗𝐰 = \begin{pmatrix} \sum_{j=0}^d x_{1j} w_j \\ \sum_{j=0}^d x_{2j} w_j \\ ⋮ \\ \sum_{j=0}^d x_{mj} w_j \end{pmatrix}$

  $\min_𝐰 \frac{1}{n} \sum_{i=1}^n (y_i - f(𝐱_i))^2 \implies \min_𝐰 \frac{1}{n} \|y - 𝐗𝐰\|_2^2$

- How to get the optimal parameter?

  - gradient of the loss function with respect to the model parameter should be 0

    - The gradient represents the slope of the loss function curve

$\mathcal{L}(𝐰) = \frac{1}{n} \|y - 𝐗𝐰\|_2^2$

$↓$

$\frac{∂\mathcal{L}(𝐰)}{𝐰} = -\frac{2}{n} 𝐗^T (y - 𝐗𝐰) = 0$

$↓$

$𝐗^T 𝐗 𝐰 = 𝐗^T y$

$↓$

$𝐰 = (𝐗^T 𝐗)^{-1} 𝐗^T y$
"""

# ╔═╡ a28c3856-e77b-4aac-a9fa-05d0651748ff
md"""
### Linear Regression: evaluation

Let ``e_i = y_i - f(x_i)``.

1. Mean Absolute Error (MAE)

   $\frac{1}{n} \sum_{i=1}^n |e_i|$

2. Mean Squared Error (MSE)

   $\frac{1}{n} \sum_{i=1}^n e_i^2$

3. Root Mean Squared Error (RMSE)

   $\sqrt{\frac{1}{n} \sum_{i=1}^n e_i^2}$
"""

# ╔═╡ a5ebd8b5-def7-473a-91de-e53da9a9e29c
md"# Lecture 7: Linear Regression, Continued"

# ╔═╡ 2ff1935d-3e62-4e44-92b0-354053e5ef8d
md"""
### Summarization

1. Build model

   $f(𝐱_i)= w_0 + w_1 x_{i,1} + w_2 x_{i,2} + ⋯ + w_d x_{i,d}$

2. Build loss function

   $\min_𝐰 \frac{1}{n} \sum_{i=1}^n (y_i - f(𝐱_i))^2$

3. Optimize model

   $𝐰 = (𝐗^T 𝐗)^{-1} 𝐗^T y$

4. Make prediction

   $\hat{y} = 𝐰^T x_{n+1}$
"""

# ╔═╡ 8416e0f7-376c-4c50-bb11-93ff16c19556
md"""
### Gradient Descent

Machine learning model is an optimization problem

$\min_x f(x)$

- ``f(x)`` is the objective function, or loss function

- ``x`` is the model parameter

- Goal: find a model parameter to minimize the objective function

Gradient descent method:

- Decrease the loss function along the direction of the negative gradient

  $x_{t + 1} = x_t - η∇f(x_t)$

  - ``x_t`` is the model parameter in the ``t``-th iteration

  - ``∇f(x_t)`` is the gradient

  - ``η`` is the learning rate, or step size

Example: Linear Regression

$\min_w \|y - Xw\|^2$

- Gradient:

  $-2X^T (y - Xw)$

- Gradient descent:

  $w_{t+1} = w_t - η(2X^T(Xw_t - y))$
"""

# ╔═╡ 9c06c698-83ba-4ec9-b594-b83051dd2939
md"""
### Example: House price prediction
"""

# ╔═╡ 60ba0b40-8aa9-49c0-94d4-9e20a9414c3c
md"""
### Practical Step 1

Data preprocessing

```python
df = pd.read_csv('housing.csv')

# 0. fill in missing values
mean_val = df['total_bedrooms'].mean()
df['total_bedrooms'] = df['total_bedrooms'].fillna(mean_val)

# 1. convert categorical features to numerical values
labelencoder = LabelEncoder()
df['ocean_proximity'] = labelencoder.fit_transform(df['ocean_proximity'])
print(df.info())
```
"""

# ╔═╡ 7bd6c370-0550-4781-9a82-895eb5f9f758
md"""
### Practical Step 2

Split dataset

Given ``n`` samples: ``\{(x_1, y_1), (x_2, y_2), …, (x_n, y_n)\}``

Learn a mapping function ``x_i → y_i``

Given a new sample: ``x_{n+1} → \;?``

Training set:

- Used for training the model, during the training phase

Testing set:

- Used for evaluating the performance of the model, after obtaining the model

```python
house_fea = df.drop('median_house_value', axis=1).values
house_price = df['median_house_value'].values

X_train,X_test,y_train,y_test = train_test_split(house_fea,
												 house_price,
												 test_size=0.2,
												 random_state=42)
print(X_train.shape)
print(X_test.shape)

# normalize features
normalizer = StandardScaler()
X_train = normalizer.fit_transform(X_train)
X_test = normalizer.transform(X_test)
```
"""

# ╔═╡ 96775b34-5231-4bcb-b960-c5537ddeba3b
md"""
### Practical Step 3

Train the model

- Find the optimal model parameter
"""

# ╔═╡ 6c097b30-6db5-4a26-987e-043ca2c86067
md"""
### Practical Step 4

Evaluate the model

```python
y_test_pred = lr.predict(X_test)

mae = mean_absolute_error(y_test_pred, y_test)
mse = mean_squared_error(y_test_pred, y_test)
rmse = np.sqrt(mse)
```
"""

# ╔═╡ 5187e6ba-4b36-41c8-bed1-98f7e043ad71
md"""
### How to fit non-linear data?

- ``Y`` has a non-linear response to ``X``

- Apply non-linear transformation to features

One-dimensional input: ``𝐱 = (x) \overset{ϕ(𝐱)}{\xrightarrow{}} \{1, x, x^2, x^3, …, x_k\}``

$f(x) = w_0 + w_1 x + w_2 x^2 + w_3 x^3 + ⋯ + w_k x^k$

Two-dimensional input: ``𝐱 = (x_1, x_2) \overset{ϕ(𝐱)}{\xrightarrow{}} \{1, x_1, x_1^2, x_2, x_2^2, x_1 x_2\}``

$f(x) = w_0 + w_1 x_1 + w_2 x_1^2 + w_3 x_2 + w_4 x_2^2 + w_5 x_1 x_2$
"""

# ╔═╡ 1ceb09ea-3c6e-42dd-8620-df3c3368993d
md"""
### Overfitting

- Errors on training data are small

- But errors on new points are likely to be large
"""

# ╔═╡ 440c2f7d-b2a7-482b-8a2b-c1889ab2e8db
md"""
### How to avoid overfitting?

Add a regularization term

- Make some ``w_i`` very small or approach to zero

  $f(x) = w_0 + w_1 x + w_2 x^2 + w_3 x^3 + ⋯ + w_k x^k$

  $\min_w \frac{1}{n} \|y - Xw\|_2^2 + λ \|w\|_2^2$

  ``w`` is the model parameter

  ``λ`` is the hyperparameter

Optimization
"""

# ╔═╡ d8bb574a-363a-4e2b-a21f-6e76b014c233
md"""
### Ridge Regression vs Lasso

Ridge regression

- ``ℓ_2``-norm regularization

  $\min_w \frac{1}{n} \|y - Xw\|_2^2 + λ\|w\|_2^2$

Lasso

- ``ℓ_1``-norm regularization

  $\min_w \frac{1}{n} \|y - Xw\|_2^2 + λ\|w\|_1$

Ridge Regression

```python
lr = Ridge(alpha=0.1)

lr.fit(X_train,y_train)
```

Lasso

```python
lr = Lasso(alpha=0.1)

lr.fit(X_train,y_train)
```
"""

# ╔═╡ a63d7053-90e6-48ff-ac09-0d979725b873
md"# Lecture 8: Logistic Regression"

# ╔═╡ a71c2604-6d13-4512-b89b-f2834df72bbf
md"""
### Supervised Learning

Supervised Learning Methods:

Given ``n`` samples: ``\{(x_1, y_1), (x_2, y_2), …, (x_n, y_n)\}``

Learn a mapping function ``x_i → y_i``
"""

# ╔═╡ f7c55f4a-38a4-4d8c-b1c1-604c7961a626
md"""
### Classification

Binary classification

- Only two classes

- E.g. fraud detection

Multi-class classification

- Multiple classes
"""

# ╔═╡ ae7444bd-cc2e-4767-8e62-b51654c1d702
md"""
### Binary Classification

Learn a classifier to separate positive samples from negative samples

- Positive sample: its label is 1

- Negative sample: its label is 0
"""

# ╔═╡ 63155765-ab26-4d9a-a135-3356e7db48f4
md"""
### Linear classifier

$z(𝐱) = 𝐰^T 𝐱 = w_0 + w_1 x_1 + w_2 x_2 + ⋯ + w_d x_d$

- ``z(𝐱) = 0`` specifies a linear boundary, separating the space into two half-spaces

- A reasonable decision rule

  $\hat{y} = \begin{cases} 1, &z(𝐱) > 0 \\ 0, &z(𝐱) < 0 \end{cases}$

- Example

| x | z = 2x + 1 | Predicted Label |
|---|------------|-----------------|
| 1 | 3 | 1 |
| 2 | 5 | 1 |
| -2 | -3 | 0 |
| -1 | -1 | 0 |
"""

# ╔═╡ 66885a5b-a5a0-4001-a6db-5c70a659da1f
md"""
### Logistic Regression

How to let the classifier:

- output 1 for positive samples,

- output 0 for negative samples?

Sigmoid function

- ``z > 0``, the function value is close to 1 ⟹ the predicted label is 1

- ``z < 0``, the function value is close to 0 ⟹ the predicted label is 0

- ``z = 0``, the function is 0.5

$σ(z) = \frac{1}{1 + \exp(-z)}$

How to let the classifier output 1 or 0 for positive or negative samples?
"""

# ╔═╡ 8914a1b8-a7ad-4cab-ad8e-19ee098c37af
md"""
### Probabilistic Interpretation

The output of logistic regression models the class probability

- The probability that a sample belongs to class 1

  $p(y = 1 ∣ 𝐱) = σ(𝐰^T 𝐱) = \frac{1}{1 + \exp(-𝐰^T 𝐱)} = \frac{\exp(𝐰^T 𝐱)}{1 + \exp(𝐰^T 𝐱)}$

- The probability that a sample belongs to class 0

  $p(y = 0 ∣ 𝐱) = 1 - p(y = 1 ∣ 𝐱) = 1 - \frac{1}{1 + \exp(-𝐰^T 𝐱)} = \frac{\exp(-𝐰^T 𝐱)}{1 + \exp(-𝐰^T 𝐱)} = \frac{1}{1 + \exp(𝐰^T 𝐱)}$
"""

# ╔═╡ 225459ab-388e-4e7a-be39-7abc31ef8e09
md"""
### How to optimize it?

Likelihood function

- Measure how well a model fits the data

- The higher the likelihood function, the better the model fits the data

  $L(θ) = p(x_1; θ) p(x_2; θ) ⋯ p(x_n; θ)$

Maximize the likelihood function

$\max_𝐰 \prod_{i = 1}^n p(y_i ∣ 𝐱_i)$

Minimize negative log-likelihood function

$\min_𝐰 - \log \prod_{i=1}^n {p_i}^{y_i} (1 - p_i)^{(1 - y_i)}$

Use the gradient descent method to learn the model parameter w

- Loss function

  $\min_𝐰 \sum_{i=1}^n \{\log(1 + \exp(𝐰^T 𝐱_i)) - y_i 𝐰^T 𝐱_i\}$

- Gradient

  $\frac{∂L}{∂𝐰} = \sum_{i=1}^n 𝐱_i \left(y_i - \frac{𝐰^T 𝐱_i}{1 + \exp(𝐰^T 𝐱_i)}\right)$

- Gradient descent

  $𝐰_{k+1} = 𝐰_k - η \sum_{i = 1}^n 𝐱_i \left(y_i - \frac{𝐰_k^T 𝐱_i}{1 + \exp(𝐰_k^T 𝐱_i)}\right)$
"""

# ╔═╡ 70039786-4279-48cf-9d02-ea71b365a57e
md"""
### Overfitting

To avoid the overfitting issue, we add a regularization term

$\min_𝐰 \sum_{i=1}^n \{\log(1 + \exp(𝐰^T 𝐱_i)) - y_i 𝐰^T 𝐱_i\} + λ \|𝐰\|_2^2$

$𝐰_{k+1} = 𝐰_k - η \sum_{i=1}^n 𝐱_i \left(y_i - \frac{𝐰_k^T 𝐱_i}{1 + \exp(𝐰_k^T 𝐱_i)}\right) - 2ηλ𝐰_k$
"""

# ╔═╡ e4036a55-5291-4618-8c5b-8e3877a24924
md"# Lecture 9: Logistic Regression"

# ╔═╡ 924e3a51-0c34-41ce-8fc2-bc18fef29f1b
md"""
### Linear Regression vs Logistic Regression

- Linear regression

  - Y is continuous

  - Model

  - Loss function

    $\min_𝐰 \frac{1}{n} \sum_{i=1}^n (y_i - f(𝐱_i))^2$

- Logistic regression

  - Y is discrete

  - Model

    $\min_𝐰 - \sum_{i=1}^n \{y_i \log{p_i} + (1 - y_i) \log(1 - p_i)\}$
"""

# ╔═╡ da4ce35a-5749-4ca6-9c9d-f9edf09d3650
md"""
### Evaluation for Binary Classification

When the data is balanced, use the classification accuracy

- Balanced data: #positive samples is almost the same with #negative samples

When the data is imbalanced, does accuracy still work?

- Imbalanced data: #positive samples is very different from #negative samples

Example

- COVID-19 diagnosis: a good classifier should find all positive cases.

- Fraud detection: a good classifier should find all fraud transactions

True Positive (TP)

- Prediction is positive, ground-truth is positive

False Positive (FP)

- Prediction is positive, ground-truth is negative

False Negative (FN)

- Prediction is negative, ground-truth is positive

True Negative (TN)

- Prediction is negative, ground-truth is negative

When the data is imbalanced, use recall or precision

- Recall: the proportion of actual positives is classified correctly

  $\text{Recall} = \frac{\text{TP}}{\text{TP} + \text{FN}}$

- Precision: the proportion of positive predictions is actually correct

  $\text{Precision} = \frac{\text{TP}}{\text{TP} + \text{FP}}$

When to care about recall?

- It is important to find all positive samples

- E.g. COVID diagnosis, fraud detection

- A larger recall means more ground-truth positive samples were founded by the classifier

When to care about precision?

- Users are sensitive to the prediction error

- E.g. Google search

- A larger precision means the positive prediction has a large probability to be correct

**Illustration.** Relationship between recall and precision

F1 score: harmonic mean of precision and recall

- Conveys the balance between the precision and the recall

$F_1 = \frac{2 \times \text{Recall} \times \text{Precision}}{\text{Recall} + \text{Precision}}$
"""

# ╔═╡ c2d289eb-b44c-4c48-b78c-017f1ec49882
md"""
### Summary

Build model

- Linear classifier to separate positive and negative samples

$\min_𝐰 \sum_{i=1}^n \{\log(1 + \exp(𝐰^T 𝐱_i)) - y_i 𝐰^T 𝐱_i\} + λ\|𝐰\|_2^2$

Optimize the model

$𝐰_{k+1} = 𝐰_k - η\sum_{i=1}^n 𝐱_i \left(y_i - \frac{𝐰_k^T 𝐱_i}{1 + \exp(𝐰_k^T 𝐱_i)}\right) - 2ηλ𝐰_k$

Evaluate the model

- Balanced: Accuracy

- Imbalanced: Recall, Precision, F1 score
"""

# ╔═╡ c41054f9-7bd9-4c5a-83c2-3573f10de487
md"""
### Practical Steps

Preprocess data

```python
X, y = datasets.load_iris(return_X_y = True)

X_train, X_test, y_train, y_test = train_test_split(X, y,
                                                    test_size = 0.1,
                                                    random_state = 0)

normalizer = StandardScaler()
X_train = normalizer.fit_transform(X_train)
X_test = normalizer.transform(X_test)
```

Train the model

```python
clf = LogisticRegression(penalty='l2', C=1.0)
clf.fit(X_train, y_train)

y_train_pred = clf.predict(X_train)
acc = accuracy_score(y_train, y_train_pred)
print("Training accuracy: {:.4f}".format(acc))
```

Evaluate the model

```python
y_test_pred = clf.predict(X_test)
acc = accuracy_score(y_test, y_test_pred)
print("Testing accuracy: {:.4f}".format(acc))
```
"""

# ╔═╡ eb4ddce7-e35a-4bf8-a65c-758937fcda4d
md"""
### Model Selection

Model selection

- Different hyperparameters lead to different models/performance

$\min_𝐰 \sum_{i=1}^n \{\log(1 + \exp(𝐰^T 𝐱_i)) - y_i 𝐰^T 𝐱_i\} + λ\|𝐰\|_2^2$

- How to find a model with the best performance?
"""

# ╔═╡ fb4eaa0a-23d3-4a89-b85b-2a6fa5df3564
md"""
### Model Selection: Threefold Split

Threefold split:

- Training set

- Validation set

- Testing set

How to select the model (hyperparameters)?

- For each hyperparameter

  - Train the model using the training set

  - Evaluate the model using the validation set

- Use the performance on the validation set to select the best hyperparameters

After obtaining the best hyperparameter

- Retrain the model with both the training and validation sets

- Report the performance on the testing set

Pros

- Fast and simple

Cons

- Large variance

  - Unreliable estimation of future performance

- Bad use of data

  - Waste data
"""

# ╔═╡ 05ca1c2c-e9c9-448b-8188-84a4bdf5555b
md"""
### Model Selection: Cross-validation

Training data:

- Randomly partition it into K folds

- K-1 folds for training set

- 1 fold for validation set

How to select the model?

- For each hyperparameter

  - Train the model for K times

  - Evaluate the model for K times

- Use the mean of K evaluation to select model

Pros

- More data

- More stable

Cons

- Slower
"""

# ╔═╡ 5e54f91f-c11a-4c53-983f-fc228cb4d95e
md"# Lecture 10: Logistic Regression"

# ╔═╡ cc1d7364-961c-44f9-8d73-2442b6379b4c
md"""
### Multi-class Classification

Binary classification

- Only two classes

- E.g. fraud detection

Multi-class classification

- Multiple classes

Each class has a linear mapping function

$\begin{align*}
z_{i,1} &= 𝐰_1^T 𝐱_i = w_{1,0} + w_{1,1} x_{i,1} + w_{1,2} x_{i,2} + ⋯ + w_{1,d} x_{i,d} \\
z_{i,2} &= 𝐰_1^T 𝐱_i = w_{2,0} + w_{1,1} x_{i,1} + w_{2,2} x_{i,2} + ⋯ + w_{2,d} x_{2,d} \\
z_{i,3} &= 𝐰_1^T 𝐱_i = w_{3,0} + w_{3,1} x_{i,1} + w_{3,2} x_{i,2} + ⋯ + w_{3,d} x_{3,d} \\
&\; \;⋮ \\
z_{i,K} &= 𝐰_K^T 𝐱_i = w_{K,0} + w_{K,1} x_{i,1} + w_{K,2} x_{i,2} + ⋯ + w_{K,d} x_{K,d} \\
\end{align*}$

Comparison with binary classification

$z_i = 𝐰^T 𝐱_i = w_0 + w_1 x_{i,1} + w_2 x_{i,2} + ⋯ + w_d x_{i,d}$

Each class has a parameter vector

$𝐰_k ∈ ℝ^{d + 1}$

Matrix representation

$𝐳_i = W^T 𝐱_i$

How to get the class probability?

- K output (K classes)

- Softmax function

Loss function

- Label matrix

  - The label of each sample is a one-hot vector

- Likelihood function for the i-th sample

- Maximize the likelihood function for all samples

- With regularization term

Binary classification

- ``z_i = 𝐰^T 𝐱_i``

- ``\hat{y}_1 = \text{sigmoid}(z_i)``

Multi-class classification

- ``𝐳_i = W^T 𝐱_i``

- ``\hat{𝐲}_i = \text{softmax}(𝐳_i)``
"""

# ╔═╡ e4cc84d1-ffaa-4317-ae19-fde7a381ee66
md"""
### Evaluation for multi-class classification

Binary classification

- F1 score: harmonic mean of precision and recall

  $F_1 = \frac{2 \times \text{Recall} \times \text{Precision}}{\text{Recall} + \text{Precision}}$

Multi-class classification

- Micro/Macro recall

- Micro/Macro precision

- Micro/Macro f1-score

Micro averaging

- Collect decisions for all classes, compute contingency table and evaluate

Macro averaging

- Compute performance for each class, then average

Exercise: micro-recall, macro-recall

Imbalance between classes

- One class has many more samples than other classes

- Use micro averaging

Exercise: micro-f1, macro-f1
"""

# ╔═╡ cc31c5d6-0b00-46e3-8d43-eb5884edbb7c
md"""
### Micro/Macro Precision/Recall/F1

$\text{Macro Precision} = \frac{\sum_{i=1}^n \text{Precision}_i}{n}$

$\text{Micro-F1} = \text{Accuracy}$

$\text{Macro-F1} = \frac{\sum_{i=1}^n \text{F1}_i}{n}$
"""

# ╔═╡ ba552f6c-a7e2-4088-9b3d-45a0bc7c51c6
md"# Lecture 11: K-nearest Neighbor Algorithm"

# ╔═╡ 266c6d7d-2443-4c48-a5a5-503807a5f431
md"""
### Midterm exam

Midterm review

- Feb 28

Midterm exam

- 9:30-10:50 am, Mar 2

- Closed-book exam

- Calculator is allowed to bring
"""

# ╔═╡ 6dd4277d-9184-4b34-b076-4ca113f04377
md"""
### Non-parametric model

Parametric methods:

- Assume some functional form (Gaussian, Bernoulli, Multinomial, logistic, Linear, Quadratic) for P(Y ∣ X)

- Estimate parameters

- Pro:

  - need few data points to learn parameters

- Con:

  - Strong distributional assumptions, not satisfied in practice

Typically, don't make any distributional assumptions

As we have more data, we should be able to learn more complex models
"""

# ╔═╡ 3b865306-2869-4f25-875c-26a96a94e13c
md"""
### K-nearest neighbor method

Basic idea

- Find the K nearest neighbors of sample x

- Find the majority category label within these neighbors

- Assign the majority label to sample x

KNN:

- Training phase:

  - Store all training samples

- Testing phase:

  - Find the ``k`` training samples ``(x_1,y_1), … (x_k,y_k)`` that are closest to the test example ``x``

  - Predict the most frequent class among those ``y_i``'s

Logistic Regression:

- Training phase:

  - Learn model parameters from training samples

- Testing phase:

  - Apply the learned model to testing samples
"""

# ╔═╡ 89171a81-fe37-4dfa-ba84-0668b8cc2f86
md"""
### Step 1: find neighbors

How to measure the distance?

- Euclidean distance

  $D(x, y) = \sqrt{\sum_{i=1}^m (x_i - y_i)^2}$

- Manhattan/city-block distance

  $D(x, y) = \sum_{i=1}^m |x_i - y_i|$

- Correlation distance

  $D(x, y) = \frac{\sum_{i=1}^m (x_i - \overline{x_i}) (y_i - \overline{y_i})}{\sqrt{\sum_{i=1}^m (x_i - \overline{x_i})^2 \sum_{i=1}^m (y_i - \overline{y_i})^2}}$
"""

# ╔═╡ f9da2eaa-86c9-4b5a-aff4-d94f59a261f3
md"""
### Step 2: make classification

Assigned to the most common class amongst its K-nearest neighbors
"""

# ╔═╡ ad8403bf-c174-4a19-b810-fd64c3e473ee
md"""
### Effect of K

Larger k produces smoother boundary effect
"""

# ╔═╡ ac2417e4-3d6b-4d33-99a9-cd6c31d474b8
md"""
### Example

```python
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
import matplotlib.pyplot as plt
from sklearn.datasets import fetch_20newsgroups

data_train = fetch_20newsgroups(subset='train', remove=('headers', 'footers', 'quotes'))
data_test = fetch_20newsgroups(subset='test', remove=('headers', 'footers', 'quotes'))
```

```python
vectorizer = TfidfVectorizer()
data_train_vectors = vectorizer.fit_transform(data_train.data)
data_test_vectors = vectorizer.transform(data_test.data)
```

```python
from sklearn.neighbors import KNeighbborsClassifier
from sklearn.metrics import accuracy_score, f1_score

Xtr = data_train_vectors
Ytr = data_train.target

Xte = data_test_vectors
Yte = data_test.target

# train knn
clf_knn = KNeighborsClassifier(n_neighbors=1)
clf_knn.fit(Xtr, Ytr)

# evaluate knn
y_pred = clf_knn.predict(Xte)

acc = accuracy_score(Yte, y_pred)
macro_f1 = f1_score(Yte, y_pred, average='macro')
micro_f1 = f1_score(Yte, y_pred, average='micro')
```
"""

# ╔═╡ 2d723d1d-6663-4a58-9928-3b803056adf1
md"""
### Example (Cross Validation to select the best K)

```python
from sklearn.model_selection import GridSearchCV

k_range = range(1, 5)
param_grid = dict(n_neighbors=k_range)

grid = GridSearchCV(clf_knn, param_grid, cv=5, scoring='accuracy')
```
"""

# ╔═╡ 573df2c7-3514-40b6-9576-8291107a9c0e
md"""
### Example (Comparison with LR)

```python
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import GridSearchCV
import numpy as np

# training
coeff = range(1, 10)
param_grid = dict(C=coeff)

clf_lr = LogisticRegression(penalty='l2')

grid = GridSearchCV(clf_lr, param_grid, cv=5, scoring='accuracy')
grid.fit(Xtr, Ytr)

# testing
clf_lr = LogisticRegression(penalty='l2', C=grid.best_params_['C'])
clf_lr.fit(Xtr, Ytr)

y_pred = clf_lr.predict(Xte)

acc = accuracy_score(Yte, y_pred)
macro_f1 = f1_score(Yte, y_pred, average='macro')
micro_f1 = f1_score(Yte, y_pred, average='micro')
```
"""

# ╔═╡ 6328126c-edfe-4573-bb9c-698446219a3d
md"""
### K-nearest neighbor method

Pros

- Training is very fast (lazy training)

- Easy to understand and implement

Cons

- Testing is slow

- Curse of dimensionality

- Need adequate distance measure
"""

# ╔═╡ 17f49040-d1d4-446b-bef0-e00aa5b4b4a8
md"""
### More supervised learning models

Support vector machine (SVM)

- Learn a hyperplane such that the distance from it to the nearest data point on each side is maximized

  $m = \frac{(x^+ - x^-) ⋅ w}{|w|} = \frac{2}{|w|}$

- Let ``\{x_1, …, x_n\}`` be our data set and let ``y_i ∈ \{1, -1\}`` be the class label of ``x_i``

- The decision boundary should classify all points correctly

  $\implies y_i (𝐰^T 𝐱_i + b) ≥ 1, \qquad ∀i$

- The decision boundary can be found by solving the following constrained optimization problem

  $\text{Minimize } \frac{1}{2} \|𝐰\|^2$

  $\text{Subject to } y_i (𝐰^T 𝐱_i + b) ≥ 1, \qquad ∀i$

Naïve Bayes Classifier

$P(Y ∣ X) = \frac{P(X ∣ Y) P(Y)}{P(X)}$

Decision tree

- A tree-like model

- Each internal node represents a "test" on an attribute

- Each branch represents the outcome of the test

- Each leaf node represents a class label
"""

# ╔═╡ 7cc78411-91e4-475b-882b-4656e56c940f
md"# Lecture: Midterm Review"

# ╔═╡ ed38d3c1-586d-4c46-bec7-5aefa1863d4e
md"""
### 1. Vector

- Definition

- Operation

  - Addition

  - Subtraction

  - Multiplication

- Norm
"""

# ╔═╡ e42b1ad9-da5f-4c67-9439-b6dfd86b64d5
md"""
### 2. Matrix

- Definition

- Operation: dimension

  - Addition

  - Subtraction

  - Multiplication

  - Transposition
"""

# ╔═╡ 992cd1dc-3325-42ce-a7e8-558892d9469d
md"""
### 3. Data Understanding

- Visualize numerical features

  - Line plot

  - Hist plot

  - Boxplot

- Long tail vs non-long tail distribution

- Explore pairs of features
"""

# ╔═╡ 5f43ebba-b0be-495b-b41d-063ef6e8a11e
md"""
### 4. Data Preprocessing

- Missing values

  - Numerical features

  - Categorical features

- Convert categorical features to numerical features

  - Label encoding

  - One-hot encoding

  - Ordinal encoding

- Feature scaling/normalization

  - Min-max normalization

  - Z-score normalization
"""

# ╔═╡ 464f1cc0-cbd4-49cc-9fae-da20b04cf6d6
md"""
### 5. Linear regression

- Supervised Learning vs unsupervised learning

- Regression vs classification

- Build model

- Loss function ``\min_w \frac{1}{n} \|y - Xw\|_2^2``

- Evaluation

  - MAE

  - MSE

  - RMSE

- Overfitting
"""

# ╔═╡ 330c5de2-40f8-4c33-acd5-489e96aa661b
md"""
### 6. Logistic regression

- Build model

  - Sigmoid function

  - Softmax function

- Loss function

  - Cross-entropy loss function ``\displaystyle \min_𝐰 -\sum_{i=1}^n \{y_i \log{p_i} + (1 - y_i) \log(1 - p_i)\}``

- Evaluation (Binary classification & multi-class classification)

  - Accuracy

  - Recall, Precision

  - Micro vs macro

- Model selection

  - Threefold split

  - Cross-validation
"""

# ╔═╡ 0ec3c9bb-7b1e-4109-b961-65eb85cff9b9
md"""
### 7. KNN

- KNN

  - Training phase

  - Testing phase
"""

# ╔═╡ e17600f6-9db9-4c75-be07-f558511d9af9
md"""
### Midterm Exam

- 9:30--10:50 am, Mar. 2, BEURY, 00162

- Closed-book exam

- Question set 1:

  - 8 questions, 3 points per question

  - True or false, multiple choice

- Question set 2:

  - 7 questions, 3 points per question

  - Fill in the blank

- Question set 3:

  - 3 questions, 5 points per question
"""

# ╔═╡ 601dd6df-3da9-49d6-94c1-91a6cb7f3128
md"# Lecture 12: Clustering"

# ╔═╡ 992b0568-b15d-490e-9c0b-0e0244941451
md"""
### What is clustering?

Unsupervised Learning

- Given: only samples, NO labels

- Clustering: find meaningful groups of samples s.t.

  - Samples in the same group are "similar"

  - Samples in different groups are "dissimilar"
"""

# ╔═╡ 356f7237-b2f7-496f-88c5-f290115ee687
md"""
### Examples

- Image segmentation

- Topic discovery
"""

# ╔═╡ a4cd42ad-b95a-4c9d-a645-8b24dbea997a
md"""
### Clustering

How to measure the similarity between different samples?

- Euclidean distance

  $d = \|𝐱 - 𝐲\|_2 = \sqrt{(x_1 - y_1)^2 + (x_2 - y_2)^2 + ⋯ + (x_d - y_d)^2}$

  - Large distance, small similarity

  - Small distance, large similarity

1. Partition methods

   - Construct various partitions and then evaluate them by some criterion

     - K-means

     - Gaussian mixture model

     - Spectral clustering

2. Hierarchical methods

   - Create a hierarchical decomposition of the set of objects using some criterion

     - Bottom up - agglomerative

     - Top down - divisive
"""

# ╔═╡ c9a498d3-42c2-4219-b579-11a6434d03be
md"""
### K-Means

Given a dataset ``\{𝐱_1, 𝐱_2, …, 𝐱_n\}``, K-Means partitions it into ``K`` clusters:

- Each cluster has a cluster center, called centroid

- ``K`` is specified by the user

1. Randomly initialize the cluster centroid ``μ_1, μ_2, …, μ_K``

2. Repeat until no change in ``μ_i``

   - Classify ``N`` samples in terms of the nearest cluster centroid

   - Re-compute the cluster centroid

Strength:

- Simple: easy to understand and implement

- Efficient: ``O(KNT)``

  - ``K`` is the number of clusters

  - ``N`` is the number of samples

  - ``T`` is the number of iterations

Weakness:

- Only applicable when the mean is defined

- Sensitive to outliers

- Sensitive to initialization
"""

# ╔═╡ 67d5e941-7ca2-4d2b-a908-c3b6175cfc1a
md"""
### Agglomerative Clustering

Agglomerative clustering:

- Each sample is a cluster

- Repeat:

  - Pick the two closest clusters

  - Merge them into a new cluster

  - Stop when there's only one cluster left

How to measure the similarity between two clusters?

1. Single link:

   - Distance of two closest samples in each cluster

   - Potentially long and skinny clusters

2. Complete link:

   - Distance of two farthest samples in each cluster

   - Tighter clusters

3. Average link:

   - Average distance of all pairs

   - Robust against noise

   - Most widely used method

Properties:

- No need to specify the number of clusters in advance

- Not scale well

  - ``O(N^2)``
"""

# ╔═╡ 66a598cc-9ca2-4fe9-a5f5-577c7ea19367
md"# Lecture 13: Spectral Clustering"

# ╔═╡ f27ef784-d59f-4438-8c92-867772d22769
md"""
### What is clustering?

Unsupervised Learning

- Given: only samples, no labels

- Clustering: find meaningful groups of samples s.t.

  - Samples in the same group are "similar"

  - Samples in different groups are "dissimilar"
"""

# ╔═╡ 6c6f3b42-49b9-4eb4-90f4-cd12e9258103
md"""
### Existing methods: K-Means

Standard Algorithm

1. k initial "means" (in this case k=3) are randomly selected from the data set.

2. k clustesrs are created by associating every observation with the nearest mean.

3. The centroid of each of the k clusters becomes the new means.

4. Steps 2 and 3 are repeated until convergence has been reached.
"""

# ╔═╡ bb77b3cc-91bb-4482-9ddf-453599c365c7
md"""
### Existing problems

- Distance based method (like k-means) fails to capture the complicated geometric structure.
"""

# ╔═╡ 0f02f6bc-a313-4c69-ba02-0b673306f590
md"""
### Spectral clustering

Basic Idea: Low-dimensional embedding point of view

- Obtain data representation in the low-dimensional space that can be easily clustered
"""

# ╔═╡ ddd44546-9ac0-4be4-ac85-0c24aa359943
md"""
### Similarity graph

Similarity graphs: Model local neighborhood relations between data points

- ``ε``-neighborhood graph

  - Connect all vertices whose pairwise distances are smaller than ``ε``

- ``k``-nearest neighbor graph

  - Connect vertex ``v_i`` with vertex ``v_j`` if ``v_j`` is among the ``k``-nearest neighbors of ``v_i``.

- fully connected graph

  - Connect all points with positive similarity with each other

E.g. epsilon-NN

$W_{ij} = \begin{cases} 1 & \|x_i - x_j\| ≤ ϵ \\ 0 & \text{otherwise} \end{cases}$

E.g. Gaussian kernel similarity function

$W_{ij} = \exp{\left(\frac{\|x_i - x_j\|^2}{2σ^2}\right)}$
"""

# ╔═╡ 4539234b-7342-434a-bcf2-14b8f793a0f1
md"""
### Degree

- ``d_i = \sum_j w_{ij}`` degree of a vertex

- ``D = \text{diag}(d_1, …, d_n)`` degree matrix
"""

# ╔═╡ 5fcc806b-be9a-40e5-bd18-daf0be4aaa0a
md"""
### Graph Laplacian matrix

- Un-normalized Graph Laplacian

  $L = D - W$

- Normalized Graph Laplacian

  $L_{rw} := D^{-1} L = I - D^{-1}W.$

Important properties:

- Symmetric, positive semi-definite

  A symmetric matrix ``M`` is positive semidefinite (PSD) if ``∀x ∈ ℝ^n``,

  $x^T Mx ≥ 0.$

  - Eigenvalues are non-negative real numbers: ``0 = λ_i ≤ λ_2 ≤ ⋯ ≤ λ_n``.

  - Eigenvectors are real and orthogonal

  - Smallest eigenvalue is 0, corresponding eigenvector is 1.

    $L1 = D1 - W1 = \begin{bmatrix} d_1 \\ d_2 \\ ⋮ \\ d_n \end{bmatrix} - \begin{bmatrix} \sum_j w_{1j} \\ \sum_j w_{2j} \\ ⋮ \\ \sum_j w_{nj} \end{bmatrix} = 0$

- Eigenvalues and eigenvectors provide an insight into the connectivity of the graph

  - The number of eigenvalues equal to zero for the Laplacian is equal to the number of connected components in the graph.

  - The rank of Laplacian of a graph is number of vertices minus number of connected components.
"""

# ╔═╡ a252c25f-c872-4e23-ab10-0e285c3ad944
md"""
### Spectral Clustering

Idea (1D): Given the similarity matrix ``W``,

$\min \sum_{i,j}^n w_{ij}^2 (f_i - f_j)^2$

- ``f_i`` is the low-dimensional representation

- Larger ``w_{ij}`` enforces ``f_i`` and ``f_j`` more similar

- Two similar points in the original space will be similar in the low-dimensional space

Reformulation:

$\begin{align*}
f' Lf &= f'Df - f'Wf \\
&= \sum_{i=1}^n d_i f_i^2 - \sum_{i,j=1}^n f_i f_j w_{ij} \\
&= \frac{1}{2} \left(\sum_{i=1}^n d_i f_i^2 - 2 \sum_{i,j=1}^n f_i f_j w_{ij} + \sum_{j=1}^n d_j f_j^2\right) \\
&= \frac{1}{2} \sum_{i,j=1}^n w_{ij} (f_i - f_j)^2
\end{align*}$

$\min \sum_{i,j}^n w_{ij}^2 (f_i - f_j)^2 \implies \min f'Lf$

- Where un-normalized graph Laplacian: ``L = D - W``

How to obtain low-dimensional embedding?

$L = D - W$

- Multiplicity of eigenvalue ``0`` = number ``k`` of connected components ``A_1, …, A_k`` of the graph.

- Ky Fan's Theorem:

  $\sum_{i=1}^c σ_i(L) = \min_{F ∈ ℝ^{n \times c}, F^T F = I} \text{Tr}(F^T L F)$

  The optimal solution ``F`` to the problem is formed by the ``c`` eigenvectors of ``L`` corresponding to the ``c`` smallest eigenvalues.
"""

# ╔═╡ a88b072a-ffa3-466b-b460-8f16f2498569
md"""
### Spectral clustering summary

1. Construct the similarity matrix

2. Compute the Laplacian matrix ``L_{n \times n}``

3. Conduct the eigen-decomposition to get the first ``C`` eigenvectors, ``U_{n \times c}``

4. Apply k-means to ``U_{n \times c}``
"""

# ╔═╡ 4ccec25f-e381-4f2f-a1b4-72b51e550e16
md"# Lecture 14: Dimensionality Reduction"

# ╔═╡ ecc83cc1-cea9-4117-bac4-19588b86fcb7
md"""
### Why is dimensionality reduction important?

1. Exploratory data analysis

   - Visualize high-dimensional data.

2. Curse of dimensionality

   - Supervised learning algorithms do not like to deal with many attributes.
     If there are a lot of attributes most supervised learning algorithms have a tendency to overfit.

   - Distance concentration refers to the problem of all the pairwise distances between different samples/points in the space converging to the same value as the dimensionality of the data increases.
     For example,

     $\|x_1 - x_2\|_2 → d$

     $\|x_1 - x_3\|_2 → d$

3. Computational cost

   - Data science algorithms scale linearly with the number of attributes, but very often the scaling is quadratic, or even worse.

   - Some of the more costly data science algorithms could be impossible to run on larger-sized data.

4. Noise reduction

   - The real-life data are often noisy and looking at any individual attribute might not provide any insight.

   - If we smartly combine a large number of noisy attributes into a small set of new ones, those new attributes might reveal some useful properties of the data that are not obvious in the original data.
"""

# ╔═╡ b2d8fc5c-1979-492a-97b7-7a59534a1297
md"""
### How to reduce the dimensionality?

- Eliminate features?

- Lose information?

!!! note

    We want to preserve information when reducing the dimensionality!
"""

# ╔═╡ 17e76797-39b0-45b6-b8e1-7d86603a53ff
md"""
### Toy Example

3D points

- If each component is stored in a byte, 18 bytes are needed.

- All points are correlated: a common point scaled by different factors

- To store them, only 9 bytes are needed

  - Store one point and six scaling factors

Geometrical interpretation

- All data points lie in a 1D subspace of the original 3D space

- Find a new coordinate system where one of the axes is along the direction of the line

- In the new coordinate system, every data point has only one non-zero coordinate
"""

# ╔═╡ 87b2d14c-f50f-494f-8785-051cbbba8ff2
# Without scaling factors
let
	v1 = [1; 2; 3]
	v2 = [2; 4; 6]
	v3 = [3; 6; 9]
	v4 = [4; 8; 12]
	v5 = [5; 10; 15]
	v6 = [6; 12; 18]
	[v1 v2 v3 v4 v5 v6]
end

# ╔═╡ e613c01f-9ef2-41b2-9c09-d75533d1889f
# With scaling factors
let
	v0 = [1; 2; 3]
	v1 = 1v0
	v2 = 2v0
	v3 = 3v0
	v4 = 4v0
	v5 = 5v0
	v6 = 6v0
	[v1 v2 v3 v4 v5 v6]
end

# ╔═╡ 4f181c54-c969-41f0-8467-5f15f1c1d1ce
md"""
### Principal Components Analysis (PCA)

PCA is a dimensionality reduction method

- A linear transformation

  - Find a new coordinate system for the dataset

    - Only use a small part of coordinates to represent data points

  - Preserve as much of the data's variance as possible

Formally, given a dataset with ``n`` samples ``\{𝐱_1, 𝐱_2, …, 𝐱_n\}, \; 𝐱_i ∈ ℝ^d``

- Find a linear transformation ``W^{d \times k}`` where ``k < d``

  - ``d`` is the number of features in the original data

  - ``k`` is the number of new features

- Preserve the variance as much as possible

First principal component

- Subtract the mean

  $\tilde{X} = [\tilde{𝐱}_1, \tilde{𝐱}_2, …, \tilde{𝐱}_n] \quad \tilde{𝐱}_i = 𝐱_i - \tilde{𝐱}$

- Apply the linear transformation

  - Get data points in the new coordinate system

    $[𝐰^T \tilde{𝐱}_1, 𝐰^T \tilde{𝐱}_2, …, 𝐰^T \tilde{𝐱}_n]$

  - Compute the variance in the new coordinate system

    $\frac{1}{n} \sum_{i=1}^n (𝐰^T \tilde{𝐱}_1)^2$

How to find this new coordinate system/linear transformation?

- Maximize the variance in the new coordinate system

  $\max_{\|𝐰\|_2 = 1} \frac{1}{n} \sum_{i=1}^n (𝐰^T \tilde{𝐱}_1)^2$

- Optimizing this problem can find the new coordinate system

  - The first principal component: ``d → 1``

    $\{𝐰^T \tilde{𝐱}_1, 𝐰^T \tilde{𝐱}_2, …, 𝐰^T \tilde{𝐱}_n\}$

Second principal component

$\max_{\|𝐰\|_2 = 1, 𝐰 ⟂ 𝐰_1} \frac{1}{n} \sum_{i=1}^n (𝐰^T \tilde{𝐱}_i)^2$

- The first principal component

  $\{𝐰_1^T \tilde{𝐱}_1, 𝐰_1^T \tilde{𝐱}_2, …, 𝐰_1^T \tilde{𝐱}_n\}$

- The second principal component

  $\{𝐰_2^T \tilde{𝐱}_1, 𝐰_2^T \tilde{𝐱}_2, …, 𝐰_3^T \tilde{𝐱}_n\}$

The ``k``-th principal component

$X = [𝐱_1, 𝐱_2, …, 𝐱_n] ∈ ℝ^{d \times n}$

$W = [𝐰_1, 𝐰_2, …, 𝐰_k] ∈ ℝ^{d \times k}$

$\Downarrow$  

$\hat{X} = W^T \tilde{X} ∈ ℝ^{k \times n}$

Matrix form

$\begin{align*}
\sum_{i=1}^n (𝐰^T \tilde{𝐱}_i)^2 &= \sum_{i=1}^n (𝐰^T \tilde{𝐱}_i)(𝐰^T \tilde{𝐱}_i) \\
&= \sum_{i=1}^n (𝐰^T \tilde{𝐱}_i)(\tilde{𝐱}_i^T 𝐰) \\
&= 𝐰^T (\sum_{i=1}^n \tilde{𝐱}_i \tilde{𝐱}_i^T) 𝐰 \\
&= 𝐰^T \tilde{X} \tilde{X}^T 𝐰 \implies \max_{W^TW = I} W^T \tilde{X} \tilde{X}^T W \quad \text{(Objective function of PCA)}
\end{align*}$
"""

# ╔═╡ 4f9a05db-4158-4ca3-a160-81aaec82120d
md"""
### How to optimize this model?

- Eigen-decomposition for the covariance matrix

  $A = U\Sigma U^T$

  - ``A = \tilde{X} \tilde{X}^T ∈ ℝ^{d \times d}`` is the covariance matrix

  - ``U = [𝐮_1, 𝐮_2, …, 𝐮_d] ∈ ℝ^{d \times d}`` where ``𝐮_i`` is the ``i``-th largest eigenvector, ``𝐮_i^T 𝐮_i = 0``, ``\|𝐮_i\|_2 = 1``

  - ``\Sigma = diag\{λ_1, λ_2, …, λ_d\}`` where ``λ_i`` is the ``i``-th largest eigenvalue ``0 ≤ λ_d ≤ ⋯ ≤ λ_2 ≤ λ_1``

- The solution is the largest ``k`` eigenvectors

$\max_{W^T W=1} W^T \tilde{X} \tilde{X}^T W \implies W = [𝐮_1, 𝐮_2, …, 𝐮_k] ∈ ℝ^{d \times k}$

- Interpretation

  - Covariance matrix ``A = U\Sigma U^T``

  $A = λ_1 𝐮_1 𝐮_1^T + λ_2 𝐮_2 𝐮_2^T + ⋯ + λ_k 𝐮_k 𝐮_k^T + ⋯ + λ_d 𝐮_d 𝐮_d^T$

  - Only keep the largest ``k`` eigenvalue ``0 ≤ λ_d ≤ ⋯ ≤ λ_2 ≤ λ_1``

  $A ≈ λ_1 𝐮_1 𝐮_1^T + λ_2 𝐮_2 𝐮_2^T + ⋯ + λ_k 𝐮_k 𝐮_k^T \implies W = [𝐮_1, 𝐮_2, …, 𝐮_k] ∈ ℝ^{d \times k}$
"""

# ╔═╡ d862560e-3517-457f-8030-9fa073700dfc
md"""
### Summary

- Step 1: Mean subtraction

  $\tilde{X} = X - \frac{1}{n} X 𝟏 𝟏^T$

- Step 2: Compute the covariance matrix

  $A = \tilde{X}\tilde{X}^T$

- Step 3: Eigen-decomposition

  $A = U \Sigma U^T$

- Step 4: Keep the largest ``k`` eigenvectors

  $W = [𝐮_1, 𝐮_2, …, 𝐮_k] ∈ ℝ^{d \times k}$
"""

# ╔═╡ 8ea3aa00-7e17-429a-a39a-efac0d54773b
md"# Lecture 15: Recommender System"

# ╔═╡ 06bfffa5-7572-4861-bee5-fbfb4646db16
md"""
### Introduction

Recommender Systems

- A particular type of personalized Web-based applications

- Provide users personalized recommendations about content they may be interested

Example:

- Amazon: product recommendation

- Netflix: movies recommendation

- Google: new recommendation

Book recommendation: a lot of sales from recommendations
"""

# ╔═╡ 78ba0a46-c48a-49bc-bc8b-2b738059786f
md"""
### Recommender System

1. **Content-based filtering** ("Show me more of the same what I've liked")

   - Recommendations based on item descriptions/features

2. **Collaborative filtering** ("Tell me what's popular among my peers")

   - Look at the ratings of like-minded users to provide recommendations

   - Users who have expressed similar interests in the past will share common interests in the future.
"""

# ╔═╡ f02ff524-de22-4a69-962d-5e0bd601f319
md"""
### Collaborative Filtering

Given

- Set of users

- Set of items (movies, books, news, ...)

- Feedback (ratings, ...)

Predict the preference of each user for each item

- Assumption: similar feedback ↔ similar taste
"""

# ╔═╡ 7bc9c66a-9dd5-46ac-ae48-69266c063e49
md"""
### Memory based CF

Memory based collaborative filtering

- User based CF

- Item based CF
"""

# ╔═╡ d9382e8b-64d6-4e96-9103-8976f64a6b4f
md"""
### Memory based CF: User-CF

Idea

- If users have similar tastes in the past, they will have similar tastes in the future

Recommend item i to Alice?

- Find a set of users (peers/nearest neighbors) who liked the same items as the target user (Alice) in the past and who have rated item i

- Use the average of their ratings to predict

Illustration:

- A database of ratings of the current user, Alice, and some other users is given

- Determine whether Alice will like or dislike *Item5*, which Alice has not yet rated or seen

Questions:

- How do we measure similarity?

- How many neighbors should we consider?

- How do we generate a prediction from the neighbors' ratings?

How to measure the user similarity?

- Pearson correlation

  - ``a,b``: users

  - ``r_{a,p}``: rating of user ``a`` for item ``p``

  - ``P``: set of items, rated by both ``a`` and ``b``

- Possible similarity values between ``-1`` and ``1``

Pearson correlation:

$sim(a,b) = \frac{\sum_{p ∈ P} (r_{a,p} - \bar{r}_a)(r_{b,p} - \bar{r}_b)}{\sqrt{\sum_{p∈P} (r_{a,p} - \bar{r}_a)^2}\sqrt{\sum_{p∈P}(r_{b,p} - \bar{r}_b)^2}}$

How to make predictions?

- Use similarity threshold or fixed number of neighbors

  $pred(a,p) = \overline{r_a} + \frac{\sum_{b∈N} sim(a,b) * (r_{b,p} - \overline{r_b})}{\sum_{b∈N} sim(a,b)}$

- Calculate whether the neighbors' ratings for the unseen item ``i`` are higher or lower than their average

- Combine the rating differences -- use the similarity with ``a`` as a weight

- Add/subtract the neighbors' bias from the active user's average and use this as a prediction

Prediction

$pred(a,p) = \overline{r_a} + \frac{\sum_{b∈N} sim(a,b) * (r_{b,p} - \overline{r_b})}{\sum_{b∈N} sim(a,b)}$
"""

# ╔═╡ 16c62e22-a4a9-4468-be7c-b99cb5957eb5
### User-CF Example
let
	alice = [5, 3, 4, 4, missing]
	user1 = [3, 1, 2, 3, 3]
	user2 = [4, 3, 4, 3, 5]
	user3 = [3, 3, 1, 5, 4]
	user4 = [1, 5, 5, 2, 1]
	r = [alice user1 user2 user3 user4]'
	df = DataFrame(Item1=r[:,1], Item2=r[:,2], Item3=r[:,3], Item4=r[:,4], Item5=r[:,5])

	function sim(a, b)
		rā = sum(r[a,1:end-1])
		rb̄ = sum(r[a,1:end-1])
		num = sum((r[a,1:end-1] .- rā) .* (r[b,1:end-1] .- rb̄))
		den = sqrt(sum((r[a,1:end-1] .- rā).^2)) * sqrt(sum((r[b,1:end-1] .- rb̄).^2))
		sim = num / den
	end

	df
	# sim(1, 2)
	# pred = sim(1,2) .* (r[2,1:end-1] .- sum(r[2,1:end-1]))
end

# ╔═╡ ec3b0f1c-c543-4f2c-bdbb-26b025bda62b
md"""
### Memory based CF: Item-CF

Idea:

- Use the similarity between items (and not users) to make predictions

Steps:

- Look for items that are similar to item5

- Take Alice's ratings for these items to predict the rating for item5

How to measure the item similarity?

- Cosine similarity

  $sim(\vec{a}, \vec{b}) = \frac{\vec{a} ⋅ \vec{b}}{|\vec{a}| * |\vec{b}|}$

- Ratings are seen as vector in n-dimensional space

How to make prediction?

$pred(u,p) = \frac{\sum_{i∈ratedItem(u)} sim(i,p) * r_{u,i}}{\sum_{i∈ratedItem(u)} sim(i,p)}$

- Neighborhood size is typically also limited to a specific size

- Not all neighbors are taken into account for the prediction
"""

# ╔═╡ a60d529e-ebab-4f7c-9898-5c7b5a41a37c
md"# Lecture 16: Recommender System"

# ╔═╡ 8bd15be4-38b4-424d-83d2-e680636ab22f
md"""
### Evaluation (MAE and RMSE)

- Mean Absolute Error (MAE) computes the deviation between predicted ratings and actual ratings

  $MAE = \frac{1}{n} \sum_{i=1}^n |p_i - r_i|$

- Root Mean Square Error (RMSE) is similar to MAE, but places more emphasis on larger deviation

  $RMSE = \sqrt{\frac{1}{n} \sum_{i=1}^n (p_i - r_i)^2}$
"""

# ╔═╡ bf5f870a-af9f-4cef-9c04-9d7b9fc9e9d2
md"""
### Evaluation (Precision and Recall)

- Precision: a measure of exactness, determines the fraction of relevant items retrieved out of all retrieved

  - E.g. the proportion of recommended movies that are actually good

    $Precision = \frac{tp}{tp + fp} = \frac{|\text{good movies recommended}|}{|\text{all recommendations}|}$

- Recall: a measure of completeness, determines the fraction of relevant items retrieved out of all relevant items

  - E.g. the proportion of all good movies recommended

    $Recall = \frac{tp}{tp + fn} = \frac{|\text{good movies recommended}|}{|\text{all good movies}|}$
"""

# ╔═╡ c63094d6-e807-498b-a250-30901f3a5a3c
md"""
### Evaluation (Rank position is important)

Rank position is important

- Relevant items are more useful when they appear earlier in the recommendation list

- Particularly important in recommender systems as lower ranked items may be overlooked by users

Precision@K

- Precision for the top-k recommended items

- Example:

$\begin{align*}
P@1 &= 1/1 = 1 \\
P@2 &= 1/2 = 0.5 \\
P@3 &= 1/3 = 0.33 \\
P@4 &= 2/4 = 0.5 \\
P@5 &= 3/5 = 0.6 \\
P@n &= 3/n
\end{align*}$

Recall@K

- Recall for the top-k recommended items

Average Precision

$AP@n = \frac{1}{GTP} \sum_{k=1}^n \text{precision@}k \times \text{relevance}@k$

- ``n`` the total number of items you are interested in

- ``GTP`` the total number of ground truth positives

- ``\text{relevance@}k``: an indicator function which equals 1 if the item at rank ``k`` is relevant and equals to ``0`` otherwise.

- Example:

  $AP = \frac{1}{3} (1/1 + 0/2 + 0/3 + 2/4 + 3/5 + 0 + … + 0) = 0.7$
"""

# ╔═╡ d410d493-0f3c-4065-bbce-362d28f3d029
md"""
### Evaluation (Cumulative Gain)

Normalized Discounted Cumulative Gain (NDCG)

- Measure the ranking quality

Cumulative Gain (CG)

- The sum of the relevance of recommendations

- Does not consider the rank!

$CG_{pos} = \sum_{i=1}^{pos} rel_i$

- Example:

| Rank | Hit ? |
|:------:|:-------:|
| 1 | |
| 2 | X |
| 3 | X |
| 4 | X |
| 5 | |

$CG_{pos} = 0 + 1 + 1 + 1 + 0 = 3$

Discounted Cumulative Gain (DCG)

- Logarithmic reduction factor

- Highly relevant item appearing lower in the recommendation list should be penalized

$DCG_{pos} = rel_1 + \sum_{i=2}^{pos} \frac{rel_i}{\log_2{i}}$

- Example:

| Rank | Hit ? |
|:------:|:-------:|
| 1 | |
| 2 | X |
| 3 | X |
| 4 | X |
| 5 | |

$DCG_5 = \frac{1}{\log_2{2}} + \frac{1}{\log_2{3}} + \frac{1}{\log_2{4}} = 2.13$

Idealized discounted cumulative gain (IDCG)

- Assume that items are ordered by decreasing relevance

- The maximum possible DCG

$IDCG_{pos} = rel_1 + \sum_{i=2}^{|h|-1} \frac{rel_i}{\log_2{i}}$

- Example:

| Rank | Hit ? | Ideal |
|:------:|:-------:|:-------:|
| 1 | | x |
| 2 | X | x |
| 3 | X | x |
| 4 | X | |
| 5 | | |

$IDCG_5 = 1 + \frac{1}{\log_2{2}} + \frac{1}{\log_2{3}} = 2.63$

Normalized discounted cumulative gain (NDCG)

- Normalized to the interval ``[0..1]``

$NDCG_{pos} = \frac{DCG_{pos}}{IDCG_{pos}}$

$DCG_5 = \frac{1}{\log_2{2}} + \frac{1}{\log_2{3}} + \frac{1}{\log_2{4}} = 2.13$

$IDCG_5 = 1 + \frac{1}{\log_2{2}} + \frac{1}{\log_2{3}} = 2.63$

$NDCG_5 = \frac{DCG_5}{IDCG_5} = \frac{2.13}{2.63} ≈ 0.81$
"""

# ╔═╡ a898efe5-8fbc-401c-9999-f54bd688dddc
md"""
### Singular Value Decomposition

Provide a way to understand the hidden structure in the data

- Each row of U can be view as the representation of a user

- Each column of V can be viewed as the representation of an item

$\begin{array}{ccccc}
X & & U & S & V^T \\
\begin{pmatrix}
x_{11} & x_{12} & ⋯ & x_{1n} \\
x_{21} & x_{22} & ⋯ & \\
⋮ & ⋮ & ⋱ & \\
x_{m1} & & & x_{mn}
\end{pmatrix}
& = &
\begin{pmatrix}
u_{11} & ⋯ & u_{1r} \\
⋮ & ⋱ & \\
u_{m1} & & u_{mr}
\end{pmatrix}
&
\begin{pmatrix}
s_{11} & 0 & ⋯ \\
0 & ⋱ & \\
⋮ & & s_{rr}
\end{pmatrix}
&
\begin{pmatrix}
v_{11} & ⋯ & v_{1n} \\
⋮ & ⋱ & \\
v_{r1} & & v_{rn}
\end{pmatrix} \\
m \times n & & m \times r & r \times r & r \times n
\end{array}$

- ``X``: ``m \times n`` matrix (e.g., ``m`` users, ``n`` videos)

- ``U``: ``m \times r`` (``m`` users, ``r`` factors)

- ``S``: ``r \times r`` diagonal matrix (strength of each 'factor') (``r``: rank of the matrix)

- ``V``: ``r \times n`` matrix (``n`` videos, ``r`` factor)

Provide a low-rank approximation for the rating matrix

Truncated SVD ``𝐀_k = 𝐔_k𝚺_k𝐕_k^T`` of ``𝐀`` thus satisfies

$\|𝐀 - 𝐀_k\|_F = \min_{\text{rank}(𝐁) = k} \|𝐀 - 𝐁\|_F$

Problems:

- Complete input matrix:

  - All elements should be available

- Large portion of missing values

- Heuristics to pre-fill missing values

  - Item's average rating

  - Missing values as zeros
"""

# ╔═╡ a41a1929-d45a-4320-99ae-214b8b0f3ec0
md"""
### Matrix Completion

No need to pre-fill missing values

Good performance

- The best single-model approach to collaborative filtering

Learn a latent representation (vector) for each user and each item

Missing values are estimated by the dot product

$r_{ij} ≈ p_i q_j$

Assume the dimensionality of the latent representation is 1

Loss function

$\min_{𝐐, 𝐏} \sum_{(i,j) ∈ \Omega} (v_{ij} - [𝐐^T 𝐏]_{ij})^2$

Introduce bias and regularization

$\min_{𝐐, 𝐏, 𝐮, 𝐦} \sum_{(i,j) ∈ \Omega} (v_{ij} - μ - u_i - m_j - [𝐐^T 𝐏]_{ij})^2 + λ(\|𝐐\| + \|𝐏\| + \|𝐮\| + \|𝐦\|)$

  - ``μ``: the average rating over all items

  - ``m_j``: the bias for the ``j``-th item

  - ``u_i``: the bias for the ``i``-th user

Optimization (simple case)

$L_{ij}(P,Q) = (r_{ij} - p_i q_j)^2$

SGD to minimize the squared loss iteratively computes:

$\begin{align*}
p_i &\gets p_i - η \frac{∂L_{ij}(P,Q)}{∂p_i} = p_i + η(ε_{ij} ⋅ q_j) \\
q_j &\gets q_j - η \frac{∂L_{ij}(P,Q)}{∂q_j} = q_j + η(ε_{ij} ⋅ p_i) \\
\end{align*}$

where ``ε_{ij} = r_{ij} - p_i q_j``
"""

# ╔═╡ cb61fc58-89cb-4c5c-a1fb-85bbbd9ba249
md"# Lecture 17: Document Analysis"

# ╔═╡ b21ba9b7-3094-4bc9-9662-9b04b224cf80
md"""
### Introduction

Spam Detection

Review Classification

(Example) What is the subject of this document?

- Machine Learning

- Computer Vision

- Natural Language processing

- Robotics

- ...

Document Classification

- Spam detection

- Review classification

- Sentiment analysis

- ...

Document Clustering

- Topic discovery

- ...
"""

# ╔═╡ 21783d97-562b-4879-a40c-6903988f7aba
md"""
### Document Classification

Given ``n`` samples: ``\{(x_1, y_1), (x_2, y_2), …, (x_n, y_n)\}``

- Learn a mapping function ``x_i \overset{f(x)}{⟶} y_i``

Each sample could be:

- An email (spam detection)

- A paragraph (review classification)

- An article (topic classification)

- ...
"""

# ╔═╡ 4302fe12-6626-43fa-a8d4-2f0da3a17246
md"""
### How to represent the text?

The words in a sentence are not numerical values!

Convert categorical features into numerical values

- Label encoding

- One-hot encoding

- Ordinal encoding

How to convert words into numerical values?

- Each sentence/paragraph/article contains multiple words

- Bag-of-words!
"""

# ╔═╡ a8922d9a-ea30-4ee4-84b3-ee617a77fa14
md"""
### The Bag-of-Words Representation

BoW can represent a sentence/paragraph/article as a bag of words vector.

1. Build the vocabulary/dictionary from the given dataset

   - Get all the unique words in the given dataset

   - Each word in the vocabulary has an index

2. Represent each sentence/paragraph/article with the vocabulary

   - Use a vector whose dimensionality equals to the size of the vocabulary

   - If the word appears, add 1 to the corresponding element in the vector

Example:

- Review 1: This movie is very scary and long

- Review 2: This movie is not scary and is slow

- Review 3: This movie is spooky and good

| Term | Review 1 | Review 2 | Review 3 |
|:------:|:----------:|:----------:|:----------:|
| This | 1 | 1 | 1 |
| movie | 1 | 1 | 1 |
| is | 1 | 2 | 1 |
| very | 1 | 0 | 0 |
| scary | 1 | 1 | 0 |
| and | 1 | 1 | 1 |
| long | 1 | 0 | 0 |
| not | 0 | 1 | 0 |
| slow | 0 | 1 | 0 |
| spooky | 0 | 0 | 1 |
| good | 0 | 0 | 1 |

Properties:

- Cannot preserve the ordering of the words

- High dimensional

- Very sparse

- Some words are too common for all documents

  - The, and, it, to, ...
"""

# ╔═╡ 2594439d-8c60-4070-9967-4d2e6f9b46c2
md"""
### Term Frequency-Inverse Document Frequency

Term Frequency-Inverse Document Frequency (TF-IDF)

- Reflect how important a word is to a document in a collection

Definition:

$TF(t, d) = \frac{\#t \text{ in document } d}{\#\text{words in document } d} \qquad IDF(t) = \log{\frac{\#\text{documents}}{\#\text{documents containing } t}}$

$TFIDF = TF(t,d) \times IDF(t)$

Term frequency (TF)

- Measure the frequency of a word in a document

Inverse Document Frequency (IDF)

- Measure the rareness of a word in all documents

- The more documents a word appears in, the less valuable that word is as a signal to differentiate any given document

- Movie Example:

  - IDF('movie') = log(3/3) = 0

  - IDF('is') = log(3/3) = 0

  - IDF('not') = log(3/1) = log(3) = 0.48

  - IDF('scary') = log(3/2) = 0.18

  - IDF('and') = log(3/3) = 0

  - IDF('slow') = log(3/1) = 0.48

TF-IDF

- Words with a higher score are more important

- Movie Example:

  - TF-IDF('movie', Review 2) = 1/8 * 0 = 0

  - TF-IDF('is', Review 2) = 1/4 * 0 = 0

  - TF-IDF('not', Review 2) = 1/8 * 0.48 = 0.06

  - TF-IDF('scary', Review 2) = 1/8 * 0.18 = 0.023

  - TF-IDF('and', Review 2) = 1/8 * 0 = 0

  - TF-IDF('slow', Review 2) = 1/8 * 0.48 = 0.06
"""

# ╔═╡ 452f33c5-7217-42c4-85e7-882613524946
md"""
### Document Classification

When there are only two classes

- Binary classification → logistic regression, KNN, etc

- e.g. spam detection, review classification, ...

When the number of classes is greater than 2

- Multi-class logistic regression, KNN, etc

- e.g. topic classification, ...
"""

# ╔═╡ 8c3543db-3f30-476f-ab12-9b90a31f2271
md"""
### Multi-class Classification

Logistic regression for binary classification

$\begin{align*}
p(y = 1 ∣ 𝐱) &= σ(𝐰^T 𝐱) = \frac{1}{1 + \exp(-𝐰^T 𝐱)} = \frac{\exp(𝐰^T 𝐱)}{1 + \exp(𝐰^T 𝐱)} \\
p(y = 0 ∣ 𝐱) &= 1 - p(y = 1 ∣ 𝐱) = 1 - \frac{1}{1 + \exp(-𝐰^T 𝐱)} = \frac{\exp(-𝐰^T 𝐱)}{1 + \exp(-𝐰^T 𝐱)} = \frac{1}{1 + \exp(𝐰^T 𝐱)}
\end{align*}$

Softmax regression for multi-class classification

$\begin{align*}
p(y = 1 ∣ 𝐱) &= \frac{\exp(𝐰_1^t 𝐱)}{\sum_{c = 1}^K \exp(𝐰_c^T 𝐱)}, \\
p(y = 2 ∣ 𝐱) &= \frac{\exp(𝐰_2^t 𝐱)}{\sum_{c = 1}^K \exp(𝐰_c^T 𝐱)}, \\
&⋯ \\
p(y = K ∣ 𝐱) &= \frac{\exp(𝐰_K^t 𝐱)}{\sum_{c = 1}^K \exp(𝐰_c^T 𝐱)}, \\
\end{align*}$
"""

# ╔═╡ 8ef87a4b-acb8-4a40-ba0a-69ee9b2f136a
md"""
### Evaluation of multi-class classification

Binary classification: imbalanced data

- Recall

- Precision

- F1-score

Multi-class classification: imbalanced data

- Micro/Macro recall

- Micro/Macro precision

- Micro/Macro f1-score
"""

# ╔═╡ 3049eefa-9eed-47bd-a06e-b40dee6c72c7
md"""
### Document Clustering

Document Clustering

- e.g. Topic discovery, …

- Kmeans, spectral clustering, agglomerative clustering, …

Non-Negative Matrix Factorization

- "Learning the parts of objects by non-negative matrix factorization" --Nature 1999

- "Algorithms for non-negative matrix factorization" --NIPS 2001

- Definition

  $\min\|X - FG^T\|_F^2 \quad\text{ s.t. }\quad F ≥ 0, \;G ≥ 0$
"""

# ╔═╡ 0f865602-aacf-46be-b158-3cf641038c9a
md"""
### Interpretation with NMF

$X ≈ FG^T$

Columns of ``F`` are the underlying basis vectors

$F = [f_1, f_2, …, f_k]$

Rows of ``G`` give the weights associated with each basis vector

$[𝐱_1, 𝐱_2, …, 𝐱_n] = [𝐟_1, 𝐟_2, …, 𝐟_k] \begin{bmatrix} g_{11} & g_{21} & ⋯ & g_{n1} \\ g_{12} & g_{22} & ⋯ & g_{n2} \\ ⋮ & ⋮ & ⋱ & ⋮ \\ g_{1k} & g_{2k} & ⋯ & g_{nk} \end{bmatrix}$

$𝐱_i = 𝐟_1 g_{i1} + 𝐟_2 g_{i2} + ⋯ + 𝐟_k g_{ik}$

(only additive combinations!!)
"""

# ╔═╡ ac3ba967-7a41-4d3b-bae3-6d8ee8f94e48
md"""
### Application Example: Topic Models

- Apply TF-IDF and unit length normalization to rows of ``𝐀``.

- Run Euclidean NMF on normalized ``𝐀`` (``k = 3``, random initialization).

$𝐱_i = 𝐟_1 g_{i1} + 𝐟_2 g_{i2} + ⋯ + 𝐟_k g_{ik}$
"""

# ╔═╡ 1a2173b5-5047-4436-ad57-cd9568748d13
md"""
### Multiplicative Update Method

The most common used method

- Proposed by Lee and Seung (2001)

The update rule:

- Fix ``F``, solve for ``G``

- Fix ``G``, solve for ``F``

$F_{ik} \gets F_{ik} \frac{(XG)_{ik}}{(FG^T G)_{ik}} \qquad G_{jk} \gets G_{jk} \frac{(X^T F)_{jk}}{(GF^T F)_{jk}}$

Arise from gradient descent method

$F_{ik} \gets F_{ik} + ε_{ik} [(XG)_{ik} - (FG^T G)_{ik}]$

- Where ``ε_{ik}`` is a small positive number.

Set it as

$ε_{ik}= \frac{F_{ik}}{(FG^T G)_{ik}}$

Then

$F_{ik} = F_{ik} \frac{(XG)_{ik}}{(FG^T G)_{ik}}$

!!! note "Algorithm 2: Algorithm to solve NMF"

    Initialize ``F`` and ``G``

    **repeat**

    - Update ``F``:

      $F_{ik} \Leftarrow F_{ik} \frac{(XG)_{ik}}{(FG^T G)_{ik}}$

    - Update ``G``:

      $G_{jk} \Leftarrow G_{jk} \frac{(X^T F)_{jk}}{(GF^T F)_{jk}}$

    **until** Converges
"""

# ╔═╡ 7fd48de6-241a-4d56-a070-009963a2cae1
md"# Lecture 18: PageRank"

# ╔═╡ d98d1cf5-ac75-48c8-bbf7-8c848e31f69a
md"""
### Graph Terminology

Components of a Graph

- Nodes/vertices

- Edges/links

- Graph/Network

Types of Graphs

- Undirected Graph: links are undirected

  - Friendship on Facebook

- Directed Graph: links are directed

  - Following on Twitter

Adjacency matrix

- Undirected

- Directed

Node degrees of undirected graph

- The number of edges adjacent to a node

Node degrees of directed graph

- In-degree: the number of head ends adjacent to a node

- Out-degree: the number of tail ends adjacent to a node

Node degrees

- Undirected

- Directed
"""

# ╔═╡ 952d8319-40c3-44c6-9355-998a00678641
md"""
### PageRank

The web is a graph

- Nodes: web pages

- Edges: hyperlinks

All web pages are not equally "important"

- Some webpages should be assigned more priority than others, for being more important

- Which node (webpage) is important?

Compute the importance of nodes in a graph

- Idea: links as votes

- Page is more important if it has more links

Use in-links as votes

- How to use votes to compute the importance score???

- Q: E and C may be different. C may be more important.

- How to differentiate their importance when they vote for A?

A vote from an important page is worth more:

- Each link's vote is proportional to the importance of its source page

- If page ``i`` with importance ``r_i`` has ``d_i`` out-links, each link gets ``r_i / d_i`` votes

- Page ``j``'s own importance ``r_j`` is the sum of the votes on its in-links

Formally, the importance score of each node is

$r_j = \sum_{i → j} \frac{r_i}{d_i}$

- A page is important if it is pointed by other important pages

(Example) Calculating transition matrix ``M`` from an adjacency matrix:

$\begin{array}{c|ccc}
& y & a & m \\
\hline
y & 1 & 1 & 0 \\
a & 1 & 0 & 1 \\
m & 0 & 1 & 0
\end{array}
\implies
\begin{array}{c|ccc}
& r_y & r_a & r_m \\
\hline
r_y & \frac{1}{2} & \frac{1}{2} & 0 \\
r_a & \frac{1}{2} & 0 & 1 \\
r_m & 0 & \frac{1}{2} & 0
\end{array}$

$r_j = \sum_{i → j} \frac{r_i}{d_i} \implies \begin{cases} r_y = \frac{1}{2} r_y + \frac{1}{2} r_a \\ r_a = \frac{1}{2} r_y + r_m \\ r_m = \frac{1}{2} r_a \end{cases} \implies \underset{r}{\begin{bmatrix} r_y \\ r_a \\ r_m \end{bmatrix}} = \underset{M}{\begin{bmatrix} \frac{1}{2} & \frac{1}{2} & 0 \\ \frac{1}{2} & 0 & 1 \\ 0 & \frac{1}{2} & 0 \end{bmatrix}} \underset{r}{\begin{bmatrix} r_y \\ r_a \\ r_m \end{bmatrix}}$

Property of the transition matrix ``M``

- Column sum is ``1``

Property of the rank vector ``r``

- ``r_i`` is the importance score of page ``i``

  $\sum_i r_i = 1$

Interpretation

- At time ``t``, the user is on page ``i``

- At time ``t + 1``, the user follows an out-link from ``i`` uniformly at random

- Ends up on some page ``j`` linked from ``i``

- Define ``p(t)`` is as a probability over pages

- At time ``t + 1``, we have

  $p(t + 1) = M ⋅ p(t) \qquad \text{Random walk}$

Solution of the importance score ``r``:

- ``p(t)`` is **stationary distribution** of a random walk

  $r = M ⋅ r$

- ``r`` is the stationary distribution of the random walk

- ``r`` is the eigenvector of the transition matrix ``M`` (with eigenvalue ``1``)

Solution of the importance score ``r``:

- Compute the eigenvector of the transition matrix ``M`` with eigenvalue ``1``

- Use power iteration to compute the eigenvector efficiently

Example:

- Assign each node an initial page rank

- Repeat until convergence ``\displaystyle \left(\sum_i |r_i^{t+1} - r_i^t| < \epsilon\right)``

  - Calculate the page  rank of each node

    $r_j^{(t + 1)} = \sum_{i → j} \frac{r_i^{(t)}}{d_i}$

Example (in math notation):

- Initialize: ``r^0 = [1/N, …, 1/N]^T``

- Iterate: ``r^{(t + 1)} = M ⋅ r^t``

- Stop when ``|r^{(t + 1)} - r^t|_1 < \epsilon``
"""

# ╔═╡ b6b8fd4f-fe8e-4cf8-9e01-c2e737f4c25b
md"# Lecture 19: Fully-connected Neural Network"

# ╔═╡ cfc55134-7b7b-4c15-bb4f-b183b0bbcf73
md"""
### Overview

Fully connected neural network

- Multi-layer perceptron (MLP)

Convolutional neural network

Recurrent neural network
"""

# ╔═╡ 084a3957-3b0f-4763-a6e2-1fd015845472
md"""
### Logistic Regression

- Linear model

- Single layer
"""

# ╔═╡ 41b3ad3b-55b5-4669-bafa-f45364a79bcf
md"""
### From Single Layer to Multiple Layers

Stack multiple layers together

Multiple Linear Layers

Regression task

$f(𝐱_i) = 𝐳_i^{(L)}$

Classification task

$f(𝐱_i) = σ(𝐳_i^{(L)})$
"""

# ╔═╡ 75833e7c-56f2-4b8a-9626-f63794bbcfd8
md"""
### From Linear Model to Non-linear Model

Stack multiple linear model is still a LINEAR model

Activation function

- Add (non-linear) activation functions to hidden layers

- Multilayer fully-connected neural nets with nonlinear activation functions are universal approximators: they can approximate any function arbitrarily well

Examples:

- Sigmoid function

- Tanh function

- ReLu function

- LeakyReLu function

- ...
"""

# ╔═╡ 8ca6f6d4-e0de-404b-84fb-2b51af386a69
md"""
### Activation Function

Sigmoid function

$σ(x) = \frac{1}{1 + e^{-x}}$

Tanh function

$\tanh(x) = \frac{2}{1 + e^{-2x}} - 1$

ReLu function

$\text{ReLu}(x) = \max(0, x)$
"""

# ╔═╡ 92c6580d-a6d3-410a-83bd-d1be0d4b156c
md"""
### Example (Image classification with logistic regression)

- Vectorize each 28 × 28 image to a 784-dim vector, ``𝐱_i ∈ ℝ^{784}``

- Add the constant 1 to ``𝐱_i`` (Introduce the bias term). Then ``𝐱_i ∈ ℝ^{785}``

- Denote the model parameter ``W ∈ ℝ^{10 × 785}``

- Then, ``𝐳_i = W 𝐱_i``

- Output the prediction using the softmax function

$f(𝐱_i) = \text{Softmax}(𝐳_i)$
"""

# ╔═╡ 91fb93da-2948-4d21-bc95-3fe665ba984b
md"""
### Example (Image classification with MLP)

- Input image ``𝐱_i ∈ ℝ^{785}``

- ``𝐳_i^{(1)} = W^{(0)} 𝐱_i ∈ ℝ^{256}``

- ``𝐡_i^{(1)} = \text{relu}(𝐳_i^{(1)}) ∈ ℝ^{256}``

- ``𝐳_i^{(2)} = W^{(1)} 𝐡_i^{(1)} ∈ ℝ^{128}``

- ``𝐡_i^{(2)} = \text{relu}(𝐳_i^{(2)}) ∈ ℝ^{128}``

- ``𝐳_i^{(3)} = W^{(2)} 𝐡_i^{(2)} ∈ ℝ^{10}``

- ``\hat{𝐲}_i = \text{Softmax}(𝐳_i^{(3)}) ∈ ℝ^{10}``

- Training set ``\{(𝐱_i, 𝐲_i)\}_{i=1}^{60,000}``

- Loss function: ``L = -\sum_{i=1}^{60000} \sum_{j=1}^{10} y_{ij} \log(\hat{𝐲}_{ij})``
"""

# ╔═╡ 54d0d37f-87dd-4985-b50b-bfd4a4fc9ee9
md"""
### Optimization

Use Stochastic Gradient Descent method to learn model parameters

- Single layer

- Multiple layer: how to compute gradients?

  It is easy to compute gradients regarding ``W^{(1)}``

  How to compute the gradient regarding ``W^{(0)}``

  Backpropagation!

  Compute gradients from the last layer to the input layer!

Chain rule

- For the composite function

  $h(x) = f(g(x))$

- The gradient is

  $\frac{∂h(x)}{∂x} = \frac{∂f(g)}{∂g} \frac{∂g(x)}{∂x}$

  - ``f(y) = y^2``

  - ``g(x) = 3x + 5``

  - ``h(x) = f(g(x))``

  - ``\frac{∂f(g)}{∂g} = 2g``

  - ``\frac{∂g(x)}{∂x} = 3``

  - ``\frac{∂h(x)}{∂x} = \frac{∂f(g)}{∂g} \frac{∂g(x)}{∂x} = (2 * (3x + 5)) * 3``
"""

# ╔═╡ c0f029dd-a4b2-4b01-874b-fde2dcf5fa96
md"""
### Backpropagation

1. Compute gradients of the last layer

   Loss function is the function of ``W^{(1)}`` and ``𝐳^{(1)}``

   Compute their gradients as regular models

   $\frac{∂L}{∂W^{(1)}} \qquad \frac{∂L}{∂𝐳^{(1)}}$

2. Compute gradients of hidden layers based on the chain rule

   How to compute ``\frac{∂L}{∂W^{(0)}}``

   ``𝐳^{(1)}`` is a function of ``W^{(0)} : 𝐳^{(1)} = W^{(0)} 𝐱``

   Based on the chain rule:

   $\frac{∂L}{∂W^{0}} = \frac{∂L}{∂𝐳^{(1)}} \frac{∂𝐳^{(1)}}{∂W^{(0)}}$
"""

# ╔═╡ 226e3ec8-1721-4068-baf1-db98a30ef2b1
md"""
### Implementation

Deep Learning Toolbox

- TensorFlow

- PyTorch

GPU resources

- Google Colab (free)

Build an MLP with PyTorch

```py
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()

		self.fc1 = nn.Linear(28*28, 256)
		self.fc2 = nn.Linear(256, 128)
		self.fc3 = nn.Linear(128, 10)

	def forward(self, x):
		h0 = x.view(-1,28*28)
		h1 = F.relu(self.fc1(h0))
		h2 = F.relu(self.fc2(h1))
		h3 = self.fc3(h2)
		return h3
```

Loss function and optimizer

```py
criterion = nn.CrossEntropyLoss()
optimizer = torch.optim.SGD(model.parameters(), lr=args['lr'])
```

Train the model

```py
for batch_idx, (data, target) in enumerate(train_loader):
	data, target = data.cuda(), target.cuda()

	output = model(data)
	loss = criterion(output, target)

	optimizer.zero_grad()
	loss.backward()

	optimizer.step()

	if batch_idx % args['log_interval'] == 0:
		print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format(epoch, batch_idx * len(data), len(train_loader.dataset), 100. * batch_idx / len(train_loader), loss.item()))
```

Test the model

```py
test_loss = 0
correct = 0
for data, target in test_loader:
	data, target = data.cuda(), target.cuda()

	output = model(data)
	test_loss += criterion(output, target).item()
	pred = output.data.max(1, keepdim=True)[1]
	correct += pred.eq(target.data.view_as(pred)).long().cpu().sum()

test_loss /= len(test_loader.dataset)

print('\nTest set: Average loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(test_loss, correct, len(test_loader.dataset), 100. * correct / len(test_loader.dataset)))
```
"""

# ╔═╡ 9b82a8c8-d9d7-4cf3-ad21-b0550714adf1
md"# Lecture 20: Convolutional Neural Network"

# ╔═╡ 5f5c701d-68ea-4d38-87bd-1d689f8f73ed
md"""
### Background

Feature extractor: Learn useful features from images for prediction

1. Sobel Filter - Weights to Detect Horizontal Edges
"""

# ╔═╡ c1598a27-2519-4ed5-96fa-bfa0b1a1d0ee
md"""
### Convolution

Matrix Inner Product

- ``𝐀 = \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix}`` and ``𝐁 = \begin{bmatrix} 5 & 7 \\ 6 & 8 \end{bmatrix}``

- Inner product:
  ``⟨𝐀, 𝐁⟩ = \sum_i \sum_j a_{ij} b_{ij} = 70``

- Property:
  ``⟨𝐀, 𝐁⟩ = ⟨\text{vec}(𝐀), \text{vec}(𝐁)⟩``

Question: How many 3x3 patches in following two images?
"""

# ╔═╡ 7509452e-1772-4299-b85e-1bc109a9f2aa
md"""
$\begin{align*}⟨𝐀, 𝐁⟩ &= (1 ⋅ 5) + (3 ⋅ 7) + (2 ⋅ 6) + (4 ⋅ 8) \\
&= 5 + 21 + 12 + 32 \\
&= 70
\end{align*}$
"""

# ╔═╡ c3e0bc7a-7d2d-430d-924b-9639d38104a0
md"""
### Zero Padding

Problem: the output is smaller than the input

Zero padding

- Keep the next layer's width and height consistent with the previous

- Keep the information around the border of the image

Add a "border" of all-zeros

Increase the input shape from ``d_1 \times d_2`` to ``(d_1 + 2) \times (d_2 + 2)``

If the filter is ``3 \times 3``, the output is ``d_1 \times d_2``
"""

# ╔═╡ 6c92c9b0-5a1c-4573-90da-6956449e9bf9
md"""
### Stride

The filter moves ``K`` step each time, ``K ≥ 1``

- Input: ``d_1 \times d_2``

- Filter: ``k_1 \times k_2``

- Stride: ``s``

- Output: ``\left(\lfloor\frac{d_1 - k_1}{s}\rfloor + 1\right) \times \left(\lfloor\frac{d_2 - k_2}{s}\rfloor + 1\right)``
"""

# ╔═╡ 968ba97d-8c10-456a-9d4e-0839e28ecac3
md"""
### Summary

Convolution

- Feature map, filter/kernel

- Zero padding

- Stride

Traditional feature extractor

- Hand-crafted filters

- A lot of expertise

- Limited filters

- (Can we learn filters automatically?)
"""

# ╔═╡ e9dd7ffc-77f8-49fb-a35a-f7c1c8940c78
md"""
### Convolutional Neural Network

Convolutional layer

$x_j^{ℓ} = f(\sum_i \text{conv}(x_i^{ℓ-1}, k_{ij}^ℓ) + b_j^ℓ)$

- ``x_j^ℓ`` is the ``j``-th feature map in the ``ℓ``-th layer

- ``k_{ij}^ℓ`` is the convolutional kernel in the ``ℓ``-th layer

Question

- How many input channels are there?

- How many output channels are there?

- How many trainable weights are there?

Pooling layer

- Reduce the dimensionality of each feature map

- Max pooling, mean pooling
"""

# ╔═╡ 57caa722-4a59-4816-944b-a68b8b377382
md"""
### Summary

CNN

- Convolutional layer

  $x_j^ℓ = f(\sum_i \text{conv}(x_i^{ℓ-1}, k_{ij}^ℓ) + b_j^ℓ)$

- Pooling layer

  - Reduce dimensionality
"""

# ╔═╡ e58fd31c-b8db-45a7-b366-e359ca8ed495
md"""
### Example

- Convolution + pooling 1

- Convolution + pooling 2

- Flatten the 20 feature maps (4×4)

- Add one fully-connected layer

- How many model parameters?
"""

# ╔═╡ 02fbbb38-b4cf-4874-8932-7dcc5de18406
md"# Lecture 21: Recurrent Neural Network"

# ╔═╡ af37f6b0-54ac-40c5-9d28-7e227317b09a
md"""
### Background

Fully-connected neural network

Convolutional neural network

Limitations of fully-connected NN and convolutional NN

- Process a paragraph as a whole

- Fixed-size input

- Fixed-size output

Sequential data?

- Review classification

- Machine translation

- Speech recognition
"""

# ╔═╡ 2bf72ab1-001f-49e2-aed7-14946d558d0a
md"""
### Recurrent Neural Network

Key idea

- An "internal state" that is updated as a sequence is processed

Process a sequence of vectors ``x`` by applying a recurrence formula at every time step:

1. Update the hidden state

2. Update the output

Forward pass

$h_t = \tanh(W_{hh} h_{t-1} + W_{xh} x_t)$

Weight sharing: same for all states
"""

# ╔═╡ 84769a4d-338f-4a49-9981-9b0b77576ed4
md"""
### Example: Sentiment Classification

Many to one

- Input: one or more sentences

- Output: positive/negative class

- E.g. "the food was really good"

- Ignore the output of the internal input
"""

# ╔═╡ 0cb17f70-03be-4937-969a-9ea7323ea900
md"""
### Example: Image Captioning

One to many

- Input: image features (from CNN)

- Output: a sentence describing the input image
"""

# ╔═╡ e297b307-7ccb-4e30-8b42-654ccc94059f
md"""
### Example: Character Prediction

Predict the next character/word
"""

# ╔═╡ 2e4cd25b-e88c-47c4-ae3d-0d36cb7369c7
md"""
### Summary

- RNN for text, speech, time series data

- Hidden state ``h_t`` stores the information in inputs ``x_0, …, x_t``
"""

# ╔═╡ b0b60b36-5e2c-435b-b070-40ce7cc0a3c7
md"""
### Long Short-Term Memory (LSTM)

Capture the long-term dependencies

Memory cell

- Store the past information

- Information can be removed or written to the memory cell by interacting with different gates

  - Forget gate

  - Input gate

Gates

- A sigmoid layer outputs number between 0 and 1, deciding how much of each component should be let through

- A pointwise multiplication operation applies the decision

Forget Gate

- Scales old memory cell value

- A sigmoid layer decides which values of the memory cell to reset

Input Gate

- A sigmoid layer decides which values of the memory cell to write to

Memory Cell Update

- Decide which values of the memory cell to reset and overwrite

Output Gate

- A sigmoid layer decides which values of the memory cell to output

Output Update

- The memory cell goes through Tanh and is multiplied by the output gate
"""

# ╔═╡ 041a5422-8f55-4d95-9a6a-de540eb2ffdf
md"""
### Next step after this course

Machine learning

- More machine learning algorithms, …

Computer vision

- Image, video related tasks, …

Natural language processing

- Language related tasks, …

Reinforcement learning

- Robotics, self-driving, …
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
StatsBase = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"

[compat]
DataFrames = "~1.5.0"
PlutoUI = "~0.7.49"
StatsBase = "~0.33.21"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "b29568f167daa4395b43f757a3ea876f311b9118"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c6d890a52d2c4d55d326439580c3b8d0875a77d9"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.7"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "844b061c104c408b24537482469400af6075aae4"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.5"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "61fdd77467a5c3ad071ef8277ac6bd6af7dd4c04"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.6.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "e8119c1a33d267e16108be441a287a6981ba1630"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.14.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "Future", "InlineStrings", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrettyTables", "Printf", "REPL", "Random", "Reexport", "SentinelArrays", "SnoopPrecompile", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "aa51303df86f8626a962fccb878430cdb0a97eee"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.5.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "9cc2baf75c6d09f9da536ddf58eb2f29dedaf461"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "49510dfcb407e572524ba94aeae2fced1f3feb0f"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.8"

[[deps.InvertedIndices]]
git-tree-sha1 = "0dc7b50b8d436461be01300fd8cd45aa0274b038"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.3.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "680e733c3a0a9cea9e935c8c2184aea6a63fa0b5"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.21"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "8175fc2b118a3755113c8e68084dc1a9e63c61ee"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eadad7b14cf046de6eb41f13c9275e5aa2711ab6"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.49"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "a6062fe4063cdafe78f4a0a81cfffb89721b30e7"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.PrettyTables]]
deps = ["Crayons", "Formatting", "LaTeXStrings", "Markdown", "Reexport", "StringManipulation", "Tables"]
git-tree-sha1 = "548793c7859e28ef026dba514752275ee871169f"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "2.2.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "77d3c4726515dca71f6d80fbb5e251088defe305"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.3.18"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "a4ada03f999bd01b3a25dcaa30b2d929fe537e00"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.0"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[deps.StringManipulation]]
git-tree-sha1 = "46da2434b41f41ac3594ee9816ce5541c6096123"
uuid = "892a3eda-7b42-436c-8928-eab12a02cf0e"
version = "0.3.0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "ac00576f90d8a259f2c9d823e91d1de3fd44d348"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─8287e1b7-4554-4f5d-bc37-55415adaf685
# ╟─4d991824-967a-11ed-2dc4-0118fb3fdac3
# ╟─005ef0e7-be1c-408b-a225-b02c91ac26d5
# ╟─db770bf9-4e5c-4ad3-b87e-a80bf241a504
# ╟─7861226d-0f95-478e-bec8-93e660fcd2bb
# ╟─6b96e4c1-fd7c-4777-ac88-d56daa84fc17
# ╟─4b568852-b481-487d-b075-3dd16e79a053
# ╟─5688b72c-2c2b-4653-99c5-5502a61b9f5c
# ╟─455f8a7c-d700-41c8-80e7-eedda6035302
# ╟─fc8a5ff8-2993-47df-9371-b7fbe21c40fb
# ╟─4c592049-d03a-4f7c-847f-badcb1ebd7ec
# ╟─57ee2c1d-67c4-4934-baf8-c32f55828eb1
# ╟─f5d9c076-e96c-4f2a-972d-66e48c6f7f12
# ╟─f87a198c-3a63-4085-80a1-6fb4c9ec3325
# ╟─09c8d472-bc1e-4fe2-b650-5e8a054eaa9a
# ╟─1d10365d-6345-470e-90ab-d1c550363676
# ╟─ffa8b4ad-dafe-403e-b701-88a734fe7a0f
# ╟─129ae27f-b150-45f0-a50b-c82eeaf9001e
# ╟─bd00ccb9-040f-485d-954f-3b8b4d201f7b
# ╟─93dd6516-737d-41f1-ac7f-d5c182cd5838
# ╟─8b4b6045-767d-4e14-94ea-28af864863e1
# ╟─7ea847d6-d5c5-483c-8fbb-0d3762f3195f
# ╟─e9a27bb5-b917-4f5a-8f12-2de7fe011d8a
# ╟─e45d1933-0d36-4d66-8f11-c60a82a2887a
# ╟─61bcef96-d4c6-44b9-b022-65039f438d55
# ╟─e4a38dc2-24c7-48e1-ab66-52b970752ae2
# ╟─e5ba5c1d-40ea-4f55-af71-3f0831f97718
# ╟─2410f506-c07d-46ee-8081-85c2af34a070
# ╟─89fb7ae6-030c-4373-b3ab-820f2a8fe190
# ╟─5ec76298-8955-42d9-aa18-4a9d9347e923
# ╟─66e651e7-6d28-4142-987e-9b4569787264
# ╟─773de639-5365-4d40-9746-80d483f44077
# ╟─13a06395-fa10-42c9-8f33-46f05ef48bbe
# ╟─e6b543ec-c54d-4338-8dce-34e7a547d37e
# ╟─34778db3-82f5-450c-b371-9513d09a33f4
# ╟─0069c9e7-cf25-4480-b872-c3718637c79f
# ╟─e97316a4-cb4b-4497-bf28-acd3c8748ca2
# ╟─2764baf9-64fc-4c67-a029-6d40cfcfd0b6
# ╟─b4dcb8bd-873c-437f-86c4-679e6c055bda
# ╟─acdbc762-2bbe-4684-b791-8b154430bbbf
# ╟─5de74fa9-ffad-47fc-b5ed-8bbc78929307
# ╟─80140595-d627-44f8-97fa-efa1b4a29c1b
# ╟─0e5e437f-0e6d-4182-9d36-60a605216cce
# ╟─334ce63b-aaad-4fe8-8fe0-5dd01349d75d
# ╟─2558a879-5a8d-4d22-8785-a3eabf8f6973
# ╟─41e6f322-6194-4bd0-a244-133e1da38cef
# ╠═8f7fbb02-0a66-4322-8db5-a938e18bae6f
# ╠═f1b0c2ef-d7f3-4601-b887-924932ce4a43
# ╟─a0f114b7-265c-4291-a600-90f338911e94
# ╟─86e1ca92-1fe2-443d-9140-7ea93f297789
# ╠═e0173040-6861-432b-841a-4a02a58a4948
# ╠═ab534622-c699-4a80-8d50-fc4214ee24fe
# ╟─9de0a52e-dfc7-432d-a4d1-aca03d485c87
# ╟─b2ee08de-8378-4b40-86f1-d76d25ef2a13
# ╟─f6c5973c-baad-4b43-a57d-85f18744a3c7
# ╟─2d375588-bdcb-4d95-8537-9873eb2a05cb
# ╟─810c2d50-5883-4f6f-a71f-f94bb371198a
# ╟─c3dfbbe9-2fce-4d96-8004-412213cb92d3
# ╟─afdf2f99-1a98-4300-9535-ff72bde0202e
# ╟─a28c3856-e77b-4aac-a9fa-05d0651748ff
# ╟─a5ebd8b5-def7-473a-91de-e53da9a9e29c
# ╟─2ff1935d-3e62-4e44-92b0-354053e5ef8d
# ╟─8416e0f7-376c-4c50-bb11-93ff16c19556
# ╟─9c06c698-83ba-4ec9-b594-b83051dd2939
# ╟─60ba0b40-8aa9-49c0-94d4-9e20a9414c3c
# ╟─7bd6c370-0550-4781-9a82-895eb5f9f758
# ╟─96775b34-5231-4bcb-b960-c5537ddeba3b
# ╟─6c097b30-6db5-4a26-987e-043ca2c86067
# ╟─5187e6ba-4b36-41c8-bed1-98f7e043ad71
# ╟─1ceb09ea-3c6e-42dd-8620-df3c3368993d
# ╟─440c2f7d-b2a7-482b-8a2b-c1889ab2e8db
# ╟─d8bb574a-363a-4e2b-a21f-6e76b014c233
# ╟─a63d7053-90e6-48ff-ac09-0d979725b873
# ╟─a71c2604-6d13-4512-b89b-f2834df72bbf
# ╟─f7c55f4a-38a4-4d8c-b1c1-604c7961a626
# ╟─ae7444bd-cc2e-4767-8e62-b51654c1d702
# ╟─63155765-ab26-4d9a-a135-3356e7db48f4
# ╟─66885a5b-a5a0-4001-a6db-5c70a659da1f
# ╟─8914a1b8-a7ad-4cab-ad8e-19ee098c37af
# ╟─225459ab-388e-4e7a-be39-7abc31ef8e09
# ╟─70039786-4279-48cf-9d02-ea71b365a57e
# ╟─e4036a55-5291-4618-8c5b-8e3877a24924
# ╟─924e3a51-0c34-41ce-8fc2-bc18fef29f1b
# ╟─da4ce35a-5749-4ca6-9c9d-f9edf09d3650
# ╟─c2d289eb-b44c-4c48-b78c-017f1ec49882
# ╟─c41054f9-7bd9-4c5a-83c2-3573f10de487
# ╟─eb4ddce7-e35a-4bf8-a65c-758937fcda4d
# ╟─fb4eaa0a-23d3-4a89-b85b-2a6fa5df3564
# ╟─05ca1c2c-e9c9-448b-8188-84a4bdf5555b
# ╟─5e54f91f-c11a-4c53-983f-fc228cb4d95e
# ╟─cc1d7364-961c-44f9-8d73-2442b6379b4c
# ╟─e4cc84d1-ffaa-4317-ae19-fde7a381ee66
# ╟─cc31c5d6-0b00-46e3-8d43-eb5884edbb7c
# ╟─ba552f6c-a7e2-4088-9b3d-45a0bc7c51c6
# ╟─266c6d7d-2443-4c48-a5a5-503807a5f431
# ╟─6dd4277d-9184-4b34-b076-4ca113f04377
# ╟─3b865306-2869-4f25-875c-26a96a94e13c
# ╟─89171a81-fe37-4dfa-ba84-0668b8cc2f86
# ╟─f9da2eaa-86c9-4b5a-aff4-d94f59a261f3
# ╟─ad8403bf-c174-4a19-b810-fd64c3e473ee
# ╟─ac2417e4-3d6b-4d33-99a9-cd6c31d474b8
# ╟─2d723d1d-6663-4a58-9928-3b803056adf1
# ╟─573df2c7-3514-40b6-9576-8291107a9c0e
# ╟─6328126c-edfe-4573-bb9c-698446219a3d
# ╟─17f49040-d1d4-446b-bef0-e00aa5b4b4a8
# ╟─7cc78411-91e4-475b-882b-4656e56c940f
# ╟─ed38d3c1-586d-4c46-bec7-5aefa1863d4e
# ╟─e42b1ad9-da5f-4c67-9439-b6dfd86b64d5
# ╟─992cd1dc-3325-42ce-a7e8-558892d9469d
# ╟─5f43ebba-b0be-495b-b41d-063ef6e8a11e
# ╟─464f1cc0-cbd4-49cc-9fae-da20b04cf6d6
# ╟─330c5de2-40f8-4c33-acd5-489e96aa661b
# ╟─0ec3c9bb-7b1e-4109-b961-65eb85cff9b9
# ╟─e17600f6-9db9-4c75-be07-f558511d9af9
# ╟─601dd6df-3da9-49d6-94c1-91a6cb7f3128
# ╟─992b0568-b15d-490e-9c0b-0e0244941451
# ╟─356f7237-b2f7-496f-88c5-f290115ee687
# ╟─a4cd42ad-b95a-4c9d-a645-8b24dbea997a
# ╟─c9a498d3-42c2-4219-b579-11a6434d03be
# ╟─67d5e941-7ca2-4d2b-a908-c3b6175cfc1a
# ╟─66a598cc-9ca2-4fe9-a5f5-577c7ea19367
# ╟─f27ef784-d59f-4438-8c92-867772d22769
# ╟─6c6f3b42-49b9-4eb4-90f4-cd12e9258103
# ╟─bb77b3cc-91bb-4482-9ddf-453599c365c7
# ╟─0f02f6bc-a313-4c69-ba02-0b673306f590
# ╟─ddd44546-9ac0-4be4-ac85-0c24aa359943
# ╟─4539234b-7342-434a-bcf2-14b8f793a0f1
# ╟─5fcc806b-be9a-40e5-bd18-daf0be4aaa0a
# ╟─a252c25f-c872-4e23-ab10-0e285c3ad944
# ╟─a88b072a-ffa3-466b-b460-8f16f2498569
# ╟─4ccec25f-e381-4f2f-a1b4-72b51e550e16
# ╟─ecc83cc1-cea9-4117-bac4-19588b86fcb7
# ╟─b2d8fc5c-1979-492a-97b7-7a59534a1297
# ╟─17e76797-39b0-45b6-b8e1-7d86603a53ff
# ╠═87b2d14c-f50f-494f-8785-051cbbba8ff2
# ╠═e613c01f-9ef2-41b2-9c09-d75533d1889f
# ╟─4f181c54-c969-41f0-8467-5f15f1c1d1ce
# ╟─4f9a05db-4158-4ca3-a160-81aaec82120d
# ╟─d862560e-3517-457f-8030-9fa073700dfc
# ╟─8ea3aa00-7e17-429a-a39a-efac0d54773b
# ╟─06bfffa5-7572-4861-bee5-fbfb4646db16
# ╟─78ba0a46-c48a-49bc-bc8b-2b738059786f
# ╟─f02ff524-de22-4a69-962d-5e0bd601f319
# ╟─7bc9c66a-9dd5-46ac-ae48-69266c063e49
# ╟─d9382e8b-64d6-4e96-9103-8976f64a6b4f
# ╟─16c62e22-a4a9-4468-be7c-b99cb5957eb5
# ╟─ec3b0f1c-c543-4f2c-bdbb-26b025bda62b
# ╟─a60d529e-ebab-4f7c-9898-5c7b5a41a37c
# ╟─8bd15be4-38b4-424d-83d2-e680636ab22f
# ╟─bf5f870a-af9f-4cef-9c04-9d7b9fc9e9d2
# ╟─c63094d6-e807-498b-a250-30901f3a5a3c
# ╟─d410d493-0f3c-4065-bbce-362d28f3d029
# ╟─a898efe5-8fbc-401c-9999-f54bd688dddc
# ╟─a41a1929-d45a-4320-99ae-214b8b0f3ec0
# ╟─cb61fc58-89cb-4c5c-a1fb-85bbbd9ba249
# ╟─b21ba9b7-3094-4bc9-9662-9b04b224cf80
# ╟─21783d97-562b-4879-a40c-6903988f7aba
# ╟─4302fe12-6626-43fa-a8d4-2f0da3a17246
# ╟─a8922d9a-ea30-4ee4-84b3-ee617a77fa14
# ╟─2594439d-8c60-4070-9967-4d2e6f9b46c2
# ╟─452f33c5-7217-42c4-85e7-882613524946
# ╟─8c3543db-3f30-476f-ab12-9b90a31f2271
# ╟─8ef87a4b-acb8-4a40-ba0a-69ee9b2f136a
# ╟─3049eefa-9eed-47bd-a06e-b40dee6c72c7
# ╟─0f865602-aacf-46be-b158-3cf641038c9a
# ╟─ac3ba967-7a41-4d3b-bae3-6d8ee8f94e48
# ╟─1a2173b5-5047-4436-ad57-cd9568748d13
# ╟─7fd48de6-241a-4d56-a070-009963a2cae1
# ╟─d98d1cf5-ac75-48c8-bbf7-8c848e31f69a
# ╟─952d8319-40c3-44c6-9355-998a00678641
# ╟─b6b8fd4f-fe8e-4cf8-9e01-c2e737f4c25b
# ╟─cfc55134-7b7b-4c15-bb4f-b183b0bbcf73
# ╟─084a3957-3b0f-4763-a6e2-1fd015845472
# ╟─41b3ad3b-55b5-4669-bafa-f45364a79bcf
# ╟─75833e7c-56f2-4b8a-9626-f63794bbcfd8
# ╟─8ca6f6d4-e0de-404b-84fb-2b51af386a69
# ╟─92c6580d-a6d3-410a-83bd-d1be0d4b156c
# ╟─91fb93da-2948-4d21-bc95-3fe665ba984b
# ╟─54d0d37f-87dd-4985-b50b-bfd4a4fc9ee9
# ╟─c0f029dd-a4b2-4b01-874b-fde2dcf5fa96
# ╟─226e3ec8-1721-4068-baf1-db98a30ef2b1
# ╟─9b82a8c8-d9d7-4cf3-ad21-b0550714adf1
# ╟─5f5c701d-68ea-4d38-87bd-1d689f8f73ed
# ╟─c1598a27-2519-4ed5-96fa-bfa0b1a1d0ee
# ╟─7509452e-1772-4299-b85e-1bc109a9f2aa
# ╟─c3e0bc7a-7d2d-430d-924b-9639d38104a0
# ╟─6c92c9b0-5a1c-4573-90da-6956449e9bf9
# ╟─968ba97d-8c10-456a-9d4e-0839e28ecac3
# ╟─e9dd7ffc-77f8-49fb-a35a-f7c1c8940c78
# ╟─57caa722-4a59-4816-944b-a68b8b377382
# ╟─e58fd31c-b8db-45a7-b366-e359ca8ed495
# ╟─02fbbb38-b4cf-4874-8932-7dcc5de18406
# ╟─af37f6b0-54ac-40c5-9d28-7e227317b09a
# ╟─2bf72ab1-001f-49e2-aed7-14946d558d0a
# ╟─84769a4d-338f-4a49-9981-9b0b77576ed4
# ╟─0cb17f70-03be-4937-969a-9ea7323ea900
# ╟─e297b307-7ccb-4e30-8b42-654ccc94059f
# ╟─2e4cd25b-e88c-47c4-ae3d-0d36cb7369c7
# ╟─b0b60b36-5e2c-435b-b070-40ce7cc0a3c7
# ╟─041a5422-8f55-4d95-9a6a-de540eb2ffdf
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
