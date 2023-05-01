### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ cf7502bb-4d93-4c01-9394-2044f8528589
begin
	using PlutoUI
	PlutoUI.TableOfContents()
end

# ╔═╡ 5c6591b1-3d67-492b-b136-5d848f4fec96
md"""
# Data Science for Business: What You Need to Know About Data Mining and Data-Analytic Thinking

by Foster Provost and Tom Fawcett

2013
"""

# ╔═╡ 5b739bd2-4703-4538-bf52-810abc84e231
md"# Preface"

# ╔═╡ db980dc8-732f-466f-beb9-04dd5e80ff56
md"""
**Remark.**
*Data Science for Business* is intended for several sorts of readers:

- Business people who will be working with data scientists, managing data science-oriented projects, or investing in data science ventures,

- Developers who will be implementing data science solutions, and

- Aspiring data scientists.
"""

# ╔═╡ d27c825b-b35a-42f5-9ad5-6c6b2c80817d
md"""
**Remark.**
This is not a book about algorithms, nor is it a replacement for a book about algorithms.
We delibrately avoided an algorithm-centered approach.
We believe there is a relatively small set of fundamental concepts or principles that underlie techniques for extracting useful knowledge from data.
These concepts serve as the *foundation* for many well-known algorithms of data mining.
Moreover, these concepts underlie the analysis of data-centered business problems, the creation and evaluation of data science solutions, and the evaluation of general data science strategies and proposals.
Accordingly, we organized the exposition around these general principles rather than around specific algorithms.
Where necessary to describe procedural details, we use a combination of text and diagrams, which we think are more accessible than a listing of detailed algorithmic steps.
"""

# ╔═╡ ae476e99-67ff-421a-a663-c8d52e315d7b
md"""
**Remark.**
This book does not presume a sophisticated mathematical background.
However, by its very nature the material is somewhat technical--the goal is to impart a significant understanding of data science, not just to give a high-level overview.
In general, we have tried to minimize the mathematics and make the expression as "conceptual" as possible.
"""

# ╔═╡ 8306531b-6b46-40c0-82c4-738f022b3e14
md"""
**Remark.**
Colleagues in industry comment that the book is invaluable for helping to align the understanding of the business, technical/development, and data science teams.
That observation is based on a small sample, so we are curious to see how general it truly is (see Chapter 5!).
Ideally, we envision a book that any data scientist would give to his collaborators from the development or business teams, effectively saying: if you really want to design/implement top-notch data science solutions to business problems, we all need to have a common understanding of this material.
"""

# ╔═╡ 6c70de6d-09f0-46fa-9f60-c5f151b11b46
md"""
**Remark.**
Colleagues also tell us that the book has been quite useful in an unforeseen way: for preparing to interview data science job candidates.
The demand from business for hiring data scientists is strong and increasing.
In response, more and more job seekers are presenting themselves as data scientists.
Every data science job candidate should understand the fundamentals presented in this book.
(Our industry colleagues tell us that they are surprised how many do not.
We have have half-seriously discussed a follow-up pamphlet "Cliff's Notes to Interviewing for Data Science Jobs.")
"""

# ╔═╡ ac61de7b-ec96-486e-b250-8e298998dd1c
md"## Our Conceptual Approach to Data Science"

# ╔═╡ cc585466-79c0-4655-b71d-813a5d967aa6
md"""
**Remark.**
In this book we introduce a collection of the most important fundamental concepts of data science.
"""

# ╔═╡ 4d3fa416-b201-4236-9eeb-7c70111b6251
md"""
**Remark.**
The concepts fit into three general types:

1. Concepts about how data science fits in the organization and the competitive landscape, including ways to attract, structure, and nurture data science teams; ways for thinking about how data science leads to competitive advantage; and tactical concepts for doing well with data science projects.

2. General ways of thinking data-analytically.
   These help in identifying appropriate data and consider appropriate methods.
   The concepts include the *data mining process* as well as the collection of different *high-level data mining tasks*.

3. General concepts for actually extracting knowledge from data, which undergird the vast array of data science tasks and their algorithms.
"""

# ╔═╡ c96c7638-90fd-4a1a-923a-1ad2ddf4d421
md"""
**Remark.**
For example, one fundamental concept is that of determining the similarity of two entities described by data.
"""

# ╔═╡ 7c59ce91-13de-4913-9cfc-acfa9fa09a40
md"""
**Remark.**
As another example, in evaluating the utility of a pattern, we see a notion of *lift*--how much more prevalent a pattern is than would be expected by chance--recurring broadly across data science.
"""

# ╔═╡ b5db0f9c-7ccd-42d5-9694-cb22784e8633
md"""
**Remark.**
We believe that explaining data science around such fundamental concepts not only aids the reader, it also facilitates communication between business stakeholders and data scientists.
"""

# ╔═╡ 391c1a62-db28-437b-91b4-cb7bfbdc4dc3
md"## To the Instructor"

# ╔═╡ 2b897cdd-e3df-4f3f-9428-31e719e27ac7
md"""
**Remark.**
This book has been used successfully as a textbook for a very wide variety of data science courses.
"""

# ╔═╡ bf6879fa-c91d-49f2-9cb0-03069459c27e
md"""
**Remark.**
At NYU we now use the book in support of a variety of data science-related programs: the original MBA and MSIS programs, undergraduate business analytics, NYU/Stern's new MS in Business Analytics program, and as the Introduction to Data Science for NYU's new MS in Data Science.
"""

# ╔═╡ 2e7cfbc7-0675-416e-b916-281b2657c505
md"## Other Skills and Concepts"

# ╔═╡ ab4cbce1-2ac8-42ac-a937-090b931a3ad8
md"""
**Remark.**
There are many other concepts and skills that a practical data scientists needs to know besides the fundamental principles of data science.
These skills and concepts will be discussed in Chapter 1 and Chapter 2.
"""

# ╔═╡ 8ee0706b-c58b-44e2-a7ae-de65a1ae31fb
md"## Sections and Notation"

# ╔═╡ b84b5099-d94c-4ebe-88ec-930ffd120118
md"""
**Remark.**
In addition to occasional footnotes, the book contains boxed "sidebars."
These are essentially extended footnotes.
We reserve these for material that we consider interesting and worthwhile, but too long for a footnote and too much of a digression for the main text.
"""

# ╔═╡ 014b4a06-42c6-4cc5-9e0c-6e977a87b588
md"""
!!! note "A note on the starred, "curvy road" sections"

    The occasional mathematical details are relegated to optional "starred" sections.
    These section titles will have asterisk prefixes, and they will include the "curvy road" graphic you see to the left to indicate that the section contains more detailed mathematics or technical details than elsewhere.
    The book is written so that these sections may be skipped without loss of continuity, although a few places we remind readers that details appear there.
"""

# ╔═╡ ddfb94d0-8f5d-45db-abe3-e1d29174ae0d
md"""
**Remark.**
Constructions in the text like (Smith and Jones, 2003) indicate a reference to an entry in the bibliography (in this case, the 2003 article or book by Smith and Jones); "Smith and Jones (2003)" is a similar reference.
A single bibliography for the entire book appears in the endmatter.
"""

# ╔═╡ 2512bf6a-888d-4a26-a85f-8696fa619f70
md"""
**Remark.**
In this book we try to keep math to a minimum, and what math there is we have simplified as much as possible without introducing confusion.
For our readers with technical backgrounds, a few comments may be in order regarding our simplifying choices.

1. We avoid Sigma ``(∑)`` and Pi ``(\prod)`` notation, commonly used in textbooks to indicate sums and products, respectively.
   Instead we simply use equations with ellipses like this:

   $f(X) = w_1 x_1 + w_2 x_2 + ⋯ + w_n x_n$


2. Statistics books are usually careful to distinguish between a value and its estimate by putting a "hat" on variables that are estimates, so in such books you'll typically see a true probability denoted ``p`` and its estimate denoted ``\hat{p}``.
   In this book we are almost always talking about estimates from data, and putting hats on everything makes equations verbose and ugly.
   Everything should be assumed to be an estimate from data unless we say otherwise.


3. We simplify notation and remove extraneous variables where we believe they are clear from context.
   For example, when we discuss classifiers mathematically, we are technically dealing with decision predicates over feature vectors.
   Expressing this formally would lead to equations like:

   $\hat{f}_R(𝐱) = x_{\text{Age}} \times -1 + 0.7 \times x_{\text{Balance}} + 60$

   Instead we opt for the more readable:

   $f(𝐱) = \text{Age} \times -1 + 0.7 \times \text{Balance} + 60$

   with the understanding that ``𝐱`` is a vector and ``\text{Age}`` and ``\text{Balance}`` are components of it.
"""

# ╔═╡ 0d0d7c3b-96e1-4ae7-b2cb-8f69505c0967
md"""
**Remark.**
We have tried to be consistent with typography, reserving fixed-width typewriter fonts like `sepal_width` to indicate attributes or keywords in data.
For example, in the text-mining chapter, a word like *'discussing'* designates a word in a document while `discuss` might be the resulting token in the data.
"""

# ╔═╡ 7691756b-2a11-447d-b3c7-f4e97ede9294
md"""
**Remark.**
The following typographical conventions are used in this book:

- *Italic*

  - Indicates new terms, URLS, email addresses, filenames, and file extensions.

- `Constant width`

  - Used for program listings, as well as within paragraphs to refer to program elements such as variable or function names, databases, data types, environment variables, statements, and keywords.

- *`Constant width italic`*

  - Shows text that should be replaced with user-supplied values or by values determined by context.
"""

# ╔═╡ 5c9f40f0-f77f-4183-b27d-cecdd1c602af
md"""
!!! note

    This icon signifies a tip, suggestion, or general note.
"""

# ╔═╡ e91c446e-b618-41db-a7b2-0ec538b4cc9e
md"""
!!! warning

    This icon indicates a warning or caution.
"""

# ╔═╡ f592e979-39eb-417c-a0f9-d8a8fe722b61
md"## Using Examples"

# ╔═╡ 9ed08f45-743a-4d67-a315-6fca1663d382
md"""
**Remark.**
In addition to being an introduction to data science, this book is intended to be useful in discussions of and day-to-day work in the field.
Answering a question by citing this book and quoting examples does not require permission.
We appreciate, but do not require, attribution.
Formal attribution usually includes the title, author, publisher, and ISBN.
For example: "*Data Science for Business* by Foster Provost and Tom Fawcett (O'Reilly). Copyright 2013 Foster Provost and Tom Fawcett, 978-1-449-36132-7."
"""

# ╔═╡ 5c5848c3-0f61-4bab-8392-26c94442e98d
md"## Safari® Books Online"

# ╔═╡ df324f34-3b1f-4358-9924-ce5f84914e8f
md"""
**Remark.**
*Safari Books Online* is an on-demand digital library that delivers expert content in book book and video form from the world's leading authors in technology and business.
"""

# ╔═╡ bd2e083e-3344-47df-a784-447220b7f4f0
md"## How to Contact Us"

# ╔═╡ 57369a42-ddad-4930-a56f-3f5821b7f902
md"""
**Remark.**
Please address comments and questions concerning this book to the publisher:

```
O'Reilly Media, Inc.
1005 Gravenstein Highway North
Sebastopol, CA 96472
800-998-9938 (in the United States or Canada)
707-829-0515 (international or local)
707-829-0104 (fax)
```
"""

# ╔═╡ 85e7c283-c18e-4b44-ac2e-2478622f7a06
md"""
**Remark.**
We have two web pages for this book, where we list errata, examples, and any additional information.
You can access the publisher's page at [http://oreil.ly/data-science](http://oreil.ly/data-science) and the author's page at [https://data-science-for-biz.com/](https://data-science-for-biz.com/).
"""

# ╔═╡ 07215ac5-545c-4c2e-b035-fd68abb35ef7
md"## Acknowledgments"

# ╔═╡ 260d2df5-a93d-458c-8bda-b710d056ffd6
md"""
**Remark.**
Thanks to all the many colleagues and others who have provided invaluable feedback, criticism, suggestions, and encouragement based on many prior draft manuscripts.
"""

# ╔═╡ 31bea77a-8bc3-40dd-a9e6-b28051dfed76
md"""
# 1. Introduction: Data-Analytic Thinking

> Dream no small dreams for they have no power to move the hearts of men.
>
> --Johann Wolfgang von Goethe
"""

# ╔═╡ ad736698-6f1b-4313-bced-f74f82afe3a1
md"""
**Remark.**
The past fifteen years have seen extensive investments in business infrastructure, which have improved the ability to collect data throughout the enterprise.
Virtually every aspect of business is now open to data collection and often even instrumented for data collection: operations, manufacturing, supply-chain management, customer behavior, marketing campaign performance, workflow procedures, and so on.
At the same time, information is now widely available on external events such as market trends, industry news, and competitors' movements.
This broad availability of data has led to increasing interest in methods for extracting useful information and knowledge from data--the realm of data science.
"""

# ╔═╡ 53954898-97bb-462d-940e-9129dcdc3d55
md"## The Ubiquity of Data Opportunities"

# ╔═╡ 3bee32f5-cdca-4b93-936f-8ed2f90d4a5c
md"""
**Remark.**
With vast amounts of data now available, companies in almost every industry are focused on exploiting data for competitive advantage.
In the past, firms could employ teams of statisticians, modelers, and analysts to explore datasets manually, but the volume and variety of data have far outstripped the capacity of manual analysis.
At the same time, computers have become far more powerful, networking has become ubiquitous, and algorithms have been developed that can connect datasets to enable broader and deeper analyses than previously possible.
The convergence of these phenomena has given rise to the increasingly widespread business application of data science principles and data-mining techniques.
"""

# ╔═╡ 02d4645e-1c26-441e-8914-2d689a1457df
md"""
**Remark.**
Probably the widest application of data-mining techniques are in marketing for tasks such as targeted marketing, online advertising, and recommendations for cross-selling.
Data mining is used for general customer relationship management to analyze customer behavior in order to manage attrition and maximize expect customer value.
The finance industry uses data mining for credit scoring and trading, and in operations via fraud detection and workforce management.
Major retailers from Walmart to Amazon apply data mining throughout their businesses, from marketing to supply-chain management.
Many firms have differentiated themselves strategically with data science, sometimes to the point of evolving into data mining companies.
"""

# ╔═╡ c372a49f-22fe-411f-9ea0-ae328dfb0934
md"""
**Remark.**
The primary goals of this book are to help you view business problems from a data perspective and understand principles of extracting useful knowledge from data.
There is a fundamental structure to data-analytic thinking, and basic principles that should be understood.
There are also particular areas where intuition, creativity, common sense, and domain knowledge must be brought to bear.
A data perspective will provide you with structure and principles, and this will give you a framework to systematically analyze such problems.
As you get better at data-analytic thinking you will develop intuition as to how and where to apply creativity and domain knowledge.
"""

# ╔═╡ 91acb9c9-d45a-472d-a43f-ec962dfa3859
md"""
**Remark.**
Throughout the first two chapters of this book, we will discuss in detail various topics and techniques related to data science and data mining.
The terms "data science" and "data mining" often are used interchangeably, and the former has taken a life of its own as various individuals and organizations try to capitalize on the current hype surrounding it.
At a high level, *data science* is a set of fundamental principles that guide the extraction of knowledge from data.
Data mining is the extraction of knowledge from data, via technologies that incorporate these principles.
As a term, "data science" often is applied more broadly than the traditional use of "data mining," but data mining techniques provide some of the clearest illustrations of the principles of data science.
"""

# ╔═╡ 8f2377b8-39b0-4704-9f7a-15462aba4544
md"""
!!! note

    *It is important to understand data science even if you never intend to apply it yourself.*
    Data-analytic thinking enables you to evaluate proposals for data mining projects.
    For example, if an employee, a consultant, or a potential investment target proposes to improve a particular business application by extracting knowledge from data, you should be able to assess the proposal systematically and decide whether it is sound or flawed.
    This does not mean that you will be able to tell whether it will actually succeed--for data mining projects, that often requires trying--but you should be able to spot obvious flaws, unrealistic assumptions, and missing pieces.
"""

# ╔═╡ 029cac3b-146b-4b53-b31b-489e696f4ca9
md"""
**Remark.**
Throughout the book we will describe a number of fundamental data science principles, and will illustrate each with at least one data mining technique that embodies the principle.
For each principle there are usually many specific techniques that embody it, so in this book we have chosen to emphasize the basic principles in preference to specific techniques.
That said, we will not make a big deal about the difference between data science and data mining, except where it will have a substantial effect on understanding the actual concepts.
"""

# ╔═╡ d1ab57b4-8aae-46c8-ba0b-da99e73faaf2
md"""
**Remark.**
Let's examine two brief case studies of analyzing data to extract predictive patterns.
"""

# ╔═╡ 5c0b8742-c17d-4c33-a6ef-ded757f95d38
md"## Example: Hurriance Frances"

# ╔═╡ add448ae-fe5d-4027-9dc4-aafbb8a74729
md"""
**Remark.**
Consider an example from a *New York Times* story from 2004:

> Hurricane Frances was on its way, barreling across the Caribbean, threatening a direct hit on Florida's Atlantic coast.
> Residents made for higher ground, but far away, in Bentonville, Ark., executives at Wal-Mart stores decided that the situation offered a great opportunity for one of their newest data-driven weapons ... predictive technology.
>
> A week ahead of the storm's landfall, Linda M. Dillman, Wal-Mart's chief information officer, pressed her staff to come up with forecasts based on what had happened when Hurricane Charley struck several weeks earlier.
> Backed by the trillions of bytes' worth of shopper history that is stored in Wal-Mart's data warehouse, she felt that the company could 'start predicting what's going to happen, instead of waiting for it to happen,' as she put it. (Hays, 2004)

Consider *why* data-driven prediction might be useful in this scenario.
It might be useful to predict that people in the path of the hurricane would buy more bottled water.
Maybe, but this point seems a bit obvious, and why would we need data science to discover it?
It might be useful to project the *amount of increase* in sales due to the hurricane, to ensure that local Wal-Marts are properly stocked.
Perhaps mining the data could reveal that a particular DVD sold out in the hurricane's path--but maybe it sold out that week at Wal-Marts across the country, not just where the hurricane landing was imminent.
The prediction could be somewhat useful, but is probably more general than Ms. Dillman was intending.
"""

# ╔═╡ 3428a001-20a6-41bc-88b8-8c257b771780
md"""
**Remark.**
It would be more valuable to discover patterns due to the hurricane that were not obvious.
To do this, analysts might examine the huge volume of Wal-Mart data from prior, similar situations (such as Hurricane Charley) to identify *unusual* local demand for products.
From such patterns, the company might be able to anticipate unusual demand for products and rush stock to the stores ahead of the hurricane's landfall.
"""

# ╔═╡ 2ff20f7f-e763-4b6d-88aa-ad9d93a4fe1e
md"""
**Remark.**
Indeed, that is what happened.
*The New York Times* (Hays, 2004) reported that: "... the experts mined the data and found that the stores would indeed need certain products--and not just the usual flashlights. 'We didn't know in the past that strawberry PopTarts increase in sales, like seven times their normal sales rate, ahead of a hurricane.' Ms. Dillman said in a recent interview. 'And the pre-hurricane top-selling item was beer.'"
"""

# ╔═╡ df50dc13-0ee3-45ea-a443-225edd998ac9
md"## Example: Predicting Customer Churn"

# ╔═╡ 13cf98d6-822a-4617-9bb5-cf9cc8b96702
md"""
**Remark.**
How are such data analyses performed?
Consider a second, more typical business scenario and how it might be treated from a data perspective.
This problem will serve as a running example that will illuminate many of the issues raised in this book and provide a common frame of reference.
"""

# ╔═╡ 13aa89af-7665-406d-942f-dc8e6e6e0036
md"""
**Remark.**
Assume you just landed a great analytical job with MegaTelCo, one of the largest telecommunication firms in the United States.
They are having a major problem with customer retention in their wireless business.
In the mid-Atlantic region, 20% of cell phone customers leave when their contracts expire, and it is getting increasingly difficult to acquire new customers.
Since the cell phone market is now saturated, the huge growth in the wireless market has tapered off.
Communications companies are now engaged in battles to attract each other's customers while retaining their own.
Customers switching from one company to another is called *churn*, and it is expensive all around: one company must spend on incentives to attract a customer while another company loses revenue when the customer departs.
"""

# ╔═╡ 2d8d89b5-82a3-4665-996c-0ff3f224964e
md"""
**Remark.**
You have been called in to help understand the problem and to devise a solution.
Attracting new customers is much more expensive than retaining existing ones, so a good deal of marketing budget is allocated to prevent churn.
Marketing has already designed a special retention offer.
Your task is to devise a precise, step-by-step plan for how the data science team should use MegaTelCo's vast data resources to decide which customers should be offered the special retention deal prior to the expiration of their contracts.
"""

# ╔═╡ 59583d2f-8ee4-4232-9c90-48d0c289892b
md"""
**Remark.**
Think carefully about what data you might use and how they would be used.
Specifically, how should MegaTelCo choose a set of customers to receive their offer in order to best reduce churn for a particular incentive budget?
Answering this question is much more complicated than it may seem initially.
We will return to this problem repeatedly through the book, adding sophistication to our solution as we develop an understanding of the fundamental data science concepts.
"""

# ╔═╡ e2a03ef1-3df8-4968-8a1e-7540fdc96630
md"""
!!! note

    In reality, customer retention has been a major use of data mining technologies--especially in telecommunications and finance businesses.
    These more generally were some of the earliest and widest adopters of data mining technologies, for reasons discussed later.
"""

# ╔═╡ 5b3f9732-a256-49c6-9898-08f2ba7f4782
md"## Data Science, Engineering, and Data-Driven Decision Making"

# ╔═╡ ec18e0ab-6378-49bd-9080-96fa4950242d
md"""
**Remark.**
Data science involves principles, processes, and techniques for understanding phenomena via the (automated) analysis of data.
In this book, we will view the ultimate goal of data science as improving decision making, as this generally is of direct interest to business.
"""

# ╔═╡ cd53c927-1c41-4f41-8501-3a36f2d6e5f2
md"""
**Figure 1-1.**
*Data science in the context of various data-related processes in the organization.*
"""

# ╔═╡ 40b1a745-e710-4ce0-a325-85c0bdbc0303
md"""
**Remark.**
Figure 1-1 places data science in the context of various other closely related and data-related processes in the organization.
It distinguishes data science from other aspects of data processing that are gaining increasing attention in business.
Let's start at the top.
"""

# ╔═╡ 77ba2278-f0a4-46b7-8473-011f33363b8e
md"""
**Remark.**
Data-driven decision making (DDD) refers to the practice of basing decisions on the analysis of data, rather than purely on intuition.
For example, a marketer could select advertisements based purely on her long experience in the field and her eye for what will work.
Or, she could base her selection on the analysis of data regarding how consumers react to different ads.
She could also use a combination of these approaches.
DDD is not an all-or-nothing practice, and different firms engage in DDD to greater or lesser degrees.
"""

# ╔═╡ 5423a474-7314-4cf3-9c65-627a3006ab06
md"""
**Remark.**
The benefits of data-driven decision-making have been demonstrated conclusively.
Economist Erik Brynjolfsson and his colleagues from MIT and Penn's Wharton School conducted a study of how DDD affects firm performance (Brynjolfsson, Hitt, & Kim, 2011).
They developed a measure of DDD that rates firms as to how strongly they use data to make decisions across the company.
They show that statistically, the more data-driven a firm is, the more productive it is--even controlling for a wide range of possible confounding factors.
And the differences are not small.
One standard deviation higher on the DDD scale is associated with 4%-6% increase in productivity.
DDD also is correlated with higher return on assets, return on equity, asset utilization, and market value, and the relationship seems to be causal.
"""

# ╔═╡ aef6b6aa-3cb5-4b32-901f-4412143e6b72
md"""
**Remark.**
The sort of decisions we will be interested in in this book mainly fall into two types: (1) decisions for which "discoveries" need to be made within data, and (2) decisions that repeat, especially at massive scale, and so decision-making can benefit from even small increases in decision-making accuracy based on data analysis.
The Walmart example above illustrates a type 1 problem: Linda Dillman would like to discover knowledge that will help Walmart prepare for Hurricane Frances's imminent arrival.
"""

# ╔═╡ 0cd57b42-9261-4ca6-bd86-9e32c64b9227
md"""
**Remark.**
In 2012, Walmart's competitor Target was in the news for a data-driven decision-making case of its own, also a type 1 problem (Duhigg, 2012).
Like most retailers, Target cares about consumers' shopping habits, what drives them, and what can influence them.
Consumers tend to have inertia in their habits and getting them to change is very difficult.
Decision makers at Target knew, however, that the arrival of a new baby in a family is one point where people do change their shopping habits significantly.
In the Target analyst's words, "As soon as we get them buying diapers from us, they're going to start buying everything else too."
Most retailers know this and so they compete with each other trying to sell baby-related products to new parents.
Since most birth records are public, retailers obtain information on births and send out special offers to the new parents.
"""

# ╔═╡ 3cf97426-3a33-48fd-a2bc-4e6c369b67cf
md"""
**Remark.**
However, Target wanted to get a jump on their competition.
They were interested in whether they could *predict* that people *are expecting* a baby.
If they could, they would gain an advantage by making offers before their competitors.
Using techniques of data science, Target analyzed historical data on customers who *later* were revealed to have been pregnant, and were able to extract information that could predict which consumers were pregnant.
For example, pregnant mothers often change their diets, their wardrobes, their vitamin regimens, and so on.
These indicators could be extracted from historical data, assembled into predictive models, and then deployed in marketing campaigns.
We will discuss predictive models in much detail as we go through the book.
For the time being, it is sufficient to understand that a predictive model abstracts away most of the complexity of the world, focusing in on a particular set of indicators that correlate in some way with a quantity of interest (who will churn, or who will purchase, who is pregnant, etc.).
Importantly, in both the Walmart and the Target examples, the data analysis was not testing a simple hypothesis.
Instead, the data were explored with the hope that something useful would be discovered.
"""

# ╔═╡ 84e5ce64-e5da-454a-a46d-46956ba0a41a
md"""
**Remark.**
Our churn example illustrates a type 2 DDD problem.
MegaTelCo has hundreds of millions of customers, each a candidate for defection.
Tens of millions of customers have contracts expiring each month, so each one of them has an increased likelihood of defection in the near future.
If we can improve our ability to estimate, for a given customer, how profitable it would be for us to focus on her, we can potentially reap large benefits by applying this ability to the millions of customers in the population.
This same logic applies to many of the areas where we have seen the most intense application of data science and data mining: direct marketing, online advertising, credit scoring, financial trading, help-desk management, fraud detection, search ranking, product recommendation, and so on.
"""

# ╔═╡ f1cad3bc-c911-4cfd-95cb-f34a7af9700e
md"""
**Remark.**
The diagram in Figure 1-1 shows data science supporting data-driven decision-making, but also overlapping with data-driven decision-making.
This highlights the often overlooked fact that, increasingly, business decisions are being made *automatically* by computer systems.
Different industries have adopted automatic decision-making at different rates.
The finance and telecommunications industries were early adopters, largely because of their precocious development of data networks and implementation of massive-scale computing, which allowed the aggregation and modeling of data at a large scale, as well as the application of the resultant models to decision-making.
"""

# ╔═╡ 2b042fa1-908a-43c9-8af8-a3cbee316520
md"""
**Remark.**
In the 1990s, automated decision-making changed the banking and consumer credit industries dramatically.
In the 1990s, banks and telecommunications companies also implemented massive-scale systems for managing data-driven fraud control decisions.
As retail systems were increasingly computerized, merchandising decisions were automated.
Famous examples include Harrah's casino's reward programs and the automated recommendations of Amazon and Netflix.
Currently we are seeing a revolution in advertising, due in large part to a huge increase in the amount of time consumers are spending online, and the ability online to make (literally) split-second advertising decisions.
"""

# ╔═╡ 4d13b7ef-03e3-477c-a08c-895ec41f1802
md"## Data Processing and \"Big Data\""

# ╔═╡ b322348f-2b06-44d7-b9e5-2c6b77a851b1
md"""
**Remark.**
It is important to digress here to address another point.
There is a lot to data processing that is not data science--despite the impression one might get from the media.
Data engineering and processing are critical to support data science, but they are more general.
For example, these days many data processing skills, systems, and technologies often are mistakenly cast as data science.
To understand data science and data-driven businesses it is important to understand the differences.
Data science needs access to data and it often benefits from sophisticated data engineering that data processing technologies may facilitate, but these technologies are not data science technologies per se.
They support data science, as shown in Figure 1-1, but they are useful for much more.
Data processing technologies are very important for many data-oriented business tasks that do not involve extracting knowledge or data-driven decision-making, such as efficient transaction processing, modern web system processing, and online advertising campaign management.
"""

# ╔═╡ 76e2b480-07c4-476e-8aba-6af116c9bdb3
md"""
**Remark.**
"Big data" technologies (such as Hadoop, HBase, and MongoDB) have received considerable media attention recently.
*Big data* essentially means datasets that are too large for traditional data processing systems, and therefore require new processing technologies.
As with the traditional technologies, big data technologies are used for many tasks, including data engineering.
Occasionally, big data technologies are actually used for *implementing* data mining techniques.
However, much more often the well-known big data technologies are used for data processing *in support of* the data mining techniques and other data science activities, as represented in Figure 1-1.
"""

# ╔═╡ d6a9b276-0878-42af-8931-f4b395bcd5f9
md"""
**Remark.**
Previously, we discussed Brynjolfsson's study demonstrating the benefits of data-driven decision-making.
A separate study, conducted by economist Prasanna Tambe of NYU's Stern School, examined the extent to which *big data* technologies seem to help firms (Tambe, 2012).
He finds that, after controlling for various possible confounding factors, using big data technologies is associated with significant additional productivity growth.
Specifically, one standard deviation higher utilization of big data technologies is associated with 1%-3% higher productivity than the average firm; one standard deviation lower in terms of big data utilization is associated with 1%-3% lower productivity.
This leads to potentially very large productivity differences between the firms at the extremes.
"""

# ╔═╡ c1322bca-4d3b-4beb-bb33-161d9647ff4f
md"## From Big Data 1.0 to Big Data 2.0"

# ╔═╡ 8b64a3d0-df85-451f-ad0c-77f9a8f5dd05
md"""
**Remark.**
One way to think about the staste of big data technologies is to draw an analogy with the business adoption of Internet technologies.
In Web 1.0, businesses busied themselves with getting the basic internet technologies in place, so that they could establish a web presence, build electronic commerce capability, and improve the efficiency of their operations.
We can think of ourselves as being in the era of Big Data 1.0.
Firms are busying themselves with building the capabilities to process large data, largely in support of their current operations--for example, to improve efficiency.
"""

# ╔═╡ b05feb22-e53a-4a40-af0f-63163ebf32c4
md"""
**Remark.**
Once firms had incorporated Web 1.0 technologies thoroughly (and in the process had driven down prices of the underlying technology) they started to look further.
They began to ask what the Web could do for them, and how it could improve things they'd always done--and we entered the era of Web 2.0, where new systems and companies began taking advantage of the interactive nature of the Web.
The changes brought on by this shift in thinking are pervasive; the most obvious are the incorporation of social-networking components, and the rise of the "voice" of the individual consumer (and citizen).
"""

# ╔═╡ 05658a22-317e-473d-9b98-43f1a6ba9220
md"""
**Remark.**
We should expect a Big Data 2.0 phase to follow Big Data 1.0.
Once firms have become capable of processing massive data in a flexible fashion, they should begin asking: *"What can I now do that I couldn't do before, or do better than I could do before?"*
This is likely to be the golden era of data science.
The principles and techniques we introduce in this book will be applied far more broadly and deeply than they are today.
"""

# ╔═╡ f7194ff8-8e8e-4071-ac23-07dcccd5cf1e
md"""
!!! note

    It is important to note that in the Web 1.0 era some precocious companies began applying Web 2.0 ideas far ahead of the mainstream.
    Amazon is a prime example, incorporating the consumer's "voice" early on, in the rating of products, in product reviews (and deeper, in the rating of product reviews).
    Similarly, we see some companies already applying Big Data 2.0.
    Amazon again is a company at the forefront, providing data-driven recommendations from massive data.
    There are other examples as well.
    Online advertisers must process extremely large volumes of data (billions of ad impressions per day is not unusual) and maintain a very hitgh throughput (real-time bidding systems make decisions in tens of milliseconds).
    We should look to these and similar industries for hints at advances in big data and data science that subsequently will be adopted by other industries.
"""

# ╔═╡ 685991c2-71f4-4ba7-8c68-a6e3da550e64
md"## Data and Data Science Capability as a Strategic Asset"

# ╔═╡ 06deaf56-32ae-4cfc-aa45-6048071fd23c
md"""
**Remark.**
The prior sections suggest one of the fundamental principles of data science: *data, and the capability to extract useful knowledge from data, should be regarded as key strategic assets*.
Too many businesses regard data analytics as pertaining mainly to realizing value from some existing data, and often without careful regard to whether the business has the appropriate analytical talent.
Viewing these as assets allows us to think explicitly about the extent to which one should invest in them.
Often, we don't have exactly the right data to best make decisions and/or the right talent to best support making decisions from the data.
Further, thinking of these as assets should lead us to the realization that they are *complementary*.
The best data science team can yield little value without the appropriate data; the right data often cannot substantially improve decisions without suitable data science talent.
As with all assets, it is often necessary to make investments.
Building a top-notch data science team is a nontrivial undertaking, but can make a huge difference for decision-making.
We will discuss strategic considerations involving data science in detail in Chapter 13.
Our next case study will introduce the idea that thinking explicitly about how to inveset in data assets very often pays off handsomely.
"""

# ╔═╡ 19b2437b-1c45-41f0-955c-003ac1ebccbe
md"""
**Remark.**
The classic story of little Signet Bank from the 1990s provides a case in point.
Previously, in the 1980s, data sciecne had transformed the business of consumer credit.
Modeling the probability of default had changed the industry from personal assessment of the likelihood of default to strategies of massive scale and market share, which brought along concomitant economies of scale.
It may seem strange now, but at the time, credit cards essentially had uniform pricing, for two reasons: (1) the companies did not have adequate information systems to deal with differential pricing at massive scale, and (2) bank management believed customers would not stand for price discrimination.
Around 1990, two strategic visionaries (Richard Fairbanks and Nigel Morris) realized that information technology was powerful enough that they could do more sophisticated predictive modeling--using the sort of techniques that we discuss throughout this book--and offer different terms (nowadays: pricing, credit limits, low-initial-rate balance transfers, cash back, loyalty points, and so on).
These two men had no success persuading the big banks to take them on as consultants and let them try.
Finally, after running out of big banks, they succeded in garnering the interest of a small regional Virginia bank: Signet Bank.
Signet Bank's management was convinced that modeling profitability, not just default probability, was the right strategy.
They knew that a small proportion of customers actually account for *more than* 100% of a bank's profit from credit card opereations (because the rest are break-even or money-losing).
If they could model profitability, they could make better offers to the best customers and "skim the cream" of the big banks' clientele.
"""

# ╔═╡ ebc39bd9-ac9b-4b90-be46-996a737a2485
md"""
**Remark.**
But Signet Bank had one really big problem in implementing this strategy.
They did not have the appropriate data to model profitability with the goal of offering different terms to different customers.
No one did.
Since banks were offering credit with a specific set of terms and a specific default model, they had the data to model profitability (1) for the terms they actually have offered in the psat, and (2) for the sort of customer who was actually offered credit (that is, those who were deemed worthy of credit by the existing model).
"""

# ╔═╡ 90e70cbe-f83e-454d-9761-71630116b89a
md"""
**Remark.**
What could Signet Bank do?
They brought into play a fundamental strategy of data science: acquire the necessary data at a cost.
Once we view data as a business asset, we should think about whether and how much we are willing to invest.
In Signet's case, data could be generated on the profitability of customers given different credit terms by conducting experiments.
Different terms were offered at random to different customers.
This may seem foolish outside the context of data-analytic thinking: you're likely to lose money!
This is true.
In this case, losses are at the cost of data acquisition.
The data-analytic thinker needs to consider whether she expects the data to have sufficient value to justify the investment.
"""

# ╔═╡ 4e651148-ba66-4355-a85c-d30e0d95863c
md"""
**Remark.**
So what happened with Signet Bank?
As you might expect, when Signet began randomly offering terms to customers for data acquisition, the number of bad accounts soared.
Signet went from an industry-leading "charge-off" rate (2.9% of balances went unpaid) to almost 6% charge-offs.
Losses continued for a few years while the data scientists worked to build predictive models from the data, evaluate them, and deploy them to improve profit.
Because the firm viewed these losses as investments in data, they persisted despite complaints from stakeholders.
Eventually, Signet's credit card operation turned around and became so profitable that it was spun off to separate it from the bank's other operations, which now were overshadowing the consumer credit success.
"""

# ╔═╡ a221c1bf-c858-4e3b-b31b-11fc58183cc7
md"""
**Remark.**
Fairbanks and Morris became Chairman and CEO and President and COO, and proceeded to apply data science principles throughout the business--not just customer acquisition but retention as well.
When a customer calls looking for a better offer, data-driven models calculate the potential profitability of various possible actions (different offers, including sticking with the status quo), and the customer service representative's computer presents the best offers to make.
"""

# ╔═╡ de4c829e-e869-4fe9-bdf3-400cda300466
md"""
**Remark.**
You may not have heard of little Signet Bank, but if you're reading this book you've probably heard of the spin-off: Capital One.
Fairbanks and Morris's new company grew to be one of the largest credit card issuers in the industry with one of the lowest charge-off rates.
In 2000, the bank was reported to be carrying out 45,000 of these "scientific tests" as they called them.
"""

# ╔═╡ 98197071-72d5-4a5a-b707-ece0511105e0
md"""
**Remark.**
Studies giving clear quantitative demonstrations of the value of a data asset are hard to find, primarily because firms are hesitant to divulge results of strategic value.
One exception is a study by Martens and Provost (2011) assesing whether data on the specific transactions of a bank's consumers can improve models for deciding what product offers to make.
The bank built models from data to decide whom to target with offers for different products.
The investigation examined a number of different types of data and their effects on predictive performance.
Sociodemographic data provide a substantial ability to model the sort of consumers that are more likely to purchase one product or another.
However, sociodemographic data only go so far; after a certain volume of data, no additional advantage is conferred.
In contrast, detailed data on customers' individual (anonymized) transactions improve performance substantially over just using sociodemographic data.
The relationship is clear and striking and--significantly, for the point here--the predictive performance continues to improve as more data are used, increasing throughout the range investigated by Martens and Provost with no sign of abating.
This has an important implication: banks with bigger data assets may have an important strategic advantage over their smaller competitors.
If these trends generalize, and the banks are able to apply sophisticated analytics, banks with bigger data assets should be better able to identify the best customers for individual products.
The net result will be either increased adoption of the bank's products, decreased cost of customer acquisition, or both.
"""

# ╔═╡ 126698b3-7537-4206-b2af-95984a7c9650
md"""
**Remark.**
The idea of data as a strategic asset is certainly not limited to Capital One, nor even to the banking industry.
Amazon was able to gather data early on online customers, which has created significant switching costs: consumers find value in the rankings and recommendations that Amazon provides.
Amazon therefore can retain customers more easily, and can even charge a premium (Brynjolfsson & Smith, 2000).
Harrah's casinos famously invested in gathering and mining data on gamblers, and moved itself from a small player in the casino business in the mid-1990s to the acquisition of Caesar's Entertainment in 2005 to become the world's largest gambling company.
The huge valuation of Facebook has been credited to its vast and unique data assets (Sengupta, 2012), including both information about individuals and their likes, as well as information about the structure of the social network.
Information about network structure has been shown to be important to predicting and has been shown to be remarkably helpful in building models of who will buy certain products (Hill, Provost, & Volinsky, 2006).
It is clear that Facebook has a remarkable data asset; whether they have the right data science strategies to take full advantage of it is an open question.
"""

# ╔═╡ 9132e45c-cb4c-4112-a1c9-795e3b7b31eb
md"""
**Remark.**
In the book we will discuss in more detail many of the fundamental concepts behind these success stories, in exploring the principles of data mining and data-analytic thinking.
"""

# ╔═╡ 76c1f1be-8610-4b75-ad6f-af910ddfb26e
md"## Data-Analytic Thinking"

# ╔═╡ 94f90456-5a44-4a8b-bb98-7ab43f2ded73
md"""
**Remark.**
Analyzing case studies such as the churn problem improves our ability to approach problems "data-analytically."
Promoting such a perspective is a primary goal of this book.
When faced with a business problem, you should be able to assess whether and how data can improve performance.
We will discuss a set of fundamental concepts and principles that facilitate careful thinking.
We will develop frameworks to structure the analysis so that it can be done systematically.
"""

# ╔═╡ fdcf3e4d-f5ee-48f0-9ac1-31b27be56d1c
md"""
**Remark.**
As mentioned above, it is important to understand data science even if you never intend to do it yourself, because data analysis is now so critical to business strategy.
Businesses increasingly are driven by data analytics, so there is great professional advantage in being able to interact competently with and within such businesses.
Understanding the fundamental concepts, and having frameworks for organizing data-analytic thinking not only will allow one to interact competently, but will help to envision opportunities for improving data-driven decision-making, or to see data-oriented competitive threats.
"""

# ╔═╡ d2d259a0-2fa2-4408-b736-cf70f11d6784
md"""
**Remark.**
Firms in many traditional industries are exploiting new and existing data resources for competitive advantage.
They employ data science teams to bring advanced technologies to bear to increase revenue and decrease costs.
In addition, many new companies are being developed with data mining as a key strategic component.
Facebook and Twitter, along with many other "Digital 100" companies (*Business Insider*, 2012), have high valuations due primarily to data assets they are committed to capturing or creating.
Increasingly, managers need to oversee analytics teams and analysis projects, marketers have to organize and understand data-driven campaigns, venture capitalists must be able to invest wisely in businesses with substantial data assets, and business strategists must be able to devise plans that exploit data.
"""

# ╔═╡ 49cb3c07-2274-4153-bc62-561eedbdf354
md"""
**Remark.**
As a few examples, if a consultant presents a proposal to mine a data asset to improve your business, you should be able to assess whether the proposal makes sense.
If a competitor announces a new data partnership, you should recognize when it may put you at a strategic disadvantage.
Or, let's say you take a position with a venture firm and your first project is to assess the potential for investing in an advertising company.
The founders present a convincing argument that they will realize significant value from a unique body of data they will collect, and on that basis are arguing for a substantially higher valuation.
Is this reasonable?
With an understanding of the fundamentals of data science you should be able to devise a few probing questions to determine whether their valuation arguments are plausible.
"""

# ╔═╡ 0ab3a635-2b29-4eff-b8b2-46052acc37eb
md"""
**Remark.**
On a scale less grand, but probably more common, data analytics projects reach into all business units.
Employees throughout these units must interact with the data science team.
If these employees do not have a fundamental grounding in the principles of data-analytic thinking, they will not really understand what is happening in the business.
This lack of understanding is much more damaging in data science projects than in other technical projects, because the data science is supporting improved decision-making.
As we will describe in the next chapter, this requires a close interaction between the data scientists and the business people responsible for the decision-making.
Firms where the business people do not understand what the data scientists are doing are at a substantial disadvantage, because they waste time and effort or, worse, because they ultimately make wrong decisions.
"""

# ╔═╡ 0175c0f1-fdea-4d88-afbc-0587ea0d08d9
md"""
!!! note "The need for managers with data-analytic skills"

    The consulting firm McKinsey and Company estimates that "there will be a shortage of talent necessary for organizations to take advantage of big data. By 2018, the United States alone could face a shortage of 140,000 to 190,000 people with deep analytical skills as well as 1.5 million managers and analysts with the know-how to use the analysis of big data to make effective decisions." (Manyika, 2011).
    Why 10 times as many managers and analysts than those with deep analytical skills?
    Surely data scientists aren't so difficult to manage that they need 10 managers!
    The reason is that a business can get leverage from a data science team for making better decisions in multiple areas of business.
    However, as McKinsey is pointing out, the managers in those areas need to understand the fundamentals of data science to effectively get that leverage.
"""

# ╔═╡ b5b6f2a0-b911-4443-9618-d6c6c2871199
md"## This Book"

# ╔═╡ 736921d7-8312-4df2-9505-501728fb575c
md"""
**Remark.**
This book concentrates on the fundamentals of data science and data mining.
These are a set of principles, concepts, and techniques that structure thinking and analysis.
They allow us to understand data science processes and methods surprisingly deeply, without needing to focus in depth on the large number of specific data mining algorithms.
"""

# ╔═╡ 3e520147-e417-42b3-9637-e65f3f40b317
md"""
**Remark.**
There are many good books covering data mining algorithms and techniques, from practical guides to mathematical and statistical treatments.
This book instead focuses on the fundamental concepts and how they help us to think about problems where data mining may be brought to bear.
That doesn't mean that we will ignore the data mining techniques; many algorithms are exactly the embodiment of the basic concepts.
But with only a few exceptions we will not concentrate on the deep technical details of how the techniques actually work; we will try to provide just enough detail so that you will understand what the techniques do, and how they are based on the fundamental principles.
"""

# ╔═╡ 21dd4b97-41b5-428e-8241-6eac6395246d
md"## Data Mining and Data Science, Revisited"

# ╔═╡ a5cae07c-cd71-46ea-993a-4010e1442f8b
md"""
**Remark.**
This book devotes a good deal of attention to the extraction of useful (nontrivial, hopefully actionable) patterns or models from large bodies of data (Fayyad, Piatetsky-Shapiro, & Smyth, 1996), and to the fundamental data science principles underlying such data mining.
In our churn-prediction example, we would like to *take the data* on prior churn and *extract patterns*, for example patterns of behavior, *that are useful*--that can help us to predict those customers who are more likely to leave in the future, or that can help us to design better services.
"""

# ╔═╡ f28d6a41-3d15-4bd0-8ff5-96d5989220ce
md"""
**Remark.**
The fundamental concepts of data science are drawn from many fields that study data analytics.
We introduce these concepts throughout the book, but let's briefly discuss a few now to get the basic flavor.
We will elaborate on all of these and more in later chapters.
"""

# ╔═╡ 666b7379-d557-490e-b297-1203f552e7b8
md"""
**Remark.**
Fundamental concept: *Extracting useful knowledge to solve business problems can be treated systematically by following a process with reasonably well-defined stages*.
The Cross Industry Standard Process for Data Mining, abbreviated CRISP-DM (CRISP-DM Project, 2000), is one codification of this process.
Keeping such a process in mind provides a framework to structure our thinking about data analytics problems.
For example, in actual practice one repeatedly sees analytical "solutions" that are not based on careful analysis of the problem or are not carefully evaluated.
Structured thinking about analytics emphasizes these often under-appreciated aspects of supporting decision-making with data.
Such structured thinking also contrasts critical points where human creativity is necessary versus points where high-powered analytical tools can be brought to bear.
"""

# ╔═╡ f5987ad0-02c9-46c8-92f9-5b65ff4fd353
md"""
**Remark.**
Fundamental concept: *From a large mass of data, information technology can be used to find informative descriptive attributes of entities of interest*.
In our churn example, a customer would be an entity of interest, and each customer might be described by a large number of attributes, such as usage, customer service history, and many other factors.
Which of these actually gives us information on the customer's likelihood of leaving the company when her contract expires?
How much information?
Sometimes this process is referred to roughly as finding variables that "correlate" with churn (we will discuss this notion precisely).
A business analyst may be able to hypothesize some and test them, and there are tools to help facilitate this experimentation (see "Other Analytics Techniques and Technologies" on page 35).
Alternatively, the analyst could apply information technology to automatically discover informative attributes--essentially doing large-scale automated experimentation.
Further, as we will see, this concept can be applied recursively to build models to predict churn based on multiple attributes.
"""

# ╔═╡ a85a5172-ccce-42df-a691-211ba8ab578c
md"""
**Remark.**
Fundamental concept: *If you look too hard at a set of data, you will find something--but it might not generalize beyond the data you're looking at*.
This is referred to as *overfitting* a dataset.
Data mining techniques can be very powerful, and the need to detect and avoid overfitting is one of the most important concepts to grasp when applying data mining to real problems.
The concept of overfitting and its avoidance permeates data science processes, algorithms, and evaluation methods.
"""

# ╔═╡ d7879157-ecab-4285-b018-fde0f85546cf
md"""
**Remark.**
Fundamental concept: *Formulating data mining solutions and evaluating the results involves thinking carefully about the context in which they will be used*.
If our goal is the extraction of potentially *useful* knowledge, how can we formulate what is useful?
It depends critically on the application in question.
For our churn-management example, how exactly are we going to use the patterns extracted from historical data?
Should the value of the customer be taken into account in addition to the likelihood of leaving?
More generally, does the pattern lead to better decisions than some reasonable alternative?
How well would one have done by chance?
How well would one do with a smart "default" alternative?
"""

# ╔═╡ 56f6f6f0-b6e3-47ba-aab6-211c49ac8a6e
md"""
**Remark.**
These are just four of the fundamental concepts of data science that we will explore.
By the end of the book, we will have discussed a dozen such fundamental concepts in detail, and will have illustrated how they help us to structure data-analytic thinking and to understand data mining techniques and algorithms, as well as data science applications, quite generally.
"""

# ╔═╡ 81dc4811-9082-406a-9c7e-80bea01965fd
md"## Chemistry Is Not About Test Tubes: Data Science Versus the Work of the Data Scientist"

# ╔═╡ c911ecf9-cd48-4fbf-8e1d-a264a048279f
md"""
**Remark.**
Before proceeding, we should briefly revisit the engineering side of data science.
At the time of this writing, discussions of data science commonly mention not just analytical skills and techniques for understanding data but popular tools used.
Definitions of data scientists (and advertisements for positions) specify not just areas of expertise but also specific programming languages and tools.
It is common to see job advertisements mentioning data mining techniques (e.g., random forests, support vector machines), specific application areas (recommendation systems, ad placement optimization), alongside popular software tools for processing big data (Hadoop, MongoDB).
There is often little distinction between the science and the technology for dealing with large datasets.
"""

# ╔═╡ 3e1c93d0-c86d-49df-ad76-ed123d047826
md"""
**Remark.**
We must point out that data science, like computer science, is a young field.
The particular concerns of data science are fairly new and general principles are just beginning to emerge.
The state of data science may be likened to that of chemistry in the mid-19th century, when theories and general principles were being formulated and the field was largely experimental.
Every good chemist had to be a competent lab technician.
Similarly, it is hard to imagine a working data scientist who is not proficient with certain sorts of software tools.
"""

# ╔═╡ 190d3d74-e819-42ea-97b4-4d01680fe559
md"""
**Remark.**
Having said this, this book focuses on the science and not on the technology.
You will not find instructions here on how best to run massive data mining jobs on Hadoop clusters, or even what Hadoop is or why you might want to learn about it.
We focus here on the general principles of data science that have emerged.
In 10 years' time the predominant technologies will likely have changed or advanced enough that a discussion here would be obsolete, while the general principles are the same as they were 20 years ago, and likely will change little over the coming decades.
"""

# ╔═╡ 1fa31651-a351-4b30-8eb0-32f672f97944
md"## Summary"

# ╔═╡ eb625043-8fac-427f-80a2-8629803b112e
md"""
**Remark.**
This book is about the extraction of useful information and knowledge from large volumes of data, in order to improve business decision-making.
As the massive collection of data has spread through just about every industry sector and business unit, so have the opportunities for mining the data.
Underlying the extensive body of techniques for mining data is a much smaller set of fundamental concepts comprising *data science*.
These concepts are general and encapsulate much of the essence of data mining and business analytics.
"""

# ╔═╡ 4956152e-41a1-4680-a6b2-72d0553791e7
md"""
**Remark.**
Success in today's data-oriented business environment requires being able to think about how these fundamental concepts apply to particular business problems--to think data-analytically.
For example, in this chapter we discussed the principle that data should be thought of as a business asset, and once we are thinking in this direction we start to ask whether (and how much) we should invest in data.
Thus, an understanding of these fundamental concepts is important not only for data scientists themselves, but for anyone working with data scientists, employing data scientists, investing in data-heavy ventures, or directing the application of analytics in an organization.
"""

# ╔═╡ b01461cc-3d93-4282-9e86-37704c7d58da
md"""
**Remark.**
Thinking data-analytically is aided by conceptual frameworks discussed throughout the book.
For example, the automated extraction of patterns from data is a process with well-defined stages, which are the subject of the next chapter.
Understanding the process and the stages helps to structure our data-analytic thinking, and to make it more systematic and therefore less prone to errors and omissions.
"""

# ╔═╡ 5557c929-cbeb-4ec2-a041-ec6ac6d88531
md"""
**Remark.**
There is convincing evidence that data-driven decision-making and big data technologies substantially improve business performance.
Data science supports data-driven decision-making--and sometimes conducts such decision-making automatically--and depends upon technologies for "big data" storage and engineering, but its principles are separate.
The data science principles we discuss in this book also differ from, and are complementary to, other important technologies, such as statistical hypothesis testing and database querying (which have their own books and classes).
The next chapter describes some of these differences in more detail.
"""

# ╔═╡ ebc4a1c9-74bd-42c2-8761-e599fee69191
md"""
# 2. Business Problems and Data Science Solutions

**Fundamental concepts:**

- A set of canonical data mining tasks
- The data mining process
- Supervised versus unsupervised data mining
"""

# ╔═╡ 56d6b2fe-b971-4806-b22b-5f025feaacc0
md"""
**Remark.**
An important principle of data science is that data mining is a *process* with fairly well-understood stages.
Some involve the application of information technology, such as the automated discovery and evaluation of patterns from data, while others mostly require an analyst's creativity, business knowledge, and common sense.
Understanding the whole process helps to structure data mining projects, so they are closer to the systematic analyses rather than heroic endeavors driven by chance and individual acumen.
"""

# ╔═╡ 0b2168c9-7aa7-4be8-8b5f-8ceb41550ba3
md"""
**Remark.**
Since the data mining process breaks up the overall task of finding patterns from data into a set of well-defined subtasks, it is also useful for structuring discussions about data science.
In this book, we will use the process as an overarching framework for our discussion.
This chapter introduces the data mining process, but first we provide additional context by discussing common types of data mining tasks.
Introducing these allows us to be more concrete when presenting the overall process, as well as when introducing other concepts in subsequent chapters.
"""

# ╔═╡ e8a8f113-2d97-471f-894b-f81e333d2a28
md"""
**Remark.**
We close the chapter by discussing a set of important business analytics subjects that are not the focus of this book (but for which there are many other helpful books), such as databases, data warehousing, and basic statistics.
"""

# ╔═╡ bad0a719-1ccd-439e-b125-a33b5d570a00
md"## From Business Problems to Data Mining Tasks"

# ╔═╡ 190c7aa6-8153-4d4d-bb75-b04f1f4c8264
md"""
**Remark.**
Each data-driven business decision-making problem is unique, comprising its own combination of goals, desires, and even personalities.
As with much engineering, though, there are sets of common tasks that underlie the business problems.
In collaboration with business stakeholders, data scientists decomopose a business problem into subtasks.
The solutions to the subtasks can then be composed to solve the overall problem.
Some of these subtasks are unique to the particular business problem, but others are common data mining tasks.
For example, our telecommunications churn problem is unique to MegaTelCo: there are specifics of the problem that are different from churn problems of any other telecommunications firm.
However, a subtask that will likely be part of the solution to any churn problem is to estimate from historical data the probability of a customer terminating her contract shortly after it has expired.
Once the idiosyncratic MegaTelCo data have been assembled into a particular format (described in the next chapter), this probability estimation fits the mold of one very common data mining task.
We know a lot about solving the common data mining tasks, both scientifically and practically.
In later chapters, we also will provide data science frameworks to help with the decomposition of business problems and with the recomposition of the solutions to the subtasks.
"""

# ╔═╡ 177bad87-0764-4a10-bc50-580a48771783
md"""
!!! note

    A critical skill in data sciecne is the ability to decompose a data-analytics problem into pieces such that each piece matches a known atsk for which tools are available.
    Recognizing familiar problems and their solutions avoids wasting time and resources reinventing the wheel.
    It also allows people to focus attention on more interesting parts of the process that require human involvement--parts that have not been automated, so human creativity and intelligence must come into play.
"""

# ╔═╡ 4fb2a5d4-0cb6-40a5-be58-688105e16bf2
md"""
**Remark.**
Despite the large number of specific data mining algorithms developed over the years, there are only a handful of fundamentally different types of tasks these algorithms address.
It is worth defining these tasks clearly.
The next several chapters will use the first two (classification and regression) to illustrate several fundamental concepts.
In what follows, the term "an individual" will refer to an entity about which we have data, such as a customer or a consumer, or it could be an inanimate entity such as a business.
We will make this notion more precise in Chapter 3.
In many business analytics projects, we want to find "correlations" between a particular variable describing an individual and other variables.
For example, in historical data we may know which customers left the company after their contracts expired.
We may want to find out which other variables correlate with a customer leaving in the near future.
Finding such correlations are the most basic examples of classification and regression tasks.

1. *Classification* and class *probability estimation* attempt to predict, for each individual in a population, which of a (small) set of classes this individual belongs to.
   Usually the classes are mutually exclusive.
   An example classification question would be: "Among all the customers of MegaTelCo, which are likely to respond to a given offer?"
   In this example the two classes could be called `will respond` and `will not respond`.

   For a classification task, a data mining procedure produces a model that, given a new individual, determines which class that individual belongs to.
   A closely related task is *scoring* or class *probability estimation*.
   A scoring model applied to an individual produces, instead of a class prediction, a score representing the probability (or some other quantification of likelihood) that an individual brings to each class.
   In our customer response scenaio, a scoring model would be able to evaluate each individual customer and produce a score of how likely each is to respond to the offer.
   Classification and scoring are very closely related; as we shall see, a model that can do one can usually be modified to do the other.


2. *Regression* ("value estimation") attempts to estimate or predict, for each individual, the numerical value of some variable for that individual.
   An example regression question would be: "How much will a given customer use the service?"
   The property (variable) to be predicted here is *service usage*, and a model could be generated by looking at other, similar individuals in the population and their historical usage.
    A regression procedure produces a model that, given an individual, estimates the value of the particular variable specific to that individual.

    Regression is related to classification, but the two are different.
    Informally, classification predicts *whether* something will happen, whereas regression predicts *how much* something will happen.
    The difference will become clearer as the book progresses.


3. *Similarity matching* attempts to *identify* similar individuals based on data known about them.
   Similarity matching can be used directly to find similar entities.
   For example, IBM is interested in finding companies similar to their best business customers, in order to focus their sales force on the best opportunities.
   They use similarity matching based on "firmographic" data describing characteristics of the companies.
   Similarity matching is the basis for one of the most popular methods for making product recommendations (finding people who are similar to you in terms of the products they have liked or have purchased).
   Similarity measures underlie certain solutions to other data mining tasks, such as classification, regression, and clustering.
   We discuss similarity and its uses at length in Chapter 6.


4. *Clustering* attempts to *group* individuals in a population together by their similarity, but not driven by any specific purpose.
   An example clustering question would be: "Do our customers form natural groups or segments?"
   Clustering is useful in preliminary domain exploration to see which natural groups exist because these groups in turn may suggest other data mining tasks or approaches.
   Clustering also is used as input to decision-making processes focusing on questions such as: *What products should we offer or develop?*
   *How should our customer care teams (or sales teams) be structured?*
   We discuss clustering in depth in Chapter 6.


5. *Co-occurrence grouping* (also known as frequent itemset mining, association rule discovery, and market-basket analysis) attempts to find *associations* between entities based on transactions involving them.
   An example co-occurrence question would be: *What items are commonly purchased together?*
   While clustering looks at similarity between objects based on the objects' attributes, co-occurrence grouping considers similarity of objects based on their appearing together in transactions.
   For example, analyzing purchase records from a supermarket may uncover that ground meat is purchased together with hot sauce much more frequently than we might expect.
   Deciding how to act upon this discovery might require some creativity, but it could suggest a special promotion, product display, or combination offer.
   Co-occurrence of products in purchases is a common type of grouping known as market-basket analysis.
   Some *recommendation* systems also perform a type of affinity grouping by finding, for example, pairs of books that are purchased frequently by the same people ("people who bought X also bought Y").


6. *Profiling* (also known as behavior description) attempts to characterize the typical behavior of an individual, group, or population.
   An example profiling question would be: "What is the typical cell phone usage of this customer segment?"
   Behavior may not have a simple description; profiling cell phone usage might require a complex description of night and weekend airtime averaes, international usage, roaming charges, text minutes, and so on.
   Behavior can be described generally over an entire population, or down to the level of small groups or even individuals.

   Profiling is often used to establish behavioral norms for anomaly detection applications such as fraud detection and monitoring for intrusions to computer systems (such as someone breaking into your iTunes account).
   For example, if we know what kind of purchases a person typically makes on a credit card, we can determine whether a new charge on the card fits that profile or not.
   We can use the degree of mismatch as a suspicion score and issue an alarm if it is too high.


7. *Link prediction* attempts to predict connections between data items, usually by suggesting that a link should exist, and possibly also estimating the strength of the link.
   Link prediction is common in social networking systems: "Since you and Karen share 10 friends, maybe you'd like to be Karen's friend?"
   Link prediction can also estimate the strength of a link.
   For example, for recommending movies to customers one can think of a graph between customers and the movies they've watched or rated.
   Within the graph, we search for links that do *not* exist between customers and movies, but that we predict should exist and should be strong.
   These links form the basis for recommendations.


8. *Data reduction* attempts to take a large set of data and replace it with a smaller set of data that contains much of the important information in the larger set.
   The smaller dataset may be easier to deal with or to process.
   Moreover, the smaller dataset may better reveal the information.
   For example, a massive dataset on consumer movie-viewing preferences may be reduced to a much smaller dataset revealing the consumer taste preferences that are latent in the viewing data (for example, viewer genre preferences).
   Data reduction usually involves loss of information.
   What is important is the trade-off for improved insight.


9. *Causal modeling* attempts to help us understand what events or actions actually *influence* others.
   For example, consider that we use predictive modeling to target advertisements to consumers, and we observe that indeed the targeted consumers purchase at a higher rate subsequent to having been targeted.
   Was this because the advertisements influenced the consumers to purchase?
   Or did the predictive models simply do a good job of identifying those consumers who would have purchased anyway?
   Techniques for causal modeling include those involving a substantial investment in data, such as randomized controlled experiments (e.g., so-called "A/B tests"), as well as sophisticated methods for drawing causal conclusions from observational data.
   Both experimental and observational methods for causal modeling generally can be viewed as "counterfactual" analysis: they attempt to understand what would be the difference between the situations--which cannot both happen--where the "treatment" event (e.g., showing an advertisement to a particular individual) were to happen, and were not to happen.

   In all cases, a careful data scientist should always include with a causal conclusion the exact assumptions that must be made in order for the causal conclusion to hold (there *always* are such assumptions--always ask).
   When undertaking causal modeling, a business needs to weigh the trade-off of increasing investment to reduce the assumptions made, versus deciding that the conclusions are good enough given the assumptions.
   Even in the most careful randomized, controlled experimentation, assumptions are made that could render the causal conclusions invalid.
   The discovery of the "placebo effect" in medicine illustrates a notorious situation where an assumption was overlook in carefully desiggned randomized experimentation.
"""

# ╔═╡ fcaf3909-3898-4871-8af0-29b0f06dd56b
md"""
**Remark.**
Discussing all of these tasks in detail would fill multiple books.
In this book, we present a collection of the most fundamental data science principles--principles that together underlie all of these types of tasks.
We will illustrate the principles mainly using classification, regression, similarity matching, and clustering, and will discuss others when they provide important illustrations of the fundamental principles (toward the end of the book).
"""

# ╔═╡ e64ee8b7-b699-4292-9b93-fee053b490f5
md"""
**Remark.**
Consider which of these types of tasks might fit our churn-prediction problem.
Often, practitioners formulate churn prediction as a problem of finding *segments* of customers who are more or less likely to leave.
This segmentation problem sounds like a classification problem, or possibly clustering, or even regression.
To decide the best formulation, we first need to introduce some important distinctions.
"""

# ╔═╡ f471120e-3578-4f7c-9286-e4da5fbbd4d9
md"## Supervised Versus Unsupervised Methods"

# ╔═╡ 5eba154e-3610-4168-a09e-5fda1dd18af4
md"""
**Remark.**
Consider two similar questions we might ask about a customer population.
The first is: "Do our customers naturally fall into different groups?"
Here no specific purpose or *target* has been specified for the grouping.
When there is no such target, the data mining problem is referred to as *unsupervised*.
Contrast this with a slightly different question: "Can we find groups of customers who have particularly high likelihoods of canceling their service soon after their contracts expire?"
Here there is a specific target defined: will a customer leave when her contract expires?
In this case, segmentation is being done for a specific reason: to take action based on likelihood of churn.
This is called a *supervised* data mining problem.
"""

# ╔═╡ 63a07f9a-3cb2-477e-bd00-6ddab4e99209
md"""
!!! note "A note on the terms: Supervised and unsupervised learning"

    The terms *supervised* and *unsupervised* were inherited from the field of machine learning.
    Metaphorically, a teacher "supervises" the learner by carefully providing target information along with a set of examples.
    An unsupervised learning task might involve the same set of examples but would not include the target information.
    The learner would be given no information about the purpose of the learning, but would be left to form its own conclusions about what the examples have in common.
"""

# ╔═╡ 0a3145bc-ba2a-46ef-9357-8440094dd9b3
md"""
**Remark.**
The difference between these questions is subtle but important.
If a specific target can be provided, the problem can be phrased as a supervised one.
Supervised tasks require different techniques than unsupervised tasks do, and the results often are much more useful.
A supervised learning technique is given a specific purpose for the grouping--predicting the target.
Clustering, an unsupervised task, produces groupings based on similarities, but there is no guarantee that these similarities are meaningful or will be useful for any particular purpose.
"""

# ╔═╡ 31bf5f8d-57d3-4dd1-8235-b11c8f98a739
md"""
**Remark.**
Technically, another condition must be met for supervised data mining: there must be *data* on the target.
It is not enough that the target information exist in principle; it must also exist in the data.
For example, it might be useful to know whether a given customer will stay for at least six months, but if in historical data this retention information is missing or incomplete (if, say, the data are only retained for two months) the target values cannot be provided.
Acquiring data on the target often is a key data science investment.
The value for the target variable for an individual is often called the individual's *label*, emphasizing that often (not always) one must incure expense to actively label the data.
"""

# ╔═╡ 5ff793f8-ec32-45d1-9073-0c992e7c18d8
md"""
**Remark.**
Classification, regression, and causal modeling generally are solved with supervised methods.
Similarity matching, link prediction, and data reduction could be either.
Clustering, co-occurrence grouping, and profiling generally are unsupervised.
The fundamental principles of data mining that we will present underlie all these types of technique.
"""

# ╔═╡ 1a0cfb05-5f65-4073-b423-dbb0ea04d06e
md"""
**Remark.**
Two main subclasses of *supervised* data mining, classification and regression, are distinguished by the type of target.
Regression involves a numeric target while classification involves a categorical (often binary) target.
Consider these similar questions we might address with supervised data mining:

- *"Will this customer purchase service S1 if given incentive I?"*

  - This is a classification problem because it has a binary target (the customer either purchases or does not).

- *"Which service package (S1, S2, or none) will a customer likely purchase if given incentive I?"*

  - This is also a classification problem, with a three-valued target.

- *"How much will this customer use the service?"*

  - This is a regression problem because it has a numeric target.
    The target variable is the amount of usage (actual or predicted) per customer.

There are subtleties among these questions that should be brought out.
For business applications we often want a numerical *prediction* over a categorical target.
In the churn example, a basic yes/no prediction of whether a customer is likely to continue to subscribe to the service may not be sufficient; we want to model the *probability* that the customer will continue.
This is still considered classification modeling rather than regression because the underlying target is categorical.
Where necessary for clarity, this is called "class probability estimation."
"""

# ╔═╡ 53caff8e-f4c4-4d1a-b45d-89648a247b3c
md"""
**Remark.**
A vital part in the early stages of the data mining process is (i) to decide whether the line of attack will be supervised or unsupervised, and (ii) if supervised, to produce a precise definition of a target variable.
This variable must be a specific quantity that will be the focus of the data mining (and for which we can obtin values for some example data).
We will return to this in Chapter 3.
"""

# ╔═╡ 54a30613-5b68-48bd-8ccf-eaf0e08544a5
md"## Data Mining and Its Results"

# ╔═╡ 4865f72d-611d-442e-873c-aab88893b914
md"""
**Remark.**
There is another important distinction pertaining to mining data: the difference between (1) mining the data to find patterns and build models, and (2) *using* the results of data mining.
Students often confuse these two processes when studying data science, and managers sometimes confuse them when discussing business analytics.
The use of data mining results should influence and inform the data mining process itself, but the two should be kept distinct.
"""

# ╔═╡ 42ae8dc4-d4af-4025-bec6-3e0929520981
md"""
**Remark.**
In our churn example, consider the deployment scenario in which the results will be used.
We want to use the model to predict which of our customers will leave.
Specifically, assume that data mining has created a class probability estimation model ``M``.
Given each existing customer, described using a set of characteristics, ``M`` takes these characteristics as input and produces a score or probability estimate of attrition.
This is the *use* of the results of data mining.
The data mining produces the model ``M`` from some other, often historical, data.
"""

# ╔═╡ f4692e56-7530-4268-8428-1c08309d1926
md"""
**Figure 2-1.**
*Data mining versus the use of data mining results.*
*The upper half of the figure illustrates the mining of historical data to produce a model.*
*Importantly, the historical data have the target ("class") value specified.*
*The bottom half shows the result of the data mining in use, where the model is applied to new data for which we do not know the class value.*
*The model predicts both the class value and the probability that the class variable will take on that value.*
"""

# ╔═╡ 402b974f-b979-4b0b-bd6c-e4a8ee513dcc
md"""
**Remark.**
Figure 2-1 illustrates these two phases.
Data mining produces the probability estimation model, as shown in the top half of the figure.
In the use phase (bottom half), the model is applied to a new, unseen case and it generates a probability estimate for it.
"""

# ╔═╡ a24e28ee-2ff0-47ec-83b6-b2b4ed5a599f
md"## The Data Mining Process"

# ╔═╡ a03c9259-94fa-4fb2-928d-232fa8a53c4f
md"""
**Remark.**
Data mining is a craft.
It involves the application of a substantial amount of science and technology, but the proper application still involves art as well.
But as with many mature crafts, there is a well-understood process that places a structure on the problem, allowing reasonable consistency, repeatability, and objectiveness.
A useful codification of the data mining process is given by the Cross Industry Standard Process for Data Mining (CRISP-DM; Shearer, 2000), illustrated in Figure 2-2.
"""

# ╔═╡ ab996106-e600-4d39-9a02-bdd98efb3167
md"""
**Figure 2-2.**
*The CRISP data mining process.*
"""

# ╔═╡ b4e04050-4d22-431e-93af-a8058b9ff8ae
md"""
**Remark.**
This process diagram makes explicit the fact that iteration is the rule rather than the exception.
Going through the process once without having solved the problem is, generally speaking, not a failure.
Often the entire process is an exploration of the data, and after the first iteration the data science team knows much more.
The next iteration can be much more well-informed.
Let's now discuss the steps in detail.
"""

# ╔═╡ 8b7d43d9-aa53-4258-9bf6-ee27f143ab70
md"### Business Understanding"

# ╔═╡ 57af7a33-ab66-42a3-a9ed-8f0fe46d3299
md"""
**Remark.**
Initially, it is vital to understand the problem to be solved.
This may seem obvious, but business projects seldom come pre-packaged as clear and unambiguous data mining problems.
Often recasting the problem and designing a solution is an iterative process of discovery.
The diagram shown in Figure 2-2 represents this as cycles within a cycle, rather than as a simple linear process.
The initial formulation may not be complete or optimal so multiple iterations may be necessary for an acceptable solution formulation to appear.
"""

# ╔═╡ 7ec6cd37-7351-4362-a41c-f7a1f2bea6e6
md"""
**Remark.**
The Business Understanding stage represents a part of the craft where the analysts' creativity plays a large role.
Data science has some things to say, as we will describe, but often the key to a great success is a creative problem formulation by some analyst regarding how to cast the business problem as one or more data science problems.
High-level knowledge of the fundamentals helps creative business analysts see novel formulations.
"""

# ╔═╡ 6d4909b0-0962-443f-94ef-ba5f5f261ffa
md"""
**Remark.**
We have a set of powerful tools to solve particular data mining problems: the basic data mining tasks discussed in "From Business Problems to Data Mining Tasks" on page 19.
Typically, the early stages of the endeavor involve designing a solution that takes advantages of these tools.
This can mean structuring (engineering) the problem such that one or more subproblems involve building models for classification, regression, probability estimation, and so on.
"""

# ╔═╡ 0b43600a-237e-4c67-a247-f5d182df2d39
md"""
**Remark.**
In this first stage, *the design team should think carefully about the use scenario*.
This itself is one of the most important concepts of data science, to which we have devoted two entire chapters (Chapter 7 and Chapter 11).
What exactly do we want to do?
How exactly would we do it?
What parts of this use scenario constitute possible data mining models?
In discussing this in more detail, we will begin with a simplified view of the use scenario, but as we go forward we will loop back and realize that often the use scenario must be adjusted to better reflect the actual business need.
We will present conceptual tools to help our thinking here, for example framing a business problem in terms of expected value can allow us to systematically decompose it into data mining tasks.
"""

# ╔═╡ 71c9663e-f05c-4c34-affb-a465c2b13b3a
md"### Data Understanding"

# ╔═╡ 11adde8c-2b29-4ad6-8be4-079c62b08077
md"""
**Remark.**
If solving the business problem is the goal, the data comprise the available raw material from which the solution will be built.
It is important to understand the strengths and limitations of the data because rarely is there an exact match with the problem.
Historical data often are collected for purposes unrelated to the current business problem, or for no explicit purpose at all.
A customer database, a transaction database, and a marketing response database contain different information, may cover different intersecting populations, and may have varying degrees of reliability.
"""

# ╔═╡ 05f31d80-cad9-40a7-a6ca-965d278a47b9
md"""
**Remark.**
It is also common for the *costs* of data to vary.
Some data will be available virtually for free while others will require effort to obtain.
Some data may be purchased.
Still other data simply won't exist and will require entire ancillary projects to arrange their collection.
A critical part of the data understanding phase is estimating the costs and benefits of each data source and deciding whether further investment is merited.
Even after all datasets are acquired, collating them may require additional effort.
For example, customer records and product identifiers are notoriously variable and noisy.
Cleaning and matching customer records to ensure only one record per customer is itself a complicated analytics problem (Hernández & Stolfo, 1995; Elmagarmid, Ipeirotis, & Verykios, 2007).
"""

# ╔═╡ 8a511713-00f9-47da-b713-4d270bb847ec
md"""
**Remark.**
As data understanding progresses, solution paths may change direction in response, and team efforts may even fork.
Fraud detection provides an illustration of this.
Data mining has been used extensively for fraud detection, and many fraud detection problems involve classic supervised data mining tasks.
Consider the task of catching credit card fraud.
Charges show up on each customer's account, so fraudulent charges are usually caught--if not initially by the company, then later by the customer when account activity is reviewed.
We can assume that nearly all fraud is identified and reliably labeled, since the legitimate customer and the person perpetrating the fraud are different people and have opposite goals.
Thus credit card transactions have reliable labels (*fraud* and *legitimate*) that may serve as targets for a supervised technique.
"""

# ╔═╡ 807969e2-f8cb-4aea-b37f-938a2592784a
md"""
**Remark.**
Now consider the related problem of catching Medicare fraud.
This is a huge problem in the United States costing billions of dollars annually.
Though this may seem like a conventional fraud detection problem, as we consider the relationship of the business problem to the data, we realize that the problem is significantly different.
The perpetrators of fraud--medical providers who submit false claims, and sometime their patients--are also legitimate service providers and users of the billing system.
Those who commit fraud are a subset of the legitimate users; there is no separate disinterested party who will declare exactly what the "correct" charges should be.
Consequently the Medicare billing data have no reliable target variable indicating fraud, and a supervised learning approach that could work for credit card fraud is not applicable.
Such a problem usually requires unsupervised approaches such as profiling, clustering, anomaly detection, and co-occurrence grouping.
"""

# ╔═╡ ed25fe62-fa1b-44f5-862a-b3a5eb5683dd
md"""
**Remark.**
The fact that both of these are fraud detection problems is superficial similarity that is actually misleading.
In data understanding we need to dig beneath the surface to uncover the structure of the business problem and the data that are available, and then match them to one or more data mining tasks for which we may have substantial science and technology to apply.
It is not unusual for a business problem to contain several data mining tasks, often of different types, and combining their solutions will be necessary (see Chapter 11).
"""

# ╔═╡ 8276facf-e696-4fbc-88b7-87c3da486063
md"### Data Preparation"

# ╔═╡ 04934e34-2e69-403b-9a46-a5b5b29d132e
md"""
**Remark.**
The analytic technologies that we can bring to bear are powerful but they impose certain requirements on the data they use.
They often require data to be in a form different from how the data are provided naturally, and some conversion will be necessary.
Therefore a data preparation phase often proceeds along with data understanding, in which the data are manipulated and converted into forms that yield better results.
"""

# ╔═╡ a437a966-5820-43e8-b601-09d6f57f9902
md"""
**Remark.**
Typical examples of data preparation are converting data to tabular format, removing or inferring missing values, and converting data to different types.
Some data mining techniques are designed for symbolic and categorical data, while others handle only numeric values.
In addition, numerical values must often be normalized or scaled so that they are comparable.
Standard techniques and rules of thumb are available for doing such conversions.
Chapter 3 discusses the most typical format for mining data in some detail.
"""

# ╔═╡ 3a4a31c9-a54f-40b1-b77e-5449a8f76b2f
md"""
**Remark.**
In general, though, this book will not focus on data preparation techniques, which could be the topic of a book by themselves (Pyle, 1999).
We will define basic data formats in following chapters, and will only be concerned with data preparation details when they shed light on some fundamental principle of data science or are necessary to present a concrete example.
"""

# ╔═╡ 4fc9de70-68b3-4350-ad51-4d4ef73ed991
md"""
!!! note

    More generally, data scientists may spend considerable time early in the process defining the variables used later in the process.
    This is one of the main points at which human creativity, common sense, and business knowledge come into play.
    Often the quality of the data mining solution rests on how well the analysts structure the problems and craft the variables (and sometimes it can be surprisingly hard for them to admit it).
"""

# ╔═╡ 6d2f8ecd-9df5-4af4-88a5-c765f8d8d78b
md"""
**Remark.**
One very general and important concern during data preparation is to beware of "leaks" (Kaufman et al. 2012).
A leak is a situation where a variable collected in historical data gives information on the target variable--information that appears in historical data but is not actually available when the decision has to be made.
As an example, when predicting whether at a particular point in time a website visitor would end her session or continue surfing to another page, the variable "total number of webpages visited in the session" is predictive.
However, the total number of webpages visited in the session would not be known until after the session was over (Kohavi et al., 2000)--at which point one would know the value for the target variable!
As another illustrative example, consider predicting whether a customer *will* be a "big spender"; knowing the categories of the items purchased (or worse, the amount of tax paid) are very predictive, but are not known at decision-making time (Kohavi & Parekh, 2003).
Leakage must be considered carefully during data preparation, because data preparation typically is performed after the fact--from historical data.
We present a more detailed example of a real leak that was challenging to find in Chapter 14.
"""

# ╔═╡ f1ce3bf2-e1b8-4ce7-81b8-fcf1949a744c
md"### Modeling"

# ╔═╡ 03e9fd5d-878c-4129-9d0a-0303c920a453
md"""
**Remark.**
Modeling is the subject of the next several chapetrs and we will not dwell on it here, except to say that the output of modeling is some sort of model or pattern capturing regularities in the data.
"""

# ╔═╡ 7b720bb5-d0de-45bc-aa06-b98e8faa3d65
md"""
**Remark.**
The modeling stage is the primary place where data mining techniques are applied to the data.
It is important to have some understasnding of the fundamental ideas of data mining, including the sorts of techniques and algorithms that exist, because this is the part of the craft where the most science and technology can be brought to bear.
"""

# ╔═╡ 3b922b2e-f691-4874-9c32-b4e8741b9021
md"### Evaluation"

# ╔═╡ 03753567-98e5-4b0a-a0fc-68c6b3ff5a3c
md"""
**Remark.**
The purpose of the evaluation stage is to assess the data mining results rigorously and to gain confidence that they are valid and reliable before moving on.
If we look hard enough at any dataset we will find patterns, but they may not survive careful scrutiny.
We would like to have confidence that the models and patterns extracted from the data are true regularities and not just idiosyncrasies or sample anomalies.
It is possible to deploy results immediately after data mining but this is inadvisable; it is usually far easier, cheaper, quicker, and safer to test a model first in a controlled laboratory setting.
"""

# ╔═╡ 0d03cb18-2464-431b-96d6-a7fc055ea941
md"""
**Remark.**
Equally important, the evaluation stage also serves to help ensure that the model satisfies the original business goals.
Recall that the primary goal of data science for business is to support decision making, and that we started the process by focusing on the business problem we would like to solve.
Usually a data mining solution is only a piece of the larger solution, and it needs to be evaluated as such.
Further, even if a model passes strict evaluation tests in "in the lab," there may be external considerations that make it impractical.
For example, a common flaw with detection solutions (such as fraud detection, spam detection, and intrusion monitoring) is that they produce too many false alarms.
A model may be extremely accurate (>99%) by laboratory standards, but evaluation in the actual business context may reveal that it still produces too many false alarms to be economically feasible.
(How much would it cost to provide the staff to deal with all those false alarms? What would be the cost in customer dissatisfaction?)
"""

# ╔═╡ 5ef20914-3376-4ae8-9381-f2802dacac13
md"""
**Remark.**
Evaluating the results of data mining includes both quantitative and qualitative assessments.
Various stakeholders have interest in the business decision-making that will be accomplished or supported by the resultant models.
In many cases, these stakeholders need to "sign off" on the deployment of the models, and in order to do so need to be satisfied by the quality of the model's decisions.
What that means varies from application to application, but often stakeholders are looking to see whether the model is going to do more good than harm, and especially that the model is unlikely to make catastrophic mistakes.
To facilitate such qualitative assessment, the data scientist must think about the *comprehensibility* of the model to stakeholders (not just to the data scientists).
And if the model itself is not comprehensible (e.g., maybe the model is a very complex matheical formula), how can the data scientists work to make the behavior of the model be comprehensible.
"""

# ╔═╡ c5d3c20b-1aa7-4cfa-8acc-c143c0ecf047
md"""
**Remark.**
Finally, a comprehensive evaluation framework is important because getting detailed information on the performance of a deployed model may be difficult or impossible.
Often there is only limited access to the deployment environment so making a comprehensive evaluation "in production" is difficult.
Deployed systems typically contain many "moving parts," and assessing the contribution of a single part is difficult.
Firms with sophisticated data science teams wisely build testbed environments that mirror production data as closely as possible, in order to get the most realistic evaluations before taking the risk of deployment.
"""

# ╔═╡ 61e561a1-4714-41c6-a9f7-fe1323ca82b0
md"""
**Remark.**
Nonetheless, in some cases we may want to extend evaluation into the development environment, for example by instrumenting a live system to be able to conduct randomized experiments.
In our churn example, if we have decided from laboratory tests that a data mined model will give us better churn reduction, we may want to move on to an "in vivo" evaluation, in which a live system randomly applies the model to some customers while keeping other customers as a control group (recall our discussion of causal modeling from Chapter 1).
Such experiments must be designed carefully, and the technical details are beyond the scope of this book.
The interested reader could start with the lessons-learned articles by Ron Kohavi and his coauthors (Kohavi et al., 2007, 2009, 2012).
We may also want to instrument deployed systems for evaluations to make sure that the world is not changing to the detriment of the model's decision-making.
For example, behavior can change--in some cases, like fraud or spam, in direct response to the deployment of models.
Additionally, the output of the model is critically dependent on the input data; input data can change in format and in substance, often without any alerting of the data science team.
Raeder et al. (2012) present a detailed discussion of system design to help deal with these and other related evaluation-in-deployment issues.
"""

# ╔═╡ 4c1abd81-98c3-4a9b-bad3-98bbc37512a2
md"### Deployment"

# ╔═╡ 3e2c25e0-1b85-43d3-9894-55303861bad6
md"""
**Remark.**
In deployment the results of data mining--and increasingly the data mining techniques themselves--are put into real use in order to realize some return on investment.
The clearest cases of deployment involve implementing a predictive model in some information system or business process.
In our churn example, a model for predicting the likelihood of churn could be integrated with the business process for churn management--for example, by sending special offers to customers who are predicted to be particularly at risk.
(We will discuss this in increasing detail as the book proceeds.)
A new fraud detection model may be built into a workforce management information system, to monitor accounts and create "cases" for fraud analysts to examine.
"""

# ╔═╡ bd88bcd5-5f77-456f-ad2f-2dc5e24807f8
md"""
**Remark.**
Increasingly, the data mining techniques themselves are deployed.
For example, for targeting online advertisements, systems are deployed that automatically build (and test) models in production when a new advertising campaign is presented.
Two main reasons for deploying the data mining system itself rather than the models produced by a data mining system are (i) the world may change faster than the data science team can adapt, as with fraud and intrusion detection, and (ii) a business has too many modeling tasks for their data science team to manually curate each model individually.
In these cases, it may be best to deploy the data mining phase into production.
In doing so, it is critical to instrument the process to alert the data science team of any seeming anomalies and to provide fail-safe operation (Raeder et al., 2012).
"""

# ╔═╡ 7e59ab0f-edf4-4e00-82a5-d14ca466125b
md"""
!!! note

    Deployment can also be much less "technical."
    In a celebrated case, data mining discovered a set of rules that could help to quickly diagnose and fix a common error in industrial printing.
    The deployment succeeded simply by taping a sheet of paper containing the rules to the side of the printers (Evans & Fisher, 2002).
    Deplyoment can also be much more subtle, such as a change to data acquisition procedures, or a change to strategy, marketing, or operations resulting from insight gained from mining the data.
"""

# ╔═╡ 58b15450-90e7-475c-ad2d-dbb6a80021d9
md"""
**Remark.**
Deploying a model into a production system typically requires that the model be recoded for the production environment, usually for greater speed or compatibility with an existing system.
This may incur substantial expense and investment.
In many cases, the data science team is responsible for producing a working prototype, along with its evaluation.
These are passed to a development team.
"""

# ╔═╡ b7ceb11b-46fb-4192-919a-b6d84c3c8832
md"""
!!! note

    Practically speaking, there are risks with "over the wall" transfers from data science to development.
    It may be helpful to remember the maxim: "Your model is not what the data scientists design, it's what the engineers build."
    From a management perspective, it is advisable to have members of the development team involved early on in the data science project.
    They can begin as advisors, providing critical insight to the data science team.
    Increasingly in practice, these particular developers are "data science engineers"--software engineers who have particular expertise both in the production systems and in data science.
    These developers gradually assume more responsibility as the project matures.
    At some point the developers will take the lead and assume ownership of the product.
    Generally, the data scientists should still remain involved in the project into final deployment, as advisors or as developers depending on their skills.
"""

# ╔═╡ 8040a851-518a-4302-af26-6f1092ce92a6
md"""
**Remark.**
Regardless of whether deployment is successful, the process often returns to the Business Understanding phase.
The process of mining data produces a great deal of insight into the business problem and the difficulties of its solution.
A second iteration can yield an improved solution.
Just the experience of thinking about the business, the data, and the performance goals often leads to new ideas for improving business performance, and even new lines of business or new ventures.
"""

# ╔═╡ fbb576c0-acee-4282-8905-057c2d43da9c
md"""
**Remark.**
Note that it is not necessary to fail in deployment to start the cycle again.
The Evaluation may reveal that results are not good enough to deploy, and we need to adjust the problem definition or get different data.
This is represented by the "shortcut" link from Evaluation back to Business Understanding in the process diagram.
In practice, there should be shortcuts back from each stage to each prior one because the process always retains some exploratory aspects, and a project should be flexible enough to revisit prior steps based on discoveries made.
"""

# ╔═╡ 86663f46-ab54-44e7-ae26-116386d409e5
md"## Implications for Managing the Data Science Team"

# ╔═╡ 530794bb-b165-482b-bf16-a743ef395918
md"## Other Analytics Techniques and Technologies"

# ╔═╡ 5b9bd62d-4036-4552-8d5b-cd64bda0b544
md"### Statistics"

# ╔═╡ e2276d97-9c8e-4aec-8f15-5e62f1cdb8ae
md"### Database Querying"

# ╔═╡ 42b7bfe1-258e-4bd8-90e2-2a16b9ecd838
md"### Data Warehousing"

# ╔═╡ e8e0485d-1143-49a0-a06f-e36db819897e
md"### Regression Analysis"

# ╔═╡ 26bfa3ec-31ce-4359-b798-3507fd01ea3d
md"### Machine Learning and Data Mining"

# ╔═╡ eeac5855-dc64-4045-b05f-9f03c946cfc4
md"### Answering Business Questions with These Techniques"

# ╔═╡ 5fbec25a-06ab-42f6-b18c-0efe0f2bcc60
md"## Summary"

# ╔═╡ 02760ad7-786c-4d2c-bd47-e79a912ff556
md"""
# 3. Introduction to Predictive Modeling: From Correlation to Supervised Segmentation

**Fundamental concepts:**

- Identifying informative attributes
- Segmenting data by progressive attribute selection

**Exemplary techniques:**

- Finding correlations
- Attribute/variable selection
- Tree induction
"""

# ╔═╡ 4f71c117-89fe-4112-b77a-778de3c4b17c
md"## Models, Induction, and Prediction"

# ╔═╡ 4e835f63-07fd-4bc2-bbd6-63eeaf17af70
md"## Supervised Segmentation"

# ╔═╡ 5442f227-e7ad-4500-9223-689e109ffaa2
md"### Selecting Informative Attributes"

# ╔═╡ 505f4e84-7136-41d5-8139-65f813e57a0b
md"### Example: Attribute Selection with Information Gain"

# ╔═╡ 69257572-7804-42ce-ad03-ff93e092586a
md"### Supervised Segmentation with Tree-Structured Models"

# ╔═╡ 25da6efa-a107-4936-9d90-4b86657c5190
md"## Visualizing Segmentations"

# ╔═╡ 40492856-2a50-45a7-8244-b0a02621154b
md"## Trees as Sets of Rules"

# ╔═╡ 937bbae9-1100-4ea8-8e1b-6e2a84cbc437
md"## Probability Estimation"

# ╔═╡ 08c2ebcd-1f7c-4739-b532-11ad2c6e6634
md"## Example: Addressing the Churn Problem with Tree Induction"

# ╔═╡ d68c0a16-1363-4c21-9faa-924ad71b64fb
md"## Summary"

# ╔═╡ c8a05396-766a-4efc-be47-c99a041f7474
md"""
# 4. Fitting a Model to Data

**Fundamental concepts:**

- Finding "optimal" model parameters based on data
- Choosing the goal for data mining
- Objective functions 
- Loss functions

**Exemplary techniques:**

- Linear regression
- Logistic regression
- Support-vector machines
"""

# ╔═╡ f9c2e795-3369-4885-9dc1-c0920c94b20f
md"## Classification via Mathematical Functions"

# ╔═╡ a3b90d4b-0e84-49b9-832d-20b7e1d8d9da
md"### Linear Discriminant Functions"

# ╔═╡ b9ba8e0e-ddae-4f06-b2c8-7eb1be4428d9
md"### Optimizing an Objective Function"

# ╔═╡ 5f8cc300-a668-4716-90c6-18b3724c9415
md"### An Example of Mining a Linear Discriminant from Data"

# ╔═╡ 34bf3f9a-cd02-45cc-bd4e-614b3c1efdc2
md"### Linear Discriminant Functions for Scoring and Ranking Instances"

# ╔═╡ fbc461f5-f55b-4c70-af14-7449d69a79fe
md"### Support Vector Machines, Briefly"

# ╔═╡ 8a55089c-be82-4b1c-9f8e-522d8e2bf7a3
md"## Regression via Mathematical Functions"

# ╔═╡ 95d24419-c3b3-4d0d-8965-e7bef38876e5
md"## Class Probability Estimation and Logistic \"Regression\""

# ╔═╡ 6e7bf55d-6817-47bc-8202-0025174b4bae
md"### * Logistic Regression: Some Technical Details"

# ╔═╡ 18e62065-b2fe-489e-80bf-188d07731f01
md"## Example: Logistic Regression versus Tree Induction"

# ╔═╡ af845cf1-b9a3-4530-8e6f-05042384210e
md"## Nonlinear Functions, Support Vector Machines, and Neural Networks"

# ╔═╡ 9dec6baa-cb17-48d6-a8d2-c9820bf4ce58
md"## Summary"

# ╔═╡ 59e27c2f-dedf-4bb2-9146-f760a8ca79e6
md"""
# 5. Overfitting and Its Avoidance

**Fundamental concepts:**

- Generalization
- Fitting and overfitting
- Complexity control

**Exemplary techniques:**

- Cross-validation
- Attribute selection
- Tree pruning
- Regularization
"""

# ╔═╡ 2827f9c3-5421-4ff2-a3e3-4ccd3a13dcfd
md"## Generalization"

# ╔═╡ 6bb4d482-8f52-4b40-ad15-c3ae385cca85
md"## Overfitting"

# ╔═╡ 77f83cd8-3c5b-4267-8ef7-3abbcfb9e071
md"## Overfitting Examined"

# ╔═╡ 7ed3a545-5d31-4062-99c6-a6848da940d5
md"### Holdout Data and Fitting Graphs"

# ╔═╡ 080017c2-f1a7-4762-8653-1cc146fb43c5
md"### Overfitting in Tree Induction"

# ╔═╡ f758c23a-6a72-466b-8513-5898e435f6cb
md"### Overfitting in Mathematical Functions"

# ╔═╡ c0792b55-ba80-4b86-96fb-92a9d75b2c0d
md"## Example: Overfitting Linear Functions"

# ╔═╡ 73df1324-f577-4ffc-a839-8a90b27fa3b4
md"## * Example: Why Is Overfitting Bad?"

# ╔═╡ 4e0d292c-49b7-4324-b09d-26feb27761fb
md"## From Holdout Evaluation to Cross-Validation"

# ╔═╡ 4bd01412-3d59-46c3-9ea2-26967b209ac8
md"## The Churn Dataset Revisited"

# ╔═╡ 8fc22c32-617e-42ef-94a8-1ab6f28e0ede
md"## Learning Curves"

# ╔═╡ ba055481-4ecd-47e4-a196-2427e94f5045
md"## Overfitting Avoidance and Complexity Control"

# ╔═╡ 1192df94-1992-42e6-a92a-484c71b39086
md"### Avoiding Overfitting with Tree Induction"

# ╔═╡ f515c331-93a3-4311-9f75-276855aa8b36
md"### A General Method for Avoiding Overfitting"

# ╔═╡ 5b4cb202-cb5c-46bf-83d9-aa5f927b39bd
md"### * Avoiding Overfitting for Parameter Optimization"

# ╔═╡ 6a031f34-fb33-4d25-96fb-0efdc6f7a0f7
md"## Summary"

# ╔═╡ cce5e32b-2bd0-4fe5-80d5-c1b4413dbf60
md"""
# 6. Similarity, Neighbors, and Clusters

**Fundamental concepts:**

- Calculating similarity of objects described by data
- Using similarity for prediction
- Clustering as similarity-based segmentation

**Exemplary techniques:**

- Searching for similar entities
- Nearest neighbor methods
- Clustering methods
- Distance metrics for calculating similarity
"""

# ╔═╡ 75b75d0c-1448-45fd-bad7-3614d4d3e766
md"## Similarity and Distance"

# ╔═╡ 09ef8b6f-3daa-4782-b378-896323ecb2ca
md"## Nearest-Neighbor Reasoning"

# ╔═╡ 5d95eeec-97e2-4e06-89e9-91a86a531d75
md"### Example: Whiskey Analytics"

# ╔═╡ f313c22c-7ecf-4e98-8611-6359b7968b57
md"### Nearest Neighbors for Predictive Modeling"

# ╔═╡ af5d0991-424b-4a5f-98b8-aaabfae86a89
md"### How Many Neighbors and How Much Influence?"

# ╔═╡ e2a850c4-17be-4aa0-b221-48c4d630b16f
md"### Geometric Interpretation, Overfitting, and Complexity Control"

# ╔═╡ f63c8c9d-9251-47a4-a7b3-67cc2f597270
md"### Issues with Nearest-Neighbor Methods"

# ╔═╡ 0b3b4dcd-d948-4b43-9281-502851213b67
md"## Some Important Technical Details Relating to Similarities and Neighbors"

# ╔═╡ fd5b80f8-fef6-4da5-9b43-5d5117fc7bfb
md"### Heterogeneous Attributes"

# ╔═╡ 3a463d7f-d0ab-49d4-a6e6-e94f7947acdd
md"### * Other Distance Functions"

# ╔═╡ 4c231d74-3de9-4b1e-8f02-624dbe0b7f21
md"### * Combining Functions: Calculating Scores from Neighbors"

# ╔═╡ 19ceb4be-ff2d-4535-a149-8bbe4f1dd4ba
md"## Clustering"

# ╔═╡ 7cbcb92d-6365-44ca-825e-3583fc7fb576
md"### Example: Whiskey Analytics Revisited"

# ╔═╡ 5d8d881f-f7ce-4c65-8ac6-ea92d363697a
md"### Hierarchical Clustering"

# ╔═╡ e1f0fcda-d3e1-4896-9b76-5cdd0f70eb3a
md"### Nearest Neighbors Revisited: Clustering Around Centroids"

# ╔═╡ d42017ad-218a-45d9-b98f-ababb1a85baa
md"### Example: Clustering Business News Stories"

# ╔═╡ 89248b87-3357-43bf-9d11-f7fc4fbbb851
md"### Understanding the Results of Clustering"

# ╔═╡ fe7ba588-e7b8-471d-9f46-d179c76a3fe1
md"### * Using Supervised Learning to Generate Cluster Descriptions"

# ╔═╡ a2f85a60-2d55-4be9-bbcd-14739e4ef44a
md"## Stepping Back: Solving a Business Problem Versus Data Exploration"

# ╔═╡ 68899ae2-9fbb-498b-9bda-56bb5be9368b
md"## Summary"

# ╔═╡ b63fe3b5-942d-4194-8791-c5fa789ab141
md"""
# 7. Decision Analytic Thinking I: What Is a Good Model?

**Fundamental concepts:**

- Careful consideration of what is desired from data science results
- Expected value as a key evaluation framework
- Consideration of appropriate comparative baselines

**Exemplary techniques:**

- Various evaluation metrics
- Estimating costs and benefits
- Calculating expected profit
- Creating baseline methods for comparison
"""

# ╔═╡ 61a6c2fa-2534-43ae-aaf8-2a16de648636
md"## Evaluating Classifiers"

# ╔═╡ 638a24c1-09c4-4b2e-bb4a-b3e03306ca4f
md"### Plain Accuracy and Its Problems"

# ╔═╡ 52c0200a-79a9-49d9-8a0e-bc44e691c3d8
md"### The Confusion Matrix"

# ╔═╡ 584fb3c0-420e-4838-8a84-067dae560c84
md"### Problems with Unbalanced Classes"

# ╔═╡ 0298812c-8335-4d74-a86a-8d055706298b
md"### Problems with Unequal Costs and Benefits"

# ╔═╡ 1c3f00a4-4c7e-4bbd-9df1-14c8f5c6022d
md"## Generalizing Beyond Classification"

# ╔═╡ f359de8e-752d-4233-bd1a-dc096fc3571e
md"## A Key Analytical Framework: Expected Value"

# ╔═╡ 46af1d5c-93a7-4251-8a78-1f22fa1cbf4a
md"### Using Expected Value to Frame Classifier Use"

# ╔═╡ 1e693edb-1d1d-48bb-a66b-dbf9473c92d5
md"### Using Expected Value to Frame Classifier Evaluation"

# ╔═╡ 4f38f8d7-6eb6-49f0-a68e-2b1b5b3e52d5
md"## Evaluation, Baseline Performance, and Implications for Investments in Data"

# ╔═╡ dde430ff-8153-4b2f-b02f-dd8c00b35973
md"## Summary"

# ╔═╡ 0282a5f7-da11-44f7-973d-9c64407bc761
md"""
# 8. Visualizing Model Performance

**Fundamental concepts:**

- Visualization of model performance under various kinds of uncertainty
- Further consideration of what is desired from data mining results

**Exemplary techniques:**

- Profit curves
- Cumulative response curves
- Lift curves
- ROC curves
"""

# ╔═╡ 91d41231-a172-4671-9d9d-6c364791aa10
md"## Ranking Instead of Classifying"

# ╔═╡ 68d21009-c5c1-420c-8d9a-cf5fca7659ea
md"## Profit Curves"

# ╔═╡ e0675cda-645e-49b9-91dc-f3f8157fcc1a
md"## ROC Graphs and Curves"

# ╔═╡ b77f25ef-8d7e-4c19-8859-8e2090060153
md"## The Area Under the ROC Curve (AUC)"

# ╔═╡ b3ce15a1-710b-4f10-badb-70674ae79ac4
md"## Cumulative Response and Lift Curves"

# ╔═╡ 7b53c244-2361-49e0-87b5-cdb1b08dd288
md"## Example: Performance Analytics for Churn Modeling"

# ╔═╡ 91693350-eedc-4753-8298-a7e9fcd845fc
md"## Summary"

# ╔═╡ 787731a3-1afc-4ce0-a241-b38a60b57843
md"""
# 9. Evidence and Probabilities

**Fundamental concepts:**

- Explicit evidence combination with Bayes' Rule

- Probabilistic reasoning via assumptions of conditional independence

**Exemplary techniques:**

- Naive Bayes classification

- Evidence lift
"""

# ╔═╡ 2c994259-63ac-4365-baa6-1be2f72eac1d
md"## Example: Targeting Online Consumers with Advertisements"

# ╔═╡ 4bc7bed6-42b3-4038-b279-8156fe2433d3
md"## Combining Evidence Probabilistically"

# ╔═╡ 08e08752-da27-4da8-bc51-94ee5ccdf855
md"### Joint Probability and Independence"

# ╔═╡ 000b91cc-c391-4e40-80a9-8ae83aaad8a1
md"### Bayes' Rule"

# ╔═╡ a7f8afa9-02c5-4bed-aad9-7b01ba5f0f7d
md"## Applying Bayes' Rule to Data Science"

# ╔═╡ 2c0f9551-fc25-4346-9262-10e8ed4bb17f
md"### Conditional Independence and Naive Bayes"

# ╔═╡ 5f4be520-573f-4d1f-8887-12f5917877c4
md"### Advantages and Disadvantages of Naive Bayes"

# ╔═╡ 60d4ff3c-b053-4413-9991-8039f8c00546
md"## A Model of Evidence \"Lift\""

# ╔═╡ 3569b0d6-e2bc-405d-aa9e-10ab29410405
md"## Example: Evidence Lifts from Facebook \"Likes\""

# ╔═╡ e619f45d-bd28-46dd-b6e7-4322445146a1
md"### Evidence in Action: Targeting Consumers with Ads"

# ╔═╡ ecd056cc-4180-4032-911d-f1a5a1107cfe
md"## Summary"

# ╔═╡ 1af2d0d5-45db-4df9-a187-5a45485f7e5c
md"""
# 10. Representing and Mining Text

**Fundamental concepts:**

- The importance of constructing mining-friendly data representations
- Representation of text for data mining

**Exemplary techniques:**

- Bag of words representation
- TFIDF calculation
- N-grams
- Stemming
- Named entity extraction
- Topic models
"""

# ╔═╡ a211f053-9989-4b70-a6d3-831737c963c0
md"## Why Text Is Important"

# ╔═╡ 46c9fb7f-ee11-4112-bc7a-546ec1e5ead4
md"## Why Text Is Difficult"

# ╔═╡ 0d4a8fbb-f313-476b-ba21-b7e80e7d785b
md"## Representation"

# ╔═╡ 3b4ea6be-9646-4c7f-8833-30f834a75df4
md"### Bag of Words"

# ╔═╡ f77c641d-9ad7-44fc-85be-5c8c4ed945bb
md"### Term Frequency"

# ╔═╡ 14b8610e-bc53-4867-bf05-17fdb86173b0
md"### Measuring Sparseness: Inverse Document Frequency"

# ╔═╡ 2fc6e370-21c6-4ddc-a19d-3eabc17cba22
md"### Combining Them: TFIDF"

# ╔═╡ 41a1eea6-a153-4064-a9cc-a072dc844952
md"## Example: Jazz Musicians"

# ╔═╡ aeb0a9bd-b6d5-4c53-8b65-b59fd10f2d6c
md"## * The Relationship of IDF to Entropy"

# ╔═╡ cce0f5a3-dc1a-4771-8cbb-adb4ffbc19cb
md"## Beyond Bag of Words"

# ╔═╡ b43a04dc-fca2-4b15-8231-fe4571bfeddd
md"### N-gram Sequences"

# ╔═╡ 274100bf-6ece-44e8-80db-08722c6e009e
md"### Named Entity Extraction"

# ╔═╡ 99d021bd-c206-41fc-9faf-74d60637ce4b
md"### Topic Models"

# ╔═╡ 847d9fc3-6561-4647-a7df-d0c2b8359b36
md"## Example: Mining News Stories to Predict Stock Price Movement"

# ╔═╡ 574afb37-2d04-42d3-b725-a49e6f969e20
md"### The Task"

# ╔═╡ 9254f48d-e65f-4374-a1a4-ac0db5834799
md"### The Data"

# ╔═╡ d8e61d80-d140-494f-9399-08ec91c54013
md"### Data Preprocessing"

# ╔═╡ f8268a8c-3bc4-4271-b8f4-00ee133ef75f
md"### Results"

# ╔═╡ 7d4ef5ef-fa03-47da-b8ec-05b1c3d2a6d9
md"## Summary"

# ╔═╡ 7fcad2f9-8b8c-4621-97e2-2dc05ffe2465
md"""
# 11. Decision Analytic Thinking II: Toward Analytical Engineering

**Fundamental concept:**

- Solving business problems with data science starts with analytical engineering: designing an analytical solution, based on the data, tools, and techniques available

**Exemplary technique:**

- Expected value as a framework for data science solution design
"""

# ╔═╡ 411d4ce3-6068-475c-8479-aa22977ca8ba
md"## Targeting the Best Prospects for a Charity Mailing"

# ╔═╡ b0cdf2d3-35e4-481f-85cf-9644a1b1ec7a
md"### The Expected Value Framework: Decomposing the Business Problem and Recomposing the Solution Pieces"

# ╔═╡ 8fddd388-f6e4-42dc-bb37-c4c4584e7ea7
md"### A Brief Digression on Selection Bias"

# ╔═╡ 99c968ad-cc28-40ed-8b3f-91c13a82d968
md"## Our Churn Example Revisited with Even More Sophistication"

# ╔═╡ 9d22c2df-24b3-4cda-93ba-9af7b25af391
md"### The Expected Value Framework: Structuring a More Complicated Business Problem"

# ╔═╡ e6e0b9d2-b87e-455d-b11e-be75dc55c6e9
md"### Assessing the Influence of the Incentive"

# ╔═╡ 4e9e9fce-3065-4767-9a48-a9251d4f1995
md"### From an Expected Value Decomposition to a Data Science Solution"

# ╔═╡ 2d36bee7-4d78-4f0a-b43f-d78bfcb4d506
md"### Summary"

# ╔═╡ 1de4b89d-d76d-44f6-ac25-2aec64077c2b
md"""
# 12. Other Data Science Tasks and Techniques

**Fundamental concepts:**

- Our fundamental concepts as the basis of many common data science techniques
- The importance of familiarity with the building blocks of data science

**Exemplary techniques:**
- Association and co-occurrences
- Behavior profiling
- Link prediction
- Data reduction
- Latent information mining
- Movie recommendation
- Bias-variance decomposition of error
- Ensembles of models
- Causal reasoning from data
"""

# ╔═╡ 51ce48ee-86c0-4f6e-9476-d1c7a3c4e5fa
md"## Co-occurrences and Associations: Finding Items That Go Together"

# ╔═╡ 12e0bf7c-124d-4d66-a10b-e0efe21631c5
md"### Measuring Surprise: Lift and Leverage"

# ╔═╡ 870932b7-2483-42ea-b55f-3f022d090edd
md"### Example: Beer and Lottery Tickets"

# ╔═╡ 56b4293c-a655-4d49-80cd-89b99091fc1c
md"### Associations Among Facebook Likes"

# ╔═╡ 9dfc8636-2d47-4aa9-ad05-1e26309e6f41
md"## Profiling: Finding Typical Behavior"

# ╔═╡ 66cc7a47-4d69-48cc-a524-ecc387a16238
md"## Link Prediction and Social Recommendation"

# ╔═╡ be6d17b7-417a-42f5-acc3-f43c35fb61da
md"## Data Reduction, Latent Information, and Movie Recommendation"

# ╔═╡ fd3570a3-6504-4157-a012-bca36b72237b
md"## Bias, Variance, and Ensemble Methods"

# ╔═╡ 1ef4a5dc-a866-43ba-8c93-905845ff7578
md"## Data-Driven Causal Explanation and a Viral Marketing Example"

# ╔═╡ e6093583-dddf-4de2-b7b7-d8fe2113ded3
md"## Summary"

# ╔═╡ 9cbc8502-4e43-4983-adc7-44567eb2a022
md"""
# 13. Data Science and Business Strategy

**Fundamental concepts:**

- Our principles as the basis of success for a data-driven business

- Acquiring and sustaining competitive advantage via data science

- The importance of careful curation of data science capability
"""

# ╔═╡ eee7e346-fab5-45ec-b2fd-40bc6c314d25
md"## Thinking Data-Analytically, Redux"

# ╔═╡ 31733ffc-c1e7-404b-a7d4-fb23331cc262
md"## Achieving Competitive Advantage with Data Science"

# ╔═╡ aa112886-caa6-4506-9afb-826f717a6641
md"## Sustaining Competitive Advantage with Data Science"

# ╔═╡ 774f40ac-8b98-4d2f-a7cf-caeba1911b3c
md"### Formidable Historical Advantage"

# ╔═╡ f2dd18d9-a2cc-43c2-8635-38d05351a4ad
md"### Unique Intellectual Property"

# ╔═╡ 23780f4d-cd23-4c13-9400-5de3b370a3ae
md"### Unique Intangible Collateral Assets"

# ╔═╡ 0d26636d-8ea9-488b-8068-8fb8a19b7e7e
md"### Superior Data Scientists"

# ╔═╡ 1cb6306a-3f87-45f2-a606-2686500b9fb4
md"### Superior Data Science Management"

# ╔═╡ de8673d8-7c98-40e1-a57b-e110b527ea3e
md"## Attracting and Nurturing Data Scientists and Their Teams"

# ╔═╡ 732e4fe2-4080-493c-a531-94fee6ebba5b
md"## Examine Data Science Case Studies"

# ╔═╡ 63ab4d1a-2a18-4a93-a41a-0bcf3989b337
md"## Be Ready to Accept Creative Ideas from Any Source"

# ╔═╡ 79a3cab8-9228-45bf-845c-c90207fe5b6f
md"## Be Ready to Evaluate Proposals for Data Science Projects"

# ╔═╡ 2a82af5c-a57d-4e98-bf62-a474b9ef88ef
md"### Example Data Mining Proposal"

# ╔═╡ df3bbad8-b8b0-4779-b881-c1ea006e5cb1
md"### Flaws in the Big Red Proposal"

# ╔═╡ 983593ae-f453-40cb-b1ef-78925bfc0623
md"## A Firm's Data Science Maturity"

# ╔═╡ 7d4e5198-ef9b-4406-bdc1-db9635f09cff
md"# 14. Conclusion"

# ╔═╡ 86dd4ec8-3867-428b-bfcf-2ffe59d6ec94
md"## The Fundamental Concepts of Data Science"

# ╔═╡ 2fdfa186-201a-4a4a-8ea8-339654188226
md"### Applying Our Fundamental Concepts to a New Problem: Mining Mobile Device Data"

# ╔═╡ ebdf46ea-c062-413f-80e6-662403cf611a
md"### Changing the Way We Think about Solutions to Business Problems"

# ╔═╡ beb27235-ec5e-44e0-93d6-87ed3ecb8c51
md"## What Data Can't Do: Humans in the Loop, Revisited"

# ╔═╡ f73f6322-3b3e-4f0c-a49c-59fcb596dfe2
md"## Privacy, Ethics, and Mining Data About Individuals"

# ╔═╡ 0a9566ef-b7eb-4bc9-ab5a-f8b58162d443
md"## Is There More to Data Science?"

# ╔═╡ 0ae56a6f-5ed7-43e4-a248-8eddfa2c51d7
md"## Final Example: From Crowd-Sourcing to Cloud-Sourcing"

# ╔═╡ 4617efd2-33fc-4504-976a-24705b7e240d
md"## Final Words"

# ╔═╡ da8ccb7b-5e72-40d9-b6cd-7c409258ee6a
md"# Appendix A: Proposal Review Guide"

# ╔═╡ 05267004-47b8-4eda-9411-5ddc5330ab50
md"# Appendix B: Another Sample Proposal"

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
# ╟─cf7502bb-4d93-4c01-9394-2044f8528589
# ╟─5c6591b1-3d67-492b-b136-5d848f4fec96
# ╟─5b739bd2-4703-4538-bf52-810abc84e231
# ╟─db980dc8-732f-466f-beb9-04dd5e80ff56
# ╟─d27c825b-b35a-42f5-9ad5-6c6b2c80817d
# ╟─ae476e99-67ff-421a-a663-c8d52e315d7b
# ╟─8306531b-6b46-40c0-82c4-738f022b3e14
# ╟─6c70de6d-09f0-46fa-9f60-c5f151b11b46
# ╟─ac61de7b-ec96-486e-b250-8e298998dd1c
# ╟─cc585466-79c0-4655-b71d-813a5d967aa6
# ╟─4d3fa416-b201-4236-9eeb-7c70111b6251
# ╟─c96c7638-90fd-4a1a-923a-1ad2ddf4d421
# ╟─7c59ce91-13de-4913-9cfc-acfa9fa09a40
# ╟─b5db0f9c-7ccd-42d5-9694-cb22784e8633
# ╟─391c1a62-db28-437b-91b4-cb7bfbdc4dc3
# ╟─2b897cdd-e3df-4f3f-9428-31e719e27ac7
# ╟─bf6879fa-c91d-49f2-9cb0-03069459c27e
# ╟─2e7cfbc7-0675-416e-b916-281b2657c505
# ╟─ab4cbce1-2ac8-42ac-a937-090b931a3ad8
# ╟─8ee0706b-c58b-44e2-a7ae-de65a1ae31fb
# ╟─b84b5099-d94c-4ebe-88ec-930ffd120118
# ╟─014b4a06-42c6-4cc5-9e0c-6e977a87b588
# ╟─ddfb94d0-8f5d-45db-abe3-e1d29174ae0d
# ╟─2512bf6a-888d-4a26-a85f-8696fa619f70
# ╟─0d0d7c3b-96e1-4ae7-b2cb-8f69505c0967
# ╟─7691756b-2a11-447d-b3c7-f4e97ede9294
# ╟─5c9f40f0-f77f-4183-b27d-cecdd1c602af
# ╟─e91c446e-b618-41db-a7b2-0ec538b4cc9e
# ╟─f592e979-39eb-417c-a0f9-d8a8fe722b61
# ╟─9ed08f45-743a-4d67-a315-6fca1663d382
# ╟─5c5848c3-0f61-4bab-8392-26c94442e98d
# ╟─df324f34-3b1f-4358-9924-ce5f84914e8f
# ╟─bd2e083e-3344-47df-a784-447220b7f4f0
# ╟─57369a42-ddad-4930-a56f-3f5821b7f902
# ╟─85e7c283-c18e-4b44-ac2e-2478622f7a06
# ╟─07215ac5-545c-4c2e-b035-fd68abb35ef7
# ╟─260d2df5-a93d-458c-8bda-b710d056ffd6
# ╟─31bea77a-8bc3-40dd-a9e6-b28051dfed76
# ╟─ad736698-6f1b-4313-bced-f74f82afe3a1
# ╟─53954898-97bb-462d-940e-9129dcdc3d55
# ╟─3bee32f5-cdca-4b93-936f-8ed2f90d4a5c
# ╟─02d4645e-1c26-441e-8914-2d689a1457df
# ╟─c372a49f-22fe-411f-9ea0-ae328dfb0934
# ╟─91acb9c9-d45a-472d-a43f-ec962dfa3859
# ╟─8f2377b8-39b0-4704-9f7a-15462aba4544
# ╟─029cac3b-146b-4b53-b31b-489e696f4ca9
# ╟─d1ab57b4-8aae-46c8-ba0b-da99e73faaf2
# ╟─5c0b8742-c17d-4c33-a6ef-ded757f95d38
# ╟─add448ae-fe5d-4027-9dc4-aafbb8a74729
# ╟─3428a001-20a6-41bc-88b8-8c257b771780
# ╟─2ff20f7f-e763-4b6d-88aa-ad9d93a4fe1e
# ╟─df50dc13-0ee3-45ea-a443-225edd998ac9
# ╟─13cf98d6-822a-4617-9bb5-cf9cc8b96702
# ╟─13aa89af-7665-406d-942f-dc8e6e6e0036
# ╟─2d8d89b5-82a3-4665-996c-0ff3f224964e
# ╟─59583d2f-8ee4-4232-9c90-48d0c289892b
# ╟─e2a03ef1-3df8-4968-8a1e-7540fdc96630
# ╟─5b3f9732-a256-49c6-9898-08f2ba7f4782
# ╟─ec18e0ab-6378-49bd-9080-96fa4950242d
# ╟─cd53c927-1c41-4f41-8501-3a36f2d6e5f2
# ╟─40b1a745-e710-4ce0-a325-85c0bdbc0303
# ╟─77ba2278-f0a4-46b7-8473-011f33363b8e
# ╟─5423a474-7314-4cf3-9c65-627a3006ab06
# ╟─aef6b6aa-3cb5-4b32-901f-4412143e6b72
# ╟─0cd57b42-9261-4ca6-bd86-9e32c64b9227
# ╟─3cf97426-3a33-48fd-a2bc-4e6c369b67cf
# ╟─84e5ce64-e5da-454a-a46d-46956ba0a41a
# ╟─f1cad3bc-c911-4cfd-95cb-f34a7af9700e
# ╟─2b042fa1-908a-43c9-8af8-a3cbee316520
# ╟─4d13b7ef-03e3-477c-a08c-895ec41f1802
# ╟─b322348f-2b06-44d7-b9e5-2c6b77a851b1
# ╟─76e2b480-07c4-476e-8aba-6af116c9bdb3
# ╟─d6a9b276-0878-42af-8931-f4b395bcd5f9
# ╟─c1322bca-4d3b-4beb-bb33-161d9647ff4f
# ╟─8b64a3d0-df85-451f-ad0c-77f9a8f5dd05
# ╟─b05feb22-e53a-4a40-af0f-63163ebf32c4
# ╟─05658a22-317e-473d-9b98-43f1a6ba9220
# ╟─f7194ff8-8e8e-4071-ac23-07dcccd5cf1e
# ╟─685991c2-71f4-4ba7-8c68-a6e3da550e64
# ╟─06deaf56-32ae-4cfc-aa45-6048071fd23c
# ╟─19b2437b-1c45-41f0-955c-003ac1ebccbe
# ╟─ebc39bd9-ac9b-4b90-be46-996a737a2485
# ╟─90e70cbe-f83e-454d-9761-71630116b89a
# ╟─4e651148-ba66-4355-a85c-d30e0d95863c
# ╟─a221c1bf-c858-4e3b-b31b-11fc58183cc7
# ╟─de4c829e-e869-4fe9-bdf3-400cda300466
# ╟─98197071-72d5-4a5a-b707-ece0511105e0
# ╟─126698b3-7537-4206-b2af-95984a7c9650
# ╟─9132e45c-cb4c-4112-a1c9-795e3b7b31eb
# ╟─76c1f1be-8610-4b75-ad6f-af910ddfb26e
# ╟─94f90456-5a44-4a8b-bb98-7ab43f2ded73
# ╟─fdcf3e4d-f5ee-48f0-9ac1-31b27be56d1c
# ╟─d2d259a0-2fa2-4408-b736-cf70f11d6784
# ╟─49cb3c07-2274-4153-bc62-561eedbdf354
# ╟─0ab3a635-2b29-4eff-b8b2-46052acc37eb
# ╟─0175c0f1-fdea-4d88-afbc-0587ea0d08d9
# ╟─b5b6f2a0-b911-4443-9618-d6c6c2871199
# ╟─736921d7-8312-4df2-9505-501728fb575c
# ╟─3e520147-e417-42b3-9637-e65f3f40b317
# ╟─21dd4b97-41b5-428e-8241-6eac6395246d
# ╟─a5cae07c-cd71-46ea-993a-4010e1442f8b
# ╟─f28d6a41-3d15-4bd0-8ff5-96d5989220ce
# ╟─666b7379-d557-490e-b297-1203f552e7b8
# ╟─f5987ad0-02c9-46c8-92f9-5b65ff4fd353
# ╟─a85a5172-ccce-42df-a691-211ba8ab578c
# ╟─d7879157-ecab-4285-b018-fde0f85546cf
# ╟─56f6f6f0-b6e3-47ba-aab6-211c49ac8a6e
# ╟─81dc4811-9082-406a-9c7e-80bea01965fd
# ╟─c911ecf9-cd48-4fbf-8e1d-a264a048279f
# ╟─3e1c93d0-c86d-49df-ad76-ed123d047826
# ╟─190d3d74-e819-42ea-97b4-4d01680fe559
# ╟─1fa31651-a351-4b30-8eb0-32f672f97944
# ╟─eb625043-8fac-427f-80a2-8629803b112e
# ╟─4956152e-41a1-4680-a6b2-72d0553791e7
# ╟─b01461cc-3d93-4282-9e86-37704c7d58da
# ╟─5557c929-cbeb-4ec2-a041-ec6ac6d88531
# ╟─ebc4a1c9-74bd-42c2-8761-e599fee69191
# ╟─56d6b2fe-b971-4806-b22b-5f025feaacc0
# ╟─0b2168c9-7aa7-4be8-8b5f-8ceb41550ba3
# ╟─e8a8f113-2d97-471f-894b-f81e333d2a28
# ╟─bad0a719-1ccd-439e-b125-a33b5d570a00
# ╟─190c7aa6-8153-4d4d-bb75-b04f1f4c8264
# ╟─177bad87-0764-4a10-bc50-580a48771783
# ╟─4fb2a5d4-0cb6-40a5-be58-688105e16bf2
# ╟─fcaf3909-3898-4871-8af0-29b0f06dd56b
# ╟─e64ee8b7-b699-4292-9b93-fee053b490f5
# ╟─f471120e-3578-4f7c-9286-e4da5fbbd4d9
# ╟─5eba154e-3610-4168-a09e-5fda1dd18af4
# ╟─63a07f9a-3cb2-477e-bd00-6ddab4e99209
# ╟─0a3145bc-ba2a-46ef-9357-8440094dd9b3
# ╟─31bf5f8d-57d3-4dd1-8235-b11c8f98a739
# ╟─5ff793f8-ec32-45d1-9073-0c992e7c18d8
# ╟─1a0cfb05-5f65-4073-b423-dbb0ea04d06e
# ╟─53caff8e-f4c4-4d1a-b45d-89648a247b3c
# ╟─54a30613-5b68-48bd-8ccf-eaf0e08544a5
# ╟─4865f72d-611d-442e-873c-aab88893b914
# ╟─42ae8dc4-d4af-4025-bec6-3e0929520981
# ╟─f4692e56-7530-4268-8428-1c08309d1926
# ╟─402b974f-b979-4b0b-bd6c-e4a8ee513dcc
# ╟─a24e28ee-2ff0-47ec-83b6-b2b4ed5a599f
# ╟─a03c9259-94fa-4fb2-928d-232fa8a53c4f
# ╟─ab996106-e600-4d39-9a02-bdd98efb3167
# ╟─b4e04050-4d22-431e-93af-a8058b9ff8ae
# ╟─8b7d43d9-aa53-4258-9bf6-ee27f143ab70
# ╟─57af7a33-ab66-42a3-a9ed-8f0fe46d3299
# ╟─7ec6cd37-7351-4362-a41c-f7a1f2bea6e6
# ╟─6d4909b0-0962-443f-94ef-ba5f5f261ffa
# ╟─0b43600a-237e-4c67-a247-f5d182df2d39
# ╟─71c9663e-f05c-4c34-affb-a465c2b13b3a
# ╟─11adde8c-2b29-4ad6-8be4-079c62b08077
# ╟─05f31d80-cad9-40a7-a6ca-965d278a47b9
# ╟─8a511713-00f9-47da-b713-4d270bb847ec
# ╟─807969e2-f8cb-4aea-b37f-938a2592784a
# ╟─ed25fe62-fa1b-44f5-862a-b3a5eb5683dd
# ╟─8276facf-e696-4fbc-88b7-87c3da486063
# ╟─04934e34-2e69-403b-9a46-a5b5b29d132e
# ╟─a437a966-5820-43e8-b601-09d6f57f9902
# ╟─3a4a31c9-a54f-40b1-b77e-5449a8f76b2f
# ╟─4fc9de70-68b3-4350-ad51-4d4ef73ed991
# ╟─6d2f8ecd-9df5-4af4-88a5-c765f8d8d78b
# ╟─f1ce3bf2-e1b8-4ce7-81b8-fcf1949a744c
# ╟─03e9fd5d-878c-4129-9d0a-0303c920a453
# ╟─7b720bb5-d0de-45bc-aa06-b98e8faa3d65
# ╟─3b922b2e-f691-4874-9c32-b4e8741b9021
# ╟─03753567-98e5-4b0a-a0fc-68c6b3ff5a3c
# ╟─0d03cb18-2464-431b-96d6-a7fc055ea941
# ╟─5ef20914-3376-4ae8-9381-f2802dacac13
# ╟─c5d3c20b-1aa7-4cfa-8acc-c143c0ecf047
# ╟─61e561a1-4714-41c6-a9f7-fe1323ca82b0
# ╟─4c1abd81-98c3-4a9b-bad3-98bbc37512a2
# ╟─3e2c25e0-1b85-43d3-9894-55303861bad6
# ╟─bd88bcd5-5f77-456f-ad2f-2dc5e24807f8
# ╟─7e59ab0f-edf4-4e00-82a5-d14ca466125b
# ╟─58b15450-90e7-475c-ad2d-dbb6a80021d9
# ╟─b7ceb11b-46fb-4192-919a-b6d84c3c8832
# ╟─8040a851-518a-4302-af26-6f1092ce92a6
# ╟─fbb576c0-acee-4282-8905-057c2d43da9c
# ╟─86663f46-ab54-44e7-ae26-116386d409e5
# ╟─530794bb-b165-482b-bf16-a743ef395918
# ╟─5b9bd62d-4036-4552-8d5b-cd64bda0b544
# ╟─e2276d97-9c8e-4aec-8f15-5e62f1cdb8ae
# ╟─42b7bfe1-258e-4bd8-90e2-2a16b9ecd838
# ╟─e8e0485d-1143-49a0-a06f-e36db819897e
# ╟─26bfa3ec-31ce-4359-b798-3507fd01ea3d
# ╟─eeac5855-dc64-4045-b05f-9f03c946cfc4
# ╟─5fbec25a-06ab-42f6-b18c-0efe0f2bcc60
# ╟─02760ad7-786c-4d2c-bd47-e79a912ff556
# ╟─4f71c117-89fe-4112-b77a-778de3c4b17c
# ╟─4e835f63-07fd-4bc2-bbd6-63eeaf17af70
# ╟─5442f227-e7ad-4500-9223-689e109ffaa2
# ╟─505f4e84-7136-41d5-8139-65f813e57a0b
# ╟─69257572-7804-42ce-ad03-ff93e092586a
# ╟─25da6efa-a107-4936-9d90-4b86657c5190
# ╟─40492856-2a50-45a7-8244-b0a02621154b
# ╟─937bbae9-1100-4ea8-8e1b-6e2a84cbc437
# ╟─08c2ebcd-1f7c-4739-b532-11ad2c6e6634
# ╟─d68c0a16-1363-4c21-9faa-924ad71b64fb
# ╟─c8a05396-766a-4efc-be47-c99a041f7474
# ╟─f9c2e795-3369-4885-9dc1-c0920c94b20f
# ╟─a3b90d4b-0e84-49b9-832d-20b7e1d8d9da
# ╟─b9ba8e0e-ddae-4f06-b2c8-7eb1be4428d9
# ╟─5f8cc300-a668-4716-90c6-18b3724c9415
# ╟─34bf3f9a-cd02-45cc-bd4e-614b3c1efdc2
# ╟─fbc461f5-f55b-4c70-af14-7449d69a79fe
# ╟─8a55089c-be82-4b1c-9f8e-522d8e2bf7a3
# ╟─95d24419-c3b3-4d0d-8965-e7bef38876e5
# ╟─6e7bf55d-6817-47bc-8202-0025174b4bae
# ╟─18e62065-b2fe-489e-80bf-188d07731f01
# ╟─af845cf1-b9a3-4530-8e6f-05042384210e
# ╟─9dec6baa-cb17-48d6-a8d2-c9820bf4ce58
# ╟─59e27c2f-dedf-4bb2-9146-f760a8ca79e6
# ╟─2827f9c3-5421-4ff2-a3e3-4ccd3a13dcfd
# ╟─6bb4d482-8f52-4b40-ad15-c3ae385cca85
# ╟─77f83cd8-3c5b-4267-8ef7-3abbcfb9e071
# ╟─7ed3a545-5d31-4062-99c6-a6848da940d5
# ╟─080017c2-f1a7-4762-8653-1cc146fb43c5
# ╟─f758c23a-6a72-466b-8513-5898e435f6cb
# ╟─c0792b55-ba80-4b86-96fb-92a9d75b2c0d
# ╟─73df1324-f577-4ffc-a839-8a90b27fa3b4
# ╟─4e0d292c-49b7-4324-b09d-26feb27761fb
# ╟─4bd01412-3d59-46c3-9ea2-26967b209ac8
# ╟─8fc22c32-617e-42ef-94a8-1ab6f28e0ede
# ╟─ba055481-4ecd-47e4-a196-2427e94f5045
# ╟─1192df94-1992-42e6-a92a-484c71b39086
# ╟─f515c331-93a3-4311-9f75-276855aa8b36
# ╟─5b4cb202-cb5c-46bf-83d9-aa5f927b39bd
# ╟─6a031f34-fb33-4d25-96fb-0efdc6f7a0f7
# ╟─cce5e32b-2bd0-4fe5-80d5-c1b4413dbf60
# ╟─75b75d0c-1448-45fd-bad7-3614d4d3e766
# ╟─09ef8b6f-3daa-4782-b378-896323ecb2ca
# ╟─5d95eeec-97e2-4e06-89e9-91a86a531d75
# ╟─f313c22c-7ecf-4e98-8611-6359b7968b57
# ╟─af5d0991-424b-4a5f-98b8-aaabfae86a89
# ╟─e2a850c4-17be-4aa0-b221-48c4d630b16f
# ╟─f63c8c9d-9251-47a4-a7b3-67cc2f597270
# ╟─0b3b4dcd-d948-4b43-9281-502851213b67
# ╟─fd5b80f8-fef6-4da5-9b43-5d5117fc7bfb
# ╟─3a463d7f-d0ab-49d4-a6e6-e94f7947acdd
# ╟─4c231d74-3de9-4b1e-8f02-624dbe0b7f21
# ╟─19ceb4be-ff2d-4535-a149-8bbe4f1dd4ba
# ╟─7cbcb92d-6365-44ca-825e-3583fc7fb576
# ╟─5d8d881f-f7ce-4c65-8ac6-ea92d363697a
# ╟─e1f0fcda-d3e1-4896-9b76-5cdd0f70eb3a
# ╟─d42017ad-218a-45d9-b98f-ababb1a85baa
# ╟─89248b87-3357-43bf-9d11-f7fc4fbbb851
# ╟─fe7ba588-e7b8-471d-9f46-d179c76a3fe1
# ╟─a2f85a60-2d55-4be9-bbcd-14739e4ef44a
# ╟─68899ae2-9fbb-498b-9bda-56bb5be9368b
# ╟─b63fe3b5-942d-4194-8791-c5fa789ab141
# ╟─61a6c2fa-2534-43ae-aaf8-2a16de648636
# ╟─638a24c1-09c4-4b2e-bb4a-b3e03306ca4f
# ╟─52c0200a-79a9-49d9-8a0e-bc44e691c3d8
# ╟─584fb3c0-420e-4838-8a84-067dae560c84
# ╟─0298812c-8335-4d74-a86a-8d055706298b
# ╟─1c3f00a4-4c7e-4bbd-9df1-14c8f5c6022d
# ╟─f359de8e-752d-4233-bd1a-dc096fc3571e
# ╟─46af1d5c-93a7-4251-8a78-1f22fa1cbf4a
# ╟─1e693edb-1d1d-48bb-a66b-dbf9473c92d5
# ╟─4f38f8d7-6eb6-49f0-a68e-2b1b5b3e52d5
# ╟─dde430ff-8153-4b2f-b02f-dd8c00b35973
# ╟─0282a5f7-da11-44f7-973d-9c64407bc761
# ╟─91d41231-a172-4671-9d9d-6c364791aa10
# ╟─68d21009-c5c1-420c-8d9a-cf5fca7659ea
# ╟─e0675cda-645e-49b9-91dc-f3f8157fcc1a
# ╟─b77f25ef-8d7e-4c19-8859-8e2090060153
# ╟─b3ce15a1-710b-4f10-badb-70674ae79ac4
# ╟─7b53c244-2361-49e0-87b5-cdb1b08dd288
# ╟─91693350-eedc-4753-8298-a7e9fcd845fc
# ╟─787731a3-1afc-4ce0-a241-b38a60b57843
# ╟─2c994259-63ac-4365-baa6-1be2f72eac1d
# ╟─4bc7bed6-42b3-4038-b279-8156fe2433d3
# ╟─08e08752-da27-4da8-bc51-94ee5ccdf855
# ╟─000b91cc-c391-4e40-80a9-8ae83aaad8a1
# ╟─a7f8afa9-02c5-4bed-aad9-7b01ba5f0f7d
# ╟─2c0f9551-fc25-4346-9262-10e8ed4bb17f
# ╟─5f4be520-573f-4d1f-8887-12f5917877c4
# ╟─60d4ff3c-b053-4413-9991-8039f8c00546
# ╟─3569b0d6-e2bc-405d-aa9e-10ab29410405
# ╟─e619f45d-bd28-46dd-b6e7-4322445146a1
# ╟─ecd056cc-4180-4032-911d-f1a5a1107cfe
# ╟─1af2d0d5-45db-4df9-a187-5a45485f7e5c
# ╟─a211f053-9989-4b70-a6d3-831737c963c0
# ╟─46c9fb7f-ee11-4112-bc7a-546ec1e5ead4
# ╟─0d4a8fbb-f313-476b-ba21-b7e80e7d785b
# ╟─3b4ea6be-9646-4c7f-8833-30f834a75df4
# ╟─f77c641d-9ad7-44fc-85be-5c8c4ed945bb
# ╟─14b8610e-bc53-4867-bf05-17fdb86173b0
# ╟─2fc6e370-21c6-4ddc-a19d-3eabc17cba22
# ╟─41a1eea6-a153-4064-a9cc-a072dc844952
# ╟─aeb0a9bd-b6d5-4c53-8b65-b59fd10f2d6c
# ╟─cce0f5a3-dc1a-4771-8cbb-adb4ffbc19cb
# ╟─b43a04dc-fca2-4b15-8231-fe4571bfeddd
# ╟─274100bf-6ece-44e8-80db-08722c6e009e
# ╟─99d021bd-c206-41fc-9faf-74d60637ce4b
# ╟─847d9fc3-6561-4647-a7df-d0c2b8359b36
# ╟─574afb37-2d04-42d3-b725-a49e6f969e20
# ╟─9254f48d-e65f-4374-a1a4-ac0db5834799
# ╟─d8e61d80-d140-494f-9399-08ec91c54013
# ╟─f8268a8c-3bc4-4271-b8f4-00ee133ef75f
# ╟─7d4ef5ef-fa03-47da-b8ec-05b1c3d2a6d9
# ╟─7fcad2f9-8b8c-4621-97e2-2dc05ffe2465
# ╟─411d4ce3-6068-475c-8479-aa22977ca8ba
# ╟─b0cdf2d3-35e4-481f-85cf-9644a1b1ec7a
# ╟─8fddd388-f6e4-42dc-bb37-c4c4584e7ea7
# ╟─99c968ad-cc28-40ed-8b3f-91c13a82d968
# ╟─9d22c2df-24b3-4cda-93ba-9af7b25af391
# ╟─e6e0b9d2-b87e-455d-b11e-be75dc55c6e9
# ╟─4e9e9fce-3065-4767-9a48-a9251d4f1995
# ╟─2d36bee7-4d78-4f0a-b43f-d78bfcb4d506
# ╟─1de4b89d-d76d-44f6-ac25-2aec64077c2b
# ╟─51ce48ee-86c0-4f6e-9476-d1c7a3c4e5fa
# ╟─12e0bf7c-124d-4d66-a10b-e0efe21631c5
# ╟─870932b7-2483-42ea-b55f-3f022d090edd
# ╟─56b4293c-a655-4d49-80cd-89b99091fc1c
# ╟─9dfc8636-2d47-4aa9-ad05-1e26309e6f41
# ╟─66cc7a47-4d69-48cc-a524-ecc387a16238
# ╟─be6d17b7-417a-42f5-acc3-f43c35fb61da
# ╟─fd3570a3-6504-4157-a012-bca36b72237b
# ╟─1ef4a5dc-a866-43ba-8c93-905845ff7578
# ╟─e6093583-dddf-4de2-b7b7-d8fe2113ded3
# ╟─9cbc8502-4e43-4983-adc7-44567eb2a022
# ╟─eee7e346-fab5-45ec-b2fd-40bc6c314d25
# ╟─31733ffc-c1e7-404b-a7d4-fb23331cc262
# ╟─aa112886-caa6-4506-9afb-826f717a6641
# ╟─774f40ac-8b98-4d2f-a7cf-caeba1911b3c
# ╟─f2dd18d9-a2cc-43c2-8635-38d05351a4ad
# ╟─23780f4d-cd23-4c13-9400-5de3b370a3ae
# ╟─0d26636d-8ea9-488b-8068-8fb8a19b7e7e
# ╟─1cb6306a-3f87-45f2-a606-2686500b9fb4
# ╟─de8673d8-7c98-40e1-a57b-e110b527ea3e
# ╟─732e4fe2-4080-493c-a531-94fee6ebba5b
# ╟─63ab4d1a-2a18-4a93-a41a-0bcf3989b337
# ╟─79a3cab8-9228-45bf-845c-c90207fe5b6f
# ╟─2a82af5c-a57d-4e98-bf62-a474b9ef88ef
# ╟─df3bbad8-b8b0-4779-b881-c1ea006e5cb1
# ╟─983593ae-f453-40cb-b1ef-78925bfc0623
# ╟─7d4e5198-ef9b-4406-bdc1-db9635f09cff
# ╟─86dd4ec8-3867-428b-bfcf-2ffe59d6ec94
# ╟─2fdfa186-201a-4a4a-8ea8-339654188226
# ╟─ebdf46ea-c062-413f-80e6-662403cf611a
# ╟─beb27235-ec5e-44e0-93d6-87ed3ecb8c51
# ╟─f73f6322-3b3e-4f0c-a49c-59fcb596dfe2
# ╟─0a9566ef-b7eb-4bc9-ab5a-f8b58162d443
# ╟─0ae56a6f-5ed7-43e4-a248-8eddfa2c51d7
# ╟─4617efd2-33fc-4504-976a-24705b7e240d
# ╟─da8ccb7b-5e72-40d9-b6cd-7c409258ee6a
# ╟─05267004-47b8-4eda-9411-5ddc5330ab50
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
