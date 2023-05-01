### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ 9efd3980-9874-477f-b1bb-82a19974cb7a
begin
	using PlutoUI
	PlutoUI.TableOfContents()
end

# ╔═╡ b12f0652-9678-11ed-2040-dbd8414b5861
md"""
# Practical Statistics for Data Scientists: 50+ Essential Concepts Using R and Python

by Peter Bruce, Andrew Bruce & Peter Gedeck

2020
"""

# ╔═╡ c6ed18ba-d0d6-418d-9e6a-97afea631601
md"# Preface"

# ╔═╡ d3938a30-a975-451a-a54b-f0502bd49f6d
md"""
**Remark.**
This book is aimed at the data scientist with some familiarity with the *R* and/or *Python* programming languages, and with some prior (perhaps spotty or ephemeral) exposure to statistics.
Two of the authors came to the world of data science from the world of statistics, and have some appreciation of the contribution that statistics can make to the art of data science.
At the same time, we are well aware of the limitations of traditional statistics instruction: statistics as a discipline is a century and a half old, and most statistics textbooks and courses are laden with the momentum and inertia of an ocean liner.
All the methods in this book have some connection--historical or methodological--to the discipline of statistics.
Method that evolved mainly out of computer science, such as neural nets, are not included.
"""

# ╔═╡ 7b83a5da-89d4-4631-bce2-71b5fced2738
md"""
**Remark.**
Two goals underlie this book:

- To lay out, in digestible, navigable, and easily referenced form, key concepts from statistics that are relevant to data science.

- To explain which concepts are important and useful from a data science perspective, which are less so, and why.
"""

# ╔═╡ 8369411c-bb8e-4ea4-a953-95a3046d0f28
md"# 1. Exploratory Data Analysis"

# ╔═╡ 22201de0-b0e6-4f75-92bb-3cb93a33bb02
md"""
**Remark.**
This chapter focuses on the first step in any data science project: exploring the data.
"""

# ╔═╡ 74c3cc2c-2ff5-4bda-a813-578d50325584
md"""
**Remark.**
Classical statistics focused almost exclusively on *inference*, a sometimes complex set of procedures for drawing conclusions about large populations based on small samples.
In 1962, John W. Tukey (Figure 1-1) called for a reformation of statistics in his seminal paper, "The Future of Data Analysis" [Tukey-1962].
He proposed a new scientific discipline called *data analysis* that included statistical inference as just one component.
Tukey forged links to the engineering and computer science communities (he coined the terms *bit*, short for binary digit, and *software*), and his original tenets are surprisingly durable and form part of the foundation for data science.
The field of exploratory data analysis was established with Tukey's 1977 now-classic book *Exploratory Data Analysis* [Tukey-1977].
Tukey presented simple plots (e.g., boxplots, scatterplots) that, along with summary statistics (mean, median, quantiles, etc.), help paint a picture of a data set.
"""

# ╔═╡ ba2784ac-55ab-4b4e-b79a-7156a73bc9dc
md"""
**Remark.**
With the ready availability of computing power and expressive data analysis software, exploratory data analysis has evolved well beyond its original scope.
Key drivers of this discipline have been the rapid development of new technology, access to more and bigger data, and the greater use of quantitative analysis in a variety of disciplines.
David Donoho, professor of statistics at Stanford University and former undergraduate student of Tukey's, authored an excellent article based on his presentation at the Tukey Centennial workshop in Princeton, New Jersey [Donoho-2015].
Donoho traces the genesis of data science back to Tukey's pioneering work in data analysis.
"""

# ╔═╡ 803e630b-64aa-44d3-bc2f-05b2ed236dd8
md"## Elements of Structured Data"

# ╔═╡ 45e0cacb-3632-4d47-8858-8c3965418f39
md"""
**Remark.**
Data comes from many sources: sensor measurements, events, text, images, and videos.
The *Internet of Things* (IoT) is spewing out streams of information.
Much of this data is unstructured: images are a collection of pixels, with each pixel containing RGB (red, green, blue) color information.
Texts are sequences of words and nonword characters, often organized by sections, subsections, and so on.
Clickstreams are sequences of actions by a user interacting with an app or a web page.
In fact, a major challenge of data science is to harness this torrent of raw data into actionable information.
To apply the statistical concepts covered in this book, unstructured raw data must be processed and manipulated into a structured form.
One of the commonest forms of structured data is a table with rows and columns--as data might emerge from a relational database or be collected for a study.
"""

# ╔═╡ 31c94f3c-ceff-4cf7-b434-04ada25ac3f5
md"""
**Remark.**
There are two basic types of structured data: numeric and categorical.
Numeric data comes in two forms: *continuous*, such as wind speed or time duration, and *discrete*, such as the count of the occurrence of an event.
*Categorical* data takes only a fixed set of values, such as a type of TV screen (plasma, LCD, LED, etc.) or a state name (Alabama, Alaska, etc.).
*Binary* data is an important special case of categorical data that takes on only one of two values, such as 0/1, yes/no, or true/false.
Another useful type of categorical data is *ordinal* data in which the categories are ordered; an example of this is a numerical rating (1, 2, 3, 4, or 5).
"""

# ╔═╡ 5f079caf-2516-4588-a70e-7c36be7587f1
md"""
**Remark.**
Why do we bother with a taxonomy of data types?
It turns out that for the purposes of data analysis and predictive modeling, the data type is important to help determine the type of visual display, data analysis, or statistical model.
In fact, data science software, such as *R* and *Python*, uses these data types to improve computational performance.
More important, the data type for a variable determines how software will handle computations for that variable.
"""

# ╔═╡ cffe1d0a-a8c0-4cee-91c7-9051708f291b
md"""
**Key Terms for Data Types.**

- **Numeric**:
  Data that are expressed on a numeric scale.

  - **Continuous**:
    Data that can take on any value in an interval.
    (*Synonyms*: interval, float, numeric)

  - **Discrete**:
    Data that can take on only integer values, such as counts.
    (*Synonyms*: integer, count)

- **Categorical**:
  Data that can take on only a specific set of values representing a set of possible categories.
  (*Synonyms*: enums, enumerated, factors, nominal)

  - **Binary**:
    A special case of categorical data with just two categories of values, e.g., 0/1, true/false.
    (*Synonyms*: dichotomous, logical, indicator, boolean)

  - **Ordinal**:
    Categorical data that has an explicit ordering.
    (*Synonym*: ordered factor)
"""

# ╔═╡ 1667b647-86ee-4f1f-9b5d-d8309103c9a2
md"""
**Remark.**
Software engineers and database programmers may wonder why we even need the notion of *categorical* and *ordinal* data for analytics.
After all, categories are merely a collection of text (or numeric) values, and the underlying database automatically handles the internal representation.
However, explicit identification of data as categorical, as distinct from text, does offer some advantages:

- Knowing that data is categorical can act as a signal telling software how statistical procedures, such as producing a chart or fitting a model, should behave.
  In particular, ordinal data can be represented as an `ordered.factor` in *R*, preserving a user-specified ordering in charts, tables, and models.
  In *Python*, `scikit-learn` supports ordinal data with the `sklearn.preprocessing.OrdinalEncoder`.

- Storage and indexing can be optimized (as in a relational database).

- The possible values a given categorical variable can take are enforced in the software (like an enum).
"""

# ╔═╡ ec00bd17-8cf9-4850-8aeb-a9cf14ab30d5
md"""
**Remark.**
The third "benefit" can lead to unintended or unexpected behavior: the default behavior of data import functions in *R* (e.g., `read.csv`) is to automatically convert a text column into a `factor`.
Subsequent operations on that column will assume that the only allowable values for that column are the ones originally imported, and assigning a new text value will introduce a warning and produce an `NA` (missing value).
The `pandas` package in *Python* will not make such a conversion automatically.
However, you can specify a column as categorical explicitly in the `read_csv` function.
"""

# ╔═╡ 5c5cceb5-c61c-4800-aa10-9f309fd25def
md"### Further Reading"

# ╔═╡ 3b6bc05b-346d-4bd5-929b-a93fdd9d909b
md"""
**Remark.**

- The [`pandas` documentation](https://pandas.pydata.org/docs/user_guide/basics.html#dtypes) describes the different data types and how they can be manipulated in *Python*.

- Data types can be confusing, since types may overlap, and the taxonomy in one software may differ from that in another.
  The [R Tutorial website](https://www.r-tutor.com/r-introduction/basic-data-types) covers the taxonomy for *R*.
  The [`pandas` documentation](https://pandas.pydata.org/docs/user_guide/basics.html#dtypes) describes the different data types and how they can be manipulated in *Python*.

- Databases are more detailed in their classification of data types, incorporating considerations of precision levels, fixed- or variable-length fields, and more; see the [W3Schools guide to SQL](https://www.w3schools.com/sql/sql_datatypes.asp).
"""

# ╔═╡ c2052cb5-1bbf-477c-875c-2c65c541e6d4
md"## Rectangular Data"

# ╔═╡ fc1d2489-0d65-4057-971d-541e16e8b637
md"""
**Remark.**
The typical frame of reference for an analysis in data science is a *rectangular data* object, like a spreadsheet or database table.
"""

# ╔═╡ dd0e7edb-4ea2-4e65-ba09-f90a37d85824
md"""
**Remark.**
*Rectangular data* is the general term for a two-dimensional matrix with rows indicating records (cases) and columns indicating features (variables); *data frame* is the specific format in *R* and *Python*.
The data doesn't always start in this form: unstructured data (e.g., text) must be processed and manipulated so that it can be represented as a set of features in the rectangular data (see "Elements of Structured Data" on page 2).
Data in relational databases must be extracted and put into a single table for most data analysis and modeling tasks.
"""

# ╔═╡ e1386164-af5e-46e8-a172-f017126d560f
md"""
**Key Terms for Rectangular Data.**

- **Data frame**:
  Rectangular data (like a spreadsheet) is the basic data structure for statistical and machine learning models.

- **Feature**:
  A column within a table is commonly referred to as a *feature*.

  - *Synonyms*:
    attribute, input, predictor, variable

- **Outcome**:
  Many data science projects involve predictin an *outcome*--often a yes/no outcome (in Table 1-1, it is "auction was competitive or not").
  The *features* are sometimes used to predct the *outcome* in an experiment or a study.

  - *Synonyms*:
    dependent variable, response, target, output

- **Records**:
  A row within a table is commonly referred to as a *record*.

  - *Synonyms*:
    case, example, instance, observation, pattern, sample
"""

# ╔═╡ 0def5956-b1f2-4db2-9776-410147553f85
md"""
**Table 1-1.** *A typical data frame format*

| Category | currency | sellerRating | Duration | endDay | ClosePrice | OpenPrice | Competitive? |
|---|---|---|---|---|---|---|---|
| Music/Movie/Game | US | 3249 | 5 | Mon | 0.01 | 0.01 | 0 |
| Music/Movie/Game | US | 3249 | 5 | Mon | 0.01 | 0.01 | 0 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 0 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 0 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 0 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 0 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 1 |
| Automotive | US | 3115 | 7 | Tue | 0.01 | 0.01 | 1 |
"""

# ╔═╡ 3422f3e2-0625-41cd-9747-49bb55d94332
md"""
**Remark.**
In Table 1-1, there is a mix of measured or counted data (e.g., duration and price) and categorical data (e.g., category and currency).
As mentioned earlier, a special form of categorical variable is a binary (yes/no or 0/1) variable, seen in the rightmost column in Table 1-1--an indicator variable showing whether an auction was competitive (had multiple bidders) or not.
This indicator variable also happens to be an *outcome* variable, when the scenario is to predict whether an auction is competitive or not.
"""

# ╔═╡ 29ad07a2-b179-47ea-bc60-43ba22afe2ce
md"### Data Frames and Indexes"

# ╔═╡ d0c9db5b-d990-454c-8113-f6420dd2902a
md"""
**Remark.**
Traditional database tables have one or more columns designated as an index, essentially a row number.
This can vastly improve the efficiency of certain database queries.
In *Python*, with the `pandas` library, the basic rectangular data structure is a `DataFrame` object.
By default, an automatic integer index is created for a `DataFrame` based on the order of the rows.
In `pandas`, it is also possible to set multilevel/hierarchical indexes to improve the efficiency of certain operations.
"""

# ╔═╡ 3756761a-2b3a-41ed-b67d-f399b81cf4d1
md"""
**Remark.**
In *R*, the basic rectangular data structure is a `data.frame` object.
A `data.frame` also has an implicit integer index based on the row order.
The native *R* `data.frame` does not support user-specified or multilevel indexes, though a custom key can be created through the `row.names` attribute.
To overcome this deficiency, two new packages are gaining widespread use: `data.table` and `dplyr`.
Both support multilevel indexes and offer significant speedups in working with a `data.frame`.
"""

# ╔═╡ ae3497de-e8e2-4887-b2b8-ea7ba9dcdcbd
md"""
!!! warning "Terminology Differences"

    Terminology for rectangular data can be confusing.
    Statisticians and data scientists use different terms for the same thing.
    For a statistician, *predictor variables* are used in a model to predict a *response* or *dependent variable*.
    For a data scientist, *features* are used to predict a *target*.
    One synonym is particularly confusing: computer scientists will use the term *sample* for a single row; a *sample* to a statistician means a collection of rows.
"""

# ╔═╡ ccdec074-262c-42ae-a83a-eb3514ef5930
md"### Nonrectangular Data Structures"

# ╔═╡ 6f693a6c-7d7f-4a01-9aef-3a6dc002db9b
md"""
**Remark.**
There are other data structures besides rectangular data.
"""

# ╔═╡ 579944b7-f5f6-4aad-9beb-5f620b5d1521
md"""
**Remark.**
Time series data records successive measurements of the same variable.
It is the raw material for statistical forecasting methods, and it is also a key component of the data produced by devices--the Internet of Things.
"""

# ╔═╡ 00f70ad7-df26-411c-bbfa-9a951a85cf17
md"""
**Remark.**
Spatial data structure, which are used in mapping and location analytics, are more complex and varied than rectangular data structures.
In the *object* representation, the focus of the data is an object (e.g., a house) and its spatial coordinates.
The *field* view, by contrast, focuses on small units of space and the value of a relevant metric (pixel brightness, for example).
"""

# ╔═╡ 173f8a1e-b156-4253-a31e-5b0d487b3d92
md"""
**Remark.**
Graph (or network) data structures are used to represent physical, social, and abstract relationships.
For example, a graph of a social network, such as Facebook or LinkedIn, may represent connections between people on the network.
Distribution hubs connected by roads are an example of a physical network.
Graph structures are useful for certain types of problems, such as network optimization and recommender systems.
"""

# ╔═╡ c86aa1f5-0c0c-4fa3-b453-1641640b76f5
md"""
**Remark.**
Each of these data types has its specialized methodology in data science.
The focus of this book is on rectangular data, the fundamental building block of predictive modeling.
"""

# ╔═╡ 3d7cbe3b-ffe2-4295-8949-bb4a6dd0eb4c
md"""
!!! warning "Graphs in Statistics"

    In computer science and information technology, the term *graph* typically refers to a depiction of the connections among entities, and to the underlying data structure.
    In statistics, *graph* is used to refer to a variety of plots and *visualizations*, not just of connections among entities, and the term applies only to the visualization, not to the data structure.
"""

# ╔═╡ fbacdd91-ce89-4837-97f9-5a632f2910de
md"""
**Key Ideas.**

- The basic data structure in data science is a rectangular matrix in which rows are records and columns are variables (features).

- Terminology can be confusing; there are a variety of synonyms arising from different disciplines that contribute to data science (statistics, computer science, and information technology).
"""

# ╔═╡ 04b75eda-a4f4-49b6-83f3-f6e202ba8865
md"""
### Further Reading

- [Documentation on data frames in *R*](https://stat.ethz.ch/R-manual/R-devel/library/base/html/data.frame.html)

- [Documentation on data frames in *Python*](https://pandas.pydata.org/pandas-docs/stable/user_guide/dsintro.html)
"""

# ╔═╡ 7244d2e2-07fb-4e0e-8e26-14bac120fce3
md"## Estimates of Location"

# ╔═╡ 7dbddf22-d184-44ea-83f6-71d60d2eb6f1
md"""
**Remark.**
Variables with measured or count data might have thousands of distinct values.
A basic step in exploring your data is getting a "typical value" for each feature (variable): an estimate of where most of the data is located (i.e., its central tendency).
"""

# ╔═╡ c921195a-736f-47b1-9126-5f9e2401be6e
md"""
**Key Terms for Estimates of Location.**

- **Mean**:
  The sum of all values divided by the number of values.

  - *Synoynm*:
    average

- **Weighted mean**:
  The sum of all values times a weight divided by the sum of the weights.

  - *Synonym*:
    weighted average

- **Median**:
  The value such that one-half of the data lies above and below.

  - *Synonym*:
    50th percentile

- **Percentile**:
  The value such that ``P`` percent of the data lies below.

  - *Synonym*:
    quantile

- **Weighted median**:
  The value such that one-half of the sum of the weights lies above and below the sorted data.

- **Trimmed mean**:
  The average of all values after dropping a fixed number of extreme values.

  - *Synonym*:
    truncated mean

- **Robust**:
  Not sensitive to extreme values.

  - *Synonym*:
    resistant

- **Outlier**:
  A data value that is very different from most of the data.

  - *Synonym*:
    extreme value
"""

# ╔═╡ e4666ea9-b6ba-4aca-8e68-36171731f30e
md"""
**Remark.**
At first glance, summarizing data might seem fairly trivial: just take the *mean* of the data.
In fact, while the mean is easy to compute and expedient to use, it may not always be the best measure for a central value.
For this reason, statisticians have developed and promoted several alternative estimates to the mean.
"""

# ╔═╡ 3b052394-e539-429b-b83d-830710a631e0
md"""
!!! note "Metrics and Estimates"

    Statisticians often use the term *estimate* for a value calculated from the data at hand, to draw a distinction between what we see from the data and the theoretical true or exact state of affairs.
    Data scientists and business analysts are more likely to refer to such a value as a *metric*.
    The difference reflects the approach of statistics versus that of data science: accounting for uncertainty lies at the heart of the discipline of statistics, whereas concrete business or organizational objectives are the focus of data science.
    Hence, statisticians estimate, and data scientists measure.
"""

# ╔═╡ fa6f6a17-3f3d-4552-92f2-a12b52582331
md"### Mean"

# ╔═╡ 5a890aef-0f94-46f0-8780-1febe7252950
md"""
**Remark.**
The most basic estimate of location is the mean, or *average* value.
The mean is the sum of all values divided by the number of values.
Consider the following set of numbers: ``\{3 \; 5 \; 1 \; 2\}``.
The mean is ``(3 + 5 + 1 + 2) / 4 = 11 / 4 = 2.75``.
You will encounter the symbol ``\bar{x}`` (pronounced "x-bar") being used to represent the mean of a sample from a population.
The formula to compute the mean for a set of ``n`` values ``x_1, x_2, …, x_n`` is:

$\text{Mean} = \bar{x} = \frac{\sum_{i=1}^n x_i}{n}$
"""

# ╔═╡ 90cc57c8-6e41-4d9e-877d-2fe599043514
md"""
!!! note

    ``N`` (or ``n``) refers to the total number of records or observations.
    In statistics it is capitalized if it is referring a population, and lowercase if it refers to a sample from a population.
    In data science, that distinction is not vital, so you may see it both ways.
"""

# ╔═╡ 365bab30-0bec-4bff-b099-baf1c33ba426
md"""
**Remark.**
A variation of the mean is a *trimmed mean*, which you calculate by dropping a fixed number of sorted valeus at each end and then taking an average of the remaining values.
Representing the sorted values by ``x_{(1)}, x_{(2)}, …, x_{(n)}`` where ``x_{(1)}`` is the smallest value and ``x_{(n)}`` the largest, the formula to compute the trimmed mean with ``p`` smallest and largest values omitted is

$\text{Trimmed mean} = \bar{x} = \frac{\sum_{i = p + 1}^{n - p} x_{(i)}}{n - 2p}$
"""

# ╔═╡ 39703642-b128-4604-8db5-06cd36f13ab0
md"""
**Remark.**
A trimmed mean eliminates the influence of extreme values.
For example, in international diving the top score and bottom score from five judges are dropped, and [the final score is the average of the scores from the three remaining judges](https://en.wikipedia.org/wiki/Diving_(sport)#Scoring_the_dive).
This makes it difficult for a single judge to manipulate the score, perhaps to favor their country's contestant.
Trimmed means are widely used, and in many cases are preferable to using the ordinary mean--see "Median and Robust Estimates" on page 10 for further discussion.
"""

# ╔═╡ 82e6efb3-4828-418c-81d6-f8f3a9148f4f
md"""
**Remark.**
Another type of mean is a *weighted mean*, which you calculate by multiplying each data value ``x_i`` by a user-specified weight ``w_i`` and dividing their sum by the sum of the weights.
The formula for a weighted mean is:

$\text{Weighted mean} = \bar{x}_w = \frac{\sum_{i=1}^n w_i x_i}{\sum_{i=1}^n w_i}$
"""

# ╔═╡ cc9f5ba0-e07f-4c42-86ce-3f7cb24811b6
md"""
**Remark.**
There are two main motivations for using a weighted mean:

- Some values are intrinsically more variable than others, and highly variable observations are given a lower weight.
  For example, if we are taking the average from multiple sensors and one of the sensors is less accurate, then we might downweight the data from that sensor.

- The data collected does not equally represent the different groups that we are interested in measuring.
  For example, because of the way an online experiment was conducted, we may not have a set of data that accurately reflects all groups in the user base.
  To correct that, we can give a higher weight to the values from the groups that were underrepresented.
"""

# ╔═╡ c203c265-1b22-4f2c-aa5e-f1f83a439ec6
md"### Median and Robust Estimates"

# ╔═╡ f00dd0e7-f364-46b6-b970-3e5d043792ac
md"""
**Remark.**
The *median* is the middle number on a sorted list of the data.
If there is an even number of data values, the middle value is one that is not actually in the data set, but rather the average of the two values that divide the sorted data into upper and lower halves.
Compared to the mean, which uses all observations, the median depends only on the values in the center of the sorted data.
While this might seem to be a disadvantage, since the mean is much more sensitive to the data, there are many instances in which the median is a better metric for location.
Let's say we want to look at typical household incomes in neighborhoods around Lake Washington in Seattle.
In comparing the Medina neighborhood to the Windermere neighborhood, using the mean would produce very different results because Bill Gates lives in Medina.
If we use the median, it won't matter how rich Bill Gates is--the position of the middle observation will remain the same.
"""

# ╔═╡ 2664dad8-1759-4054-8890-fa21c7740478
md"""
**Remark.**
For the same reasons that one uses a weighted mean, it is also possible to compute a *weighted median*.
As with the median, we first sort the data, although each data value has an associated weight.
Instead of the middle number, the weighted median is a value such that the sum of the weights is equal for the lower and upper halves of the sorted list.
Like the median, the weighted median is robust to outliers.
"""

# ╔═╡ 9b9a44b1-f302-462d-b581-dd0e7ff1857f
md"#### Outliers"

# ╔═╡ 34965e8d-5890-47c5-8f1d-395cfdd1ba50
md"""
**Remark.**
The median is referred to as a *robust* estimate of location since it is not influenced by *outliers* (extreme cases) that could skew the results.
An outlier is any value that is very distant from the other values in a data set.
The exact definition of an outlier is somewhat subjective, although certain conventions are used in various data summaries and plots (see "Percentiles and Boxplots" on page 20).
Being an outlier in itself does not make a data value invalid or erroneous (as in the previous example with Bill Gates).
Still, outliers are often the result of data errors such as mixing data of different units (kilometers versus meters) or bad readings from a sensor.
When outliers are the result of bad data, the mean will result in a poor estimate of location, while the median will still be valid.
In any case, outliers should be identified and are usually worthy of further investigation.
"""

# ╔═╡ 9cd69c46-34cc-4426-85f1-cd9aaf22864d
md"""
!!! note "Anomaly Detection"

    In contrast to typical data analysis, where outliers are sometimes informative and sometimes a nuisance, in *anomaly detection* the points of interest are the outliers, and the greater mass of data serves primarily to define the "normal" against which anomalies are measured.
"""

# ╔═╡ 96796a8a-e6f7-475f-927f-d5b4b8be390b
md"""
**Remark.**
The median is not the only robust estimate of location.
In fact, a trimmed mean is widely used to avoid the influence of outliers.
For example, trimming the bottom and top 10% (a common choice) of the data will provide protection against outliers in all but the smallest data sets.
The trimmed mean can be thought of as a compromise between the median and the mean: it is robust to extreme values in the data, but uses more data to calculate the estimate for location.
"""

# ╔═╡ 16d00fcb-3464-4aa0-af59-bf2e589625bd
md"""
!!! tip "Other Robust Metrics for Location"

    Statisticians have developed a plethora of other estimators for location, primarily with the goal of developing an estimator more robust than the mean and also more efficient (i.e., better able to discern small location differences between data sets).
    While these methods are potentially useful for small data sets, they are not likely to provide added benefit for large or even moderately sized data sets.
"""

# ╔═╡ 06383d30-ad08-48f6-9db2-98bc712806a8
md"### Example: Location Estimates of Population and Murder Rates"

# ╔═╡ 17922b38-0c9a-4592-9c72-b75766870d95
md"""
**Remark.**
Table 1-2 shows the first few rows in the data set containing population and murder rates (in units of murders per 100,000 people per year) for each US state (2010 Census).
"""

# ╔═╡ 94348cea-55c7-47cc-bf5a-a04c2630a631
md"""
**Table 1-2.** *A few rows of the `data.frame` state of population and murder rate by state*

|   | State | Population | Murder rate | Abbreviation |
|---|-------|------------|-------------|--------------|
| 1 | Alabama | 4,779,736 | 5.7 | AL |
| 2 | Alaska | 710,231 | 5.6 | AK |
| 3 | Arizona | 6,392,017 | 4.7 | AZ |
| 4 | Arkansas | 2,915,918 | 5.6 | AR |
| 5 | California | 37,253,956 | 4.4 | CA |
| 6 | Colorado | 5,029,196 | 2.8 | CO |
| 7 | Connecticut | 3,574,097 | 2.4 | CT |
| 8 | Delaware | 897,934 | 5.8 | DE |
"""

# ╔═╡ 1b0ab355-704e-432c-961f-1d808444a7a1
md"""
**Remark.**
Compute the mean, trimmed mean, and median for the population using *R*:

```r
> state <- read.csv('state.csv')
> mean(state[['Population']])
[1] 6162876
> mean(state[['Population']], trim=0.1)
[1] 4783697
> median(state[['Population']])
[1] 4436370
```

To compute mean and median in *Python* we can use the `pandas` methods of the data frame.
The trimmed mean requiers the `trim_mean` function in `scipy.stats`:

```python
state = pd.read_csv('state.csv')
state['Population'].mean()
trim_mean(state['Population'], 0.1)
state['Population'].median()
```

The mean is bigger than the trimmed mean, which is bigger than the median.
"""

# ╔═╡ a88ee64c-ce5d-46a9-b103-a519437066a8
md"""
**Remark.**
This is because the trimmed mean excludes the largest and smallest five states (`trim=0.1` drops 10% from each end).
If we want to compute the average murder rate for the country, we need to use a weighted mean or median to account for different populations in the states.
Since base *R* doesn't have a function for weighted median, we need to install a package such as `matrixStats`:

```r
> weighted.mean(state[['Murder.Rate']], w=state[['Population']])
[1] 4.445834
> library('matrixStats')
> weightedMean(state[['Murder.Rate']], w=state[['Population']])
[1] 4.4
```

Weighted mean is available with `NumPy`.
For weighted median, we can use the specialized package [wquantiles](https://pypi.org/project/wquantiles/):

```python
np.average(state['Murder.Rate'], weights=state['Population'])
wquantiles.median(state['Murder.Rate'], weights=state['Population'])
```

In this case, the weighted mean and the weighted median are about the same.
"""

# ╔═╡ 0995341a-d9b4-4224-9880-11e952ace91d
md"""
**Key Ideas.**

- The basic metric for location is the mean, but it can be sensitive to extreme values (outlier).

- Other metrics (median, trimmed mean) are less sensitive to outliers and unusual distributions and hence are more robust.
"""

# ╔═╡ 5540997e-8ab5-486b-9273-72d291e9f33c
md"""
### Further Reading

- The Wikipedia article on [central tendency](https://en.wikipedia.org/wiki/Central_tendency) contains an extensive discussion of the various measures of location

- John Tukey's 1977 classic *Exploratory Data Analysis* (Pearson) is still widely read.
"""

# ╔═╡ 13cac74d-c19c-4f36-992a-14e0acdc8291
md"## Estimates of Variability"

# ╔═╡ 049f3602-30be-4033-af85-d9a7ad8c148d
md"""
**Remark.**
Location is just one dimension in summarizing a feature.
A second dimension, *variability*, also referred to as *dispersion*, measures whether the data values are tightly clustered or spread out.
At the heart of statistics lies variability: measuring it, reducing it, distinguishing random from real variability, identifying the various sources of real variability, and making decisions in the presence of it.
"""

# ╔═╡ c9d848e9-0255-4770-ac5f-25d68ce88f0c
md"""
**Key Terms for Variability Metrics.**

- **Deviations**:
  The difference between the observed values and the estimate of location.

  - *Synonyms*:
    errors, residuals

- **Variance**:
  The sum of squared deviations from the mean divided by ``n - 1`` where ``n`` is the number of data values.

  - *Synonym*:
    mean-squared-error

- **Standard deviation**:
  The square root of the variance.

- **Mean absolute deviation**:
  The mean of the absolute values of the deviations from the mean.

  - *Synonyms*:
    l1-norm, Manhattan norm

- **Median absolute deviation from the median**:
  The median of the absolute values of the deviations from the median.

- **Range**:
  The difference between thet largest and smallest value in a data set.

- **Order statistics**:
  Metrics based on the data values sorted from smallest to biggest.

  - *Synonym*:
    ranks

- **Percentile**:
  The value such that ``P`` percent of the values take on this value or less and ``(100-P)`` percent take on this value or more.

  - *Synonym*:
    quantile

- **Interquartile range**:
  The difference between the 75th percentile and the 25th percentile.

  - *Synonym*:
    IQR
"""

# ╔═╡ 73192cd9-e645-4641-afc3-e70a284769b4
md"""
**Remark.**
Just as there are different ways to measure location (mean, median, etc.), there are also different ways to measure variability.
"""

# ╔═╡ 3df33449-02af-4500-a767-f8199266ad5c
md"### Standard Deviation and Related Estimates"

# ╔═╡ 58395c8b-495c-4345-bd42-073d82494a1c
md"""
**Remark.**
The most widely used estimates of variation are baesd on the differences, or *deviations*, between the estimate of location and the observed data.
For a set of data ``\{1, 4, 4\}``, the mean is ``3`` and the median is ``4``.
The deviations from the mean are the differences: ``1 - 3 = -2``, ``4 - 3 = 1``, ``4 - 3 = 1``.
These deviations tell us how dispersed the data is around the central value.
"""

# ╔═╡ 37c091b6-ca66-433f-8f50-672b6a794f07
md"""
**Remark.**
One way to measure variability is to estimate a typical value for these deviations.
Averaging the deviations themselves would not tell us much--the negative deviations offset the positive ones.
In fact, the sum of the deviations from the mean is precisely zero.
Instead, a simple approach is to take the average of the absolute values of the deviations from the mean.
In the preceding example, the absolute value of the deviations is ``\{2 \; 1 \; 1\}``, and their average is ``(2 + 1 + 1) / 3 = 1.33``.
This is known as the *mean absolute deviation* and is computed with the formula:

$\text{Mean absolute deviation} = \frac{\sum_{i=1}^n |x_i - \bar{x}|}{n}$

where ``\bar{x}`` is the sample mean.
"""

# ╔═╡ d5f00a37-fc1f-4e88-9cfa-7fd7a51549dd
md"""
**Remark.**
The best-known estimates of variability are the *variance* and the *standard deviation*, which are based on squared deviations.
The variance is an average of the squared deviations, and the standard deviation is the square root of the variance:

$\begin{align*}
\text{Variance} &= s^2 = \frac{\sum_{i=1}^n (x_i - \bar{x})^2}{n - 1} \\
\text{Standard deviation} &= s = \sqrt{\text{Variance}}
\end{align*}$
"""

# ╔═╡ 64e4f2e6-5c01-43e3-a7f6-e5d90d2742dd
md"""
**Remark.**
The standard deviation is much easier to interpret than the variance since it is on the same scale as the original data.
Still, with its more complicated and less intuitive formula, it might seem peculiar that the standard deviation is preferred in statistics over the mean absolute deviation.
It owes its preeminence to statistical theory: mathematically, working with squared values is much more convenient than absolute values, especially for statistical models.
"""

# ╔═╡ 801de3cd-6096-4401-bb40-a6a00e45fe8a
md"### Estimates Based on Percentiles"

# ╔═╡ 78137833-cda2-4337-a51d-52be05d0e195
md"### Example: Variability Estimates of State Population"

# ╔═╡ 49d64ded-0805-47d2-a5d6-b89790afb329
md"### Further Reading"

# ╔═╡ 2d54d4e6-0176-46ae-beee-2c0e68ddaf97
md"## Exploring the Data Distribution"

# ╔═╡ 872b0e31-601b-4238-83a4-c10c3501dae3
md"### Percentiles and Boxplots"

# ╔═╡ 13ee2eb4-5621-4b56-84bd-547b3610bfd5
md"### Frequency Tables and Histograms"

# ╔═╡ 03610f08-7690-4615-99cd-327ddc425de9
md"### Density Plots and Estimates"

# ╔═╡ f783b6e5-8e4b-4b2f-927d-b2ebcf2269ae
md"### Further Reading"

# ╔═╡ a30f6778-411a-402c-856f-5aad9ad843b1
md"## Exploring Binary and Categorical Data"

# ╔═╡ 5fb4b6dd-3d7e-4318-a689-25e749743273
md"### Mode"

# ╔═╡ d70f7112-2393-46c6-bea9-ac96859fe17f
md"### Expected Value"

# ╔═╡ bb23f0b7-4319-4dee-a351-8a6289e6ba15
md"### Probability"

# ╔═╡ ea76b4db-e8e5-4d73-9917-a5c9dbe605c9
md"### Further Reading"

# ╔═╡ 507306dd-4f44-452f-8887-60a5591909ee
md"## Correlation"

# ╔═╡ 73bccd62-bb3a-493a-816e-9292e12a0c26
md"### Scatterplots"

# ╔═╡ d1d56ada-b052-4c93-b053-e06cfee72b53
md"### Further Reading"

# ╔═╡ 964be241-b137-40f6-a130-76374b9fa75a
md"## Exploring Two or More Variables"

# ╔═╡ cea46207-fc63-4669-8188-25a4da2c98a4
md"### Hexagonal Binning and Contours (Plotting Numeric Versus Numeric Data)"

# ╔═╡ cc5bd37a-ceec-4ef8-bd9e-871c1e151659
md"### Two Categorical Variables"

# ╔═╡ ba3ae456-3162-43cf-be77-f554e725fb8c
md"### Categorical and Numeric Data"

# ╔═╡ 7631db69-26b6-47de-8711-56fa704e112d
md"### Visualizing Multiple Variables"

# ╔═╡ c8f0e8d4-6bcc-4af9-ae68-5fc3008be2f7
md"### Further Reading"

# ╔═╡ d60e0ee6-306c-4567-874f-2cb1ac2d21de
md"## Summary"

# ╔═╡ e132c393-dbce-4d31-a57c-f675b1240b01
md"""
**Remark.**
Exploratory data analysis (EDA), pioneered by John Tukey, set a foundation for the field of data science.
The key idea of EDA is that the first and most important step in any project based on data is to *look at the data*.
By summarizing and visualizing the data, you can gain valuable intuition and understanding of the project.
"""

# ╔═╡ b7a3c860-9fa8-420d-8960-87f3bf59cc7a
md"""
**Remark.**
This chapter has reviewed concepts ranging from simple metrics, such as estimates of location and variability, to rich visual displays that explore the relationships between multiple variables, as in Figure 1-12.
The diverse set of tools and techniques being developed by the open source community, combined with the expressiveness of the *R* and *Python* languages, has created a plethora ways to explore and analyze data.
Exploratory analysis should be a cornerstone of any data science project.
"""

# ╔═╡ 3d4513e3-d179-41cc-849d-678db5bad1f9
md"# 2. Data and Sampling Distributions"

# ╔═╡ a97ea47e-9554-4bc0-95aa-c52c5802b814
md"## Random Sampling and Sample Bias"

# ╔═╡ 456aa3e0-4f9b-4ea1-a0b2-39964f449091
md"## Selection Bias"

# ╔═╡ c78e4b98-aaa1-48fe-bf92-1b86c537f7e7
md"## Sampling Distribution of a Statistic"

# ╔═╡ be5d1088-29e3-48d7-a1f9-0ad617ce129b
md"## The Bootstrap"

# ╔═╡ 035270f8-826d-433b-aea5-ff1b13d38ed0
md"## Confidence Intervals"

# ╔═╡ 3f6911f8-d8de-4487-ad06-e6c64b49be69
md"## Normal Distribution"

# ╔═╡ 16fcd624-5cad-4ffa-8121-03cdfd8b485b
md"## Long-Tailed Distributions"

# ╔═╡ 0f866476-4698-4db7-95b3-275cf8033c5f
md"## Student's t-Distribution"

# ╔═╡ 0c4d7e2c-d381-48d8-bab0-dd9e3c7ac963
md"## Binomial Distribution"

# ╔═╡ aa0c6d26-548e-412e-ae13-0c5d7baa2209
md"## Chi-Square Distribution"

# ╔═╡ 0c4c35df-8cf5-40e1-bd20-a17b149971fd
md"## F-Distribution"

# ╔═╡ 89852dd2-0b6d-49af-ad57-15fef4929545
md"## Poisson and Related Distributions"

# ╔═╡ c5ad0fb1-782c-41fa-8197-9e747af272a4
md"## Summary"

# ╔═╡ e1c33bf9-d832-479b-a48d-e839dd69b0c4
md"# 3. Statistical Experiments and Signficance Testing"

# ╔═╡ 2e001fd4-b198-4e38-938f-9978f72d1389
md"## A/B Testing"

# ╔═╡ 2236086d-9bb9-4806-9124-6512ab3fbf10
md"## Hypothesis Tests"

# ╔═╡ 8b356ed3-3f51-4a3b-b5c0-ad27b325ccc5
md"## Resampling"

# ╔═╡ 0d93754c-2ede-4dd2-8633-b2b5e34d9441
md"## Statistical Significance and p-Values"

# ╔═╡ ed38ff2a-d487-4f98-b5e1-0c311ebe4c5c
md"## t-Tests"

# ╔═╡ d1bf28fa-328f-48c4-96c3-af660fb38b84
md"## Multiple Testing"

# ╔═╡ d6787725-8874-4072-a948-5d6842ef959f
md"## Degrees of Freedom"

# ╔═╡ fbd2a8b4-63d0-4f59-9db4-0a3579155c5d
md"## ANOVA"

# ╔═╡ b8d65c3b-23f7-4cec-a0e3-ace50540408b
md"## Chi-Square Test"

# ╔═╡ d36b5ccc-5cfe-4585-9e77-95670eed8bad
md"## Multi-Arm Bandit Algorithm"

# ╔═╡ dfefb0d1-d84d-42df-a710-b56ebac9c733
md"## Power and Sample Size"

# ╔═╡ 34a69c29-cb42-4811-a8b9-4ec99f0d8386
md"## Summary"

# ╔═╡ 838dab87-c686-4209-bbd8-c28d6ec3e212
md"# 4. Regression and Prediction"

# ╔═╡ c16e0b99-ce7b-4f9e-b746-c6c79577bc5d
md"## Simple Linear Regression"

# ╔═╡ 4b186a82-dabf-4ad3-a742-f88f9aa0f58b
md"## Multiple Linear Regression"

# ╔═╡ a7e190df-4d29-4974-b630-89c48ca3684f
md"## Prediction Using Regression"

# ╔═╡ 088fa655-893a-423b-b5e2-94103be3e7d8
md"## Factor Variables in Regression"

# ╔═╡ 96e0889b-995b-45b3-af8e-850d953de0ee
md"## Interpreting the Regression Equation"

# ╔═╡ 4c7a002f-ba05-4450-b971-a0e014898469
md"## Regression Diagnostics"

# ╔═╡ bb9b6bed-6b46-4da5-a789-d98515f55cbc
md"## Polynomial and Spline Regression"

# ╔═╡ 7c8e2919-2de6-4084-864e-03b289fedaa2
md"## Summary"

# ╔═╡ e3143551-581e-49ca-b8ab-4267cc44353a
md"# 5. Classification"

# ╔═╡ d73d80da-ab53-462c-88ab-f8f4db617376
md"## Naive Bayes"

# ╔═╡ 3a254129-5b10-4699-b91a-c280fb7e8a0a
md"## Discriminant Analysis"

# ╔═╡ f42aecfd-2368-4b66-b070-e4dbb00c8866
md"## Logistic Regression"

# ╔═╡ 58ad6ed3-571e-43bf-bcfe-2b13954b0990
md"## Evaluating Classification Models"

# ╔═╡ 12f3f6fd-bb34-4a6e-af0a-c8d38fe50c48
md"## Strategies for Imbalanced Data"

# ╔═╡ 08558289-f2be-4f1f-89fb-569d9c12bffc
md"## Summary"

# ╔═╡ cc4291b2-5223-43ec-a938-455ae4af6d1f
md"# 6. Statistical Machine Learning"

# ╔═╡ 521db318-d67c-4896-afac-a31e09377a66
md"## K-Nearest Neighbors"

# ╔═╡ e0a567b4-99c1-4061-a0b7-3ca81c02556d
md"## Tree Models"

# ╔═╡ 13af6613-94b5-4b56-8816-e6a5b9afef84
md"## Bagging and the Random Forest"

# ╔═╡ 2e19bfd3-0a60-4341-81b1-4b29758a1cf7
md"## Boosting"

# ╔═╡ bdfc901f-9dea-4dc4-8b06-c1b014363e90
md"## Summary"

# ╔═╡ 1375172f-5798-4248-bb7e-05f9484c0932
md"# 7. Unsupervised Learning"

# ╔═╡ 128ea5dd-6f32-4671-92dc-5fead30a2489
md"## Principal Components Analysis"

# ╔═╡ e60f873c-5d7c-4681-98ef-dc9e0474e92d
md"## K-Means Clustering"

# ╔═╡ e9367d30-b0ad-4072-97de-eab1c67c3641
md"## Hierarchical Clustering"

# ╔═╡ f9db0e98-f108-4e13-8366-35ef259af150
md"## Model-Based Clustering"

# ╔═╡ 11d8f786-f3b2-415e-863a-d8fd12ba5162
md"## Scaling and Categorical Variables"

# ╔═╡ 5fa2cf66-d089-4325-a329-582b2a21195d
md"## Summary"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.49"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "08cc58b1fbde73292d848136b97991797e6c5429"

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

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

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

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

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

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

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

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

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
# ╟─9efd3980-9874-477f-b1bb-82a19974cb7a
# ╟─b12f0652-9678-11ed-2040-dbd8414b5861
# ╟─c6ed18ba-d0d6-418d-9e6a-97afea631601
# ╟─d3938a30-a975-451a-a54b-f0502bd49f6d
# ╟─7b83a5da-89d4-4631-bce2-71b5fced2738
# ╟─8369411c-bb8e-4ea4-a953-95a3046d0f28
# ╟─22201de0-b0e6-4f75-92bb-3cb93a33bb02
# ╟─74c3cc2c-2ff5-4bda-a813-578d50325584
# ╟─ba2784ac-55ab-4b4e-b79a-7156a73bc9dc
# ╟─803e630b-64aa-44d3-bc2f-05b2ed236dd8
# ╟─45e0cacb-3632-4d47-8858-8c3965418f39
# ╟─31c94f3c-ceff-4cf7-b434-04ada25ac3f5
# ╟─5f079caf-2516-4588-a70e-7c36be7587f1
# ╟─cffe1d0a-a8c0-4cee-91c7-9051708f291b
# ╟─1667b647-86ee-4f1f-9b5d-d8309103c9a2
# ╟─ec00bd17-8cf9-4850-8aeb-a9cf14ab30d5
# ╟─5c5cceb5-c61c-4800-aa10-9f309fd25def
# ╟─3b6bc05b-346d-4bd5-929b-a93fdd9d909b
# ╟─c2052cb5-1bbf-477c-875c-2c65c541e6d4
# ╟─fc1d2489-0d65-4057-971d-541e16e8b637
# ╟─dd0e7edb-4ea2-4e65-ba09-f90a37d85824
# ╟─e1386164-af5e-46e8-a172-f017126d560f
# ╟─0def5956-b1f2-4db2-9776-410147553f85
# ╟─3422f3e2-0625-41cd-9747-49bb55d94332
# ╟─29ad07a2-b179-47ea-bc60-43ba22afe2ce
# ╟─d0c9db5b-d990-454c-8113-f6420dd2902a
# ╟─3756761a-2b3a-41ed-b67d-f399b81cf4d1
# ╟─ae3497de-e8e2-4887-b2b8-ea7ba9dcdcbd
# ╟─ccdec074-262c-42ae-a83a-eb3514ef5930
# ╟─6f693a6c-7d7f-4a01-9aef-3a6dc002db9b
# ╟─579944b7-f5f6-4aad-9beb-5f620b5d1521
# ╟─00f70ad7-df26-411c-bbfa-9a951a85cf17
# ╟─173f8a1e-b156-4253-a31e-5b0d487b3d92
# ╟─c86aa1f5-0c0c-4fa3-b453-1641640b76f5
# ╟─3d7cbe3b-ffe2-4295-8949-bb4a6dd0eb4c
# ╟─fbacdd91-ce89-4837-97f9-5a632f2910de
# ╟─04b75eda-a4f4-49b6-83f3-f6e202ba8865
# ╟─7244d2e2-07fb-4e0e-8e26-14bac120fce3
# ╟─7dbddf22-d184-44ea-83f6-71d60d2eb6f1
# ╟─c921195a-736f-47b1-9126-5f9e2401be6e
# ╟─e4666ea9-b6ba-4aca-8e68-36171731f30e
# ╟─3b052394-e539-429b-b83d-830710a631e0
# ╟─fa6f6a17-3f3d-4552-92f2-a12b52582331
# ╟─5a890aef-0f94-46f0-8780-1febe7252950
# ╟─90cc57c8-6e41-4d9e-877d-2fe599043514
# ╟─365bab30-0bec-4bff-b099-baf1c33ba426
# ╟─39703642-b128-4604-8db5-06cd36f13ab0
# ╟─82e6efb3-4828-418c-81d6-f8f3a9148f4f
# ╟─cc9f5ba0-e07f-4c42-86ce-3f7cb24811b6
# ╟─c203c265-1b22-4f2c-aa5e-f1f83a439ec6
# ╟─f00dd0e7-f364-46b6-b970-3e5d043792ac
# ╟─2664dad8-1759-4054-8890-fa21c7740478
# ╟─9b9a44b1-f302-462d-b581-dd0e7ff1857f
# ╟─34965e8d-5890-47c5-8f1d-395cfdd1ba50
# ╟─9cd69c46-34cc-4426-85f1-cd9aaf22864d
# ╟─96796a8a-e6f7-475f-927f-d5b4b8be390b
# ╟─16d00fcb-3464-4aa0-af59-bf2e589625bd
# ╟─06383d30-ad08-48f6-9db2-98bc712806a8
# ╟─17922b38-0c9a-4592-9c72-b75766870d95
# ╟─94348cea-55c7-47cc-bf5a-a04c2630a631
# ╟─1b0ab355-704e-432c-961f-1d808444a7a1
# ╟─a88ee64c-ce5d-46a9-b103-a519437066a8
# ╟─0995341a-d9b4-4224-9880-11e952ace91d
# ╟─5540997e-8ab5-486b-9273-72d291e9f33c
# ╟─13cac74d-c19c-4f36-992a-14e0acdc8291
# ╟─049f3602-30be-4033-af85-d9a7ad8c148d
# ╟─c9d848e9-0255-4770-ac5f-25d68ce88f0c
# ╟─73192cd9-e645-4641-afc3-e70a284769b4
# ╟─3df33449-02af-4500-a767-f8199266ad5c
# ╟─58395c8b-495c-4345-bd42-073d82494a1c
# ╟─37c091b6-ca66-433f-8f50-672b6a794f07
# ╟─d5f00a37-fc1f-4e88-9cfa-7fd7a51549dd
# ╟─64e4f2e6-5c01-43e3-a7f6-e5d90d2742dd
# ╟─801de3cd-6096-4401-bb40-a6a00e45fe8a
# ╟─78137833-cda2-4337-a51d-52be05d0e195
# ╟─49d64ded-0805-47d2-a5d6-b89790afb329
# ╟─2d54d4e6-0176-46ae-beee-2c0e68ddaf97
# ╟─872b0e31-601b-4238-83a4-c10c3501dae3
# ╟─13ee2eb4-5621-4b56-84bd-547b3610bfd5
# ╟─03610f08-7690-4615-99cd-327ddc425de9
# ╟─f783b6e5-8e4b-4b2f-927d-b2ebcf2269ae
# ╟─a30f6778-411a-402c-856f-5aad9ad843b1
# ╟─5fb4b6dd-3d7e-4318-a689-25e749743273
# ╟─d70f7112-2393-46c6-bea9-ac96859fe17f
# ╟─bb23f0b7-4319-4dee-a351-8a6289e6ba15
# ╟─ea76b4db-e8e5-4d73-9917-a5c9dbe605c9
# ╟─507306dd-4f44-452f-8887-60a5591909ee
# ╟─73bccd62-bb3a-493a-816e-9292e12a0c26
# ╟─d1d56ada-b052-4c93-b053-e06cfee72b53
# ╟─964be241-b137-40f6-a130-76374b9fa75a
# ╟─cea46207-fc63-4669-8188-25a4da2c98a4
# ╟─cc5bd37a-ceec-4ef8-bd9e-871c1e151659
# ╟─ba3ae456-3162-43cf-be77-f554e725fb8c
# ╟─7631db69-26b6-47de-8711-56fa704e112d
# ╟─c8f0e8d4-6bcc-4af9-ae68-5fc3008be2f7
# ╟─d60e0ee6-306c-4567-874f-2cb1ac2d21de
# ╟─e132c393-dbce-4d31-a57c-f675b1240b01
# ╟─b7a3c860-9fa8-420d-8960-87f3bf59cc7a
# ╟─3d4513e3-d179-41cc-849d-678db5bad1f9
# ╟─a97ea47e-9554-4bc0-95aa-c52c5802b814
# ╟─456aa3e0-4f9b-4ea1-a0b2-39964f449091
# ╟─c78e4b98-aaa1-48fe-bf92-1b86c537f7e7
# ╟─be5d1088-29e3-48d7-a1f9-0ad617ce129b
# ╟─035270f8-826d-433b-aea5-ff1b13d38ed0
# ╟─3f6911f8-d8de-4487-ad06-e6c64b49be69
# ╟─16fcd624-5cad-4ffa-8121-03cdfd8b485b
# ╟─0f866476-4698-4db7-95b3-275cf8033c5f
# ╟─0c4d7e2c-d381-48d8-bab0-dd9e3c7ac963
# ╟─aa0c6d26-548e-412e-ae13-0c5d7baa2209
# ╟─0c4c35df-8cf5-40e1-bd20-a17b149971fd
# ╟─89852dd2-0b6d-49af-ad57-15fef4929545
# ╟─c5ad0fb1-782c-41fa-8197-9e747af272a4
# ╟─e1c33bf9-d832-479b-a48d-e839dd69b0c4
# ╟─2e001fd4-b198-4e38-938f-9978f72d1389
# ╟─2236086d-9bb9-4806-9124-6512ab3fbf10
# ╟─8b356ed3-3f51-4a3b-b5c0-ad27b325ccc5
# ╟─0d93754c-2ede-4dd2-8633-b2b5e34d9441
# ╟─ed38ff2a-d487-4f98-b5e1-0c311ebe4c5c
# ╟─d1bf28fa-328f-48c4-96c3-af660fb38b84
# ╟─d6787725-8874-4072-a948-5d6842ef959f
# ╟─fbd2a8b4-63d0-4f59-9db4-0a3579155c5d
# ╟─b8d65c3b-23f7-4cec-a0e3-ace50540408b
# ╟─d36b5ccc-5cfe-4585-9e77-95670eed8bad
# ╟─dfefb0d1-d84d-42df-a710-b56ebac9c733
# ╟─34a69c29-cb42-4811-a8b9-4ec99f0d8386
# ╟─838dab87-c686-4209-bbd8-c28d6ec3e212
# ╟─c16e0b99-ce7b-4f9e-b746-c6c79577bc5d
# ╟─4b186a82-dabf-4ad3-a742-f88f9aa0f58b
# ╟─a7e190df-4d29-4974-b630-89c48ca3684f
# ╟─088fa655-893a-423b-b5e2-94103be3e7d8
# ╟─96e0889b-995b-45b3-af8e-850d953de0ee
# ╟─4c7a002f-ba05-4450-b971-a0e014898469
# ╟─bb9b6bed-6b46-4da5-a789-d98515f55cbc
# ╟─7c8e2919-2de6-4084-864e-03b289fedaa2
# ╟─e3143551-581e-49ca-b8ab-4267cc44353a
# ╟─d73d80da-ab53-462c-88ab-f8f4db617376
# ╟─3a254129-5b10-4699-b91a-c280fb7e8a0a
# ╟─f42aecfd-2368-4b66-b070-e4dbb00c8866
# ╟─58ad6ed3-571e-43bf-bcfe-2b13954b0990
# ╟─12f3f6fd-bb34-4a6e-af0a-c8d38fe50c48
# ╟─08558289-f2be-4f1f-89fb-569d9c12bffc
# ╟─cc4291b2-5223-43ec-a938-455ae4af6d1f
# ╟─521db318-d67c-4896-afac-a31e09377a66
# ╟─e0a567b4-99c1-4061-a0b7-3ca81c02556d
# ╟─13af6613-94b5-4b56-8816-e6a5b9afef84
# ╟─2e19bfd3-0a60-4341-81b1-4b29758a1cf7
# ╟─bdfc901f-9dea-4dc4-8b06-c1b014363e90
# ╟─1375172f-5798-4248-bb7e-05f9484c0932
# ╟─128ea5dd-6f32-4671-92dc-5fead30a2489
# ╟─e60f873c-5d7c-4681-98ef-dc9e0474e92d
# ╟─e9367d30-b0ad-4072-97de-eab1c67c3641
# ╟─f9db0e98-f108-4e13-8366-35ef259af150
# ╟─11d8f786-f3b2-415e-863a-d8fd12ba5162
# ╟─5fa2cf66-d089-4325-a329-582b2a21195d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
