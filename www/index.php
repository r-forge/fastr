
<!-- This is the project specific website template -->
<!-- It can be changed as liked or replaced by other content -->

<?php

$domain=ereg_replace('[^\.]*\.(.*)$','\1',$_SERVER['HTTP_HOST']);
$group_name=ereg_replace('([^\.]*)\..*$','\1',$_SERVER['HTTP_HOST']);
$themeroot='http://r-forge.r-project.org/themes/rforge/';

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title><?php echo $group_name; ?></title>
	<link href="<?php echo $themeroot; ?>styles/estilo1.css" rel="stylesheet" type="text/css" />
  </head>

<body>

<!-- R-Forge Logo -->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr><td>
<a href="/"><img src="<?php echo $themeroot; ?>/images/logo.png" border="0" alt="R-Forge Logo" /> </a> </td> </tr>
</table>


<!-- get project title  -->
<!-- own website starts here, the following may be changed as you like -->

<!--
<?php if ($handle=fopen('http://'.$domain.'/export/projtitl.php?group_name='.$group_name,'r')){
$contents = '';
while (!feof($handle)) {
	$contents .= fread($handle, 8192);
}
fclose($handle);
echo $contents; } ?>
-->
<h1>fastR</h1>

fastR is an R package that contains data and other utilities to support the book
<cite>Foundations and Applications of Statistics: An Introduction using R</cite>.
This book is designed for an upper-level undergraduate "mathematical statistics" course (or 2-semester
sequence), but it a different from other books for this audience.



<!-- end of project description -->
<h2>Obtaining the book</h2>
<p>
<cite>Foundations and Applications of Statistics: An Introduction Using R</cite> is being published
by the American Mathematical Society and is scheduled to appear in early 2011.  If you are interested 
in using the book before it is published, contact the author 
(<a href="mailto:rpruim@calvin.edu">rpruim@calvin.edu</a>).
</p>

<h2>Approach of the book</h2>
Features of this book that help distinguish it from other books available for such a 
course include 
<ul>
<li>
The <strong>use of R</strong>, a free software environment for statistical computing and graphics, 
throughout the text. 
Many books claim to integrate technology, but often technology appears 
to be more of an afterthought. In this book, topics are selected, ordered, and 
discussed in light of the current practice in statistics, where computers are an 
indispensable tool, not an occasional add-on. 
R was chosen because it both powerful and available. Its “market share” 
is increasing rapidly, so experience with R is likely to serve students well in 
their future careers in industry or academics. A large collection of add-on 
packages are available, and new statistical methods are often available in R 
before they are available anywhere else. 
R is open source and available at the Comprehensive R Archive Network 
(CRAN, http://cran.r-project.org) for a wide variety of computing platforms at no cost. 
This allows students to obtain the software for their personal 
computers – an essential ingredient if computation is to be used throughout 
the course. 
The R code in this book was executed on a 2.66 GHz Intel Core 2 Duo 
MacBook Pro running OS X (version 10.5.8) and the current version of R 
(2.11). Results using a different computing platform or different version of R 
should be similar. 
<li>
An emphasis on <strong>practical statistical reasoning</strong>. 
The idea of a statistical study is introduced early on using Fisher’s famous 
example of the lady tasting tea. Numerical and graphical summaries of data 
are introduced early to give students experience with R and to allow them 
to begin formulating statistical questions about data sets even before formal 
inference is available to help answer those questions. 
<li>
<strong>Probability for statistics</strong>. 
One model for the undergraduate mathematical statistics sequence presents 
a semester of probability followed by a semester of statistics. In this book, 
I take a different approach and get to statistics early, developing the 
necessary probability as we go along, motivated by questions that are primarily 
statistical. Hypothesis testing is introduced almost immediately, and p-value 
computation becomes a motivation for several probability distributions. The 
binomial test and Fisher’s exact test are introduced formally early on, for example. 
Where possible, distributions are presented as statistical models first, 
and their properties (including the probability mass function or probability 
density function) derived, rather than the other way around. Joint distributions 
are motivated by the desire to learn about the sampling distribution of 
a sample mean. 
Confidence intervals and inference for means based on t-distributions must 
wait until a bit more machinery has been developed, but my intention is that 
a student who only takes the first semester of a two-semester sequence will
have a solid understanding of inference for one variable – either quantitative 
or categorical. 
<li>
The <strong>linear algebra middle road</strong>. 
Linear models (regression and ANOVA) are treated using a geometric, 
vector-based approach. A more common approach at this level is to intro- 
duce these topics without referring to the underlying linear algebra. Such an 
approach avoids the problem of students with minimal background in linear 
algebra, but leads to mysterious and unmotivated identities and notions. 
Here I rely on a small amount linear algebra that can be quickly reviewed 
or learned and is based on geometric intuition and motivation (see Appendix C). 
This works well in conjunction with R since R is in many ways vector-based 
and facilitates vector- and matrix-operations. On other hand, I avoid 
using an approach that is too abstract or requires too much background for 
the typical student in my course. 
</ul>

<h2>Brief Outline of the book</h2>
<p>
<a href="http://www.calvin.edu/~rpruim/fast/amsfast-toc.pdf">Table of Contents</a> [pdf]
</p>

<p>
The first four chapters of this book introduce important ideas in statistics (distributions, 
variability, hypothesis testing, confidence intervals) while developing a 
mathematical and computational toolkit. I cover this material in a one-semester 
course. And since some of my students only take the first semester, I wanted to 
be sure that they have gotten a sense for statistical practice and have some useful 
statistical skills even if they do not continue. Interestingly, as a result of designing 
my course so that stopping half-way makes some sense, I am finding that more 
of my students are continuing on to the second semester. My sample size is still 
small, but I hope that the trend continues, and would like to think it is due in part 
because the students are enjoying the course and can see “where it is going.” 
</p>
<p>
The last three chapters deal primarily with two important methods for handling 
more complex statistical models: maximum likelihood and linear models (including 
regression, ANOVA, and an introduction to generalized linear models). This is not 
a comprehensive treatment of these topics, of course, but I hope it both provides 
flexible, usable statistical skills and prepares students for further learning. 
</p>

<p>
Chi-squared tests for goodness of fit and for two-way tables using both the 
Pearson and likelihood ratio test statistics are covered after first generating empirical 
p-values based on simulations. The use of simulations here reinforces the 
notion of a sampling distribution and allows for a discussion about what makes a 
good test statistic when multiple test statistics are available. I have also included 
a brief introduction to Bayesian inference, some examples that use use simulations 
to investigate robustness, a few examples of permutations tests, and a discussion 
of Bradley-Terry models. The latter topic is one that I cover between Selection 
Sunday and the beginning of the NCAA Division I Basketball Tournament each 
year. An application of the method to the 2009–2010 season is included. 
</p>

<p>
Various R functions and methods are described as we go along, and Appendix A 
provides an introduction to R focusing on the way R is used in the rest of the book. 
I recommend that you work through Appendix A simultaneously with first chapter 
– especially if you are unfamiliar with programming or with R.
</p>

<p>
Some of my students enter the course unfamiliar with the notation for things 
like sets, functions, and summation, so Appendix B contains a brief tour of the basic 
mathematical results and notation that are needed. The linear algebra required for 
parts of Chapter 4 and again in Chapters 6 and 7 is covered in Appendix C. These 
can be covered as needed or used as a quick reference. Appendix D is a review of 
the first four chapters in outline form. It is intended to remind prepare students 
for the remainder of the book after a semester break, but it could also be used as 
an end of term review. 
</p>


<h2>fastR Package Project Summary</h2>

<p> You can find the <strong>project summary page</strong> for the fastR package <a href="http://<?php echo $domain; ?>/projects/<?php echo $group_name; ?>/"><strong>here</strong></a>. </p>

</body>
</html>
