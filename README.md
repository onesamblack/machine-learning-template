# machine-learning-template
A barebones template for machine learning projects in python.

Your machine learning project is probably not going to be used as an input to a larger scale software project. It will most likely be used as a reference/guide and example for other researchers and machine learning practicioners. If you develop software with general applicability and utility to the community in the course of your research, it would make sense to refactor that into its own library, package and deploy to pypi. Then, use that as a dependency in your research project

A machine learning project typically flows like this:

1. You have a lot of data (this goes into `data/`)
2. You create one/multiple notebooks (these go into `notebooks`) You may run these notebooks on a shared server or you may run them locally. You explore the data with pandas. You may perform some feature engineering and write some functions to handle this. You may create some visualizations. You test candidate models and test performance.
3. You collect all of these functions and your final model (PyTorch/Keras/Tensorflow, etc) along with a web app/streamlit app to demonstrate and highlight results (this goes into `src`)
4. You write tests for your application (this goes into `test`)
5. You may need to deploy your applications to AWS/GCP/Azure, this requires containerization and packaging (`Dockerfile` + `Makefile`)

## Using this template
This repository is set up as template repository. For instructions on how to create a repo from this template - see this [link](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template)

# Structure of the template
This template contains a structure for your machine learning projects. The top level is for packaging and your readme. I don't like to have any python source files or test files in the top level of the repo, aside from a `setup.py` if it's relevant, so thats all structured under `src` and `test`. If you're including datafiles, put them in `data`. If you have any notebooks that are relevant to the analysis, put them into `notebooks`. I use a `Makefile` to simplify running tests and commands to package/deploy. Additionally, there's a sample `Dockerfile`. 

Remember, this is for machine learning research projects, which typically include a number of candidate models and feature engineering/data preprocessing. If you develop something that's general - that should be in it's own repo with test coverage and contributing instructions - things you would find in a normal python project. 


## Readme
Your project readme should give your users a quick and clear understanding of what the project is, what the results are, and how to deploy/use the software. I recommend the following sections

### Background

a summary of the problem you are solving and the methods you use to solve them.

**Example**


> Detection of human trafficking networks from call logs using graph neural networks. We tested (2) methods for identifying networks, ConvGNNs and Graph Autoencoders (GAE)


### Results

The output of your model. This is best presented as a table. The goal here is to allow other researchers to understand this method in comparison with a benchmark test, or to make a quick determination on whether to spend time reviewing your methodology and reproducing your research.

**Example**

| Method                          | Accuracy |
|---------------------------------|----------|
| ConvGNNs                        | 69%  |
| **Graph Autoencoders**              | **72%**  |
| Benchmark (Logistic Regression) | 66%      |



### Usage
Now you can provide detail on the specific layout of your application and any additional detail provided for notebooks and/or the input data.

**Example**

#### Installation

```
make install
```

#### Training the model

```
python3 src/train.py -d "data/input_file.csv"
```

#### Running the application

```
python3 src/run_app.py
```

#### Testing
```
make test
```


#### References

If you've used any other repos/research papers, reference them here. Your README is not a place to write your research paper, but it is a nice place to highlight the most relevant research

**Example**

- [1] Akoglu L, Tong H, Koutra D. Graph based anomaly detection and description: a survey. Data Min Knowl Discov. 2015;29(3):626–88. [link](https://link.springer.com/article/10.1007/s10618-014-0365-y)
- [2] Boccaletti S, Latora V, Moreno Y, Chavez M, Hwang D-U. Complex networks: structure and dynamics. Phys Rep. 2006;424(4–5):175–308. [link](https://www.sciencedirect.com/science/article/abs/pii/S037015730500462X)
