Problem.destroy_all
Article.destroy_all
Subject.destroy_all

# Setting up the subjects

subjects = [
  {
  name: 'Pre-Calculus',
  level: 'High School',
  articles:[
      {
      position: 1,
      title: 'Introduction',
      introduction: 'Intro',
      body: "No body yet.",
      problems: []
      },
      {
        position: 2,
        title: 'Functions',
        introduction: "The idea of a function is one of the most fundamental in all of mathematics. We're using to considering functions like &fnof;(x) = x^2 or &fnof;(x) = x + 3. In this context, we think of a function &fnof; as a 'black box' which accepts a number as an input and returns another number as an output. For example, with the function &fnof;(x) = x^2, our 'black box' accepts a number and returns the square of that number. So if we feed the number 2 to our function &fnof;, we get back 4. If we feed it 10, we get back 100. But there are some subtleties here that have been swept under the rug. What kind of numbers is a function *allowed* to accept as inputs? Which numbers are permissible outputs of a function? We'll cover these ideas extensively using precise mathematical language in this section, and by the end of it you should be comfortable with talking about functions in a technical sense.",
        body: "Wikipedia's definition of a function is 'a relation between a set of inputs and a set of permissible outputs with the property that each input is related to exactly one output.' When we normally talk about functions, we're used to considering a function like &fnof;(x) = x + 1. Let's assume that we can substitute any number we'd like for 'x'; it can be an integer like 2 or -3; a rational number like 4.2 or 10.5; or an irrational number like &radic;2 or &pi;. To make it more clear what a function is, consider the image below, where we have a set of inputs (labeled X) and a set of outputs (labeled Y).

![Alt text](http://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Injection_keine_Injektion_2a.svg/200px-Injection_keine_Injektion_2a.svg.png)

We draw arrows going from inputs to outputs in order to specify the relation between a given input and its output. Notice a few things about the picture above. The first is that we have numbers which are being 'mapped' to letters! That's rather strange, isn't it? From a mathematical standpoint, yes, this is weird. In math, we don't typically define functions which accept numbers as inputs and return letters as outputs. But from a logical standpoint, there's nothing strange going on here. We're simply feeding numbers to our black box, and our black box is spitting out letters.

This brings us to our first definition.

**Definition 1** The *domain* of a function is the set of all inputs or arguments for which a function is defined.

In other words, the domain of a function is the set of all things (whether they're numbers or letters or made-up symbols) which one is allowed to pass to a function as an input. In our picture above, we have called the domain 'X', which simply consists of the numbers 1, 2, and 3. We write this concisely as X = {1, 2, 3}.

Cool - we have a name for the stuff that you can plug into a function. What about the stuff that the function spits back out? There's a name for that too, and it's called the *range*.

**Definition 2** The *range* of a function (also known as the *image*) is the set of all outputs of a function.

In our picture above, our range is the letters *C* and *D*, since 1 gets mapped to *D* and 2 and 3 get mapped to *C*. Notice that there are no numbers in our domain X which get mapped to the letters *A* and *B*. This means that *A* and *B* don't lie in the range of our function. So why are they even in that bubble on the right-hand side? Because they lie in another special set, called the *codomain*.

**Definition 3** The set of all potential or permissible outputs of a function is called the *codomain* of a function.

Notice that the range of a function is always a subset of a function's codomain, since the actual outputs of a function (the range) must be included in the set of *potential* outputs (the codomain).

Let's examine this in the context of an example with which we're more familiar. Consider the function &fnof;(x) = x^2. What are the domain and codomain of the function? The answer is: we don't know yet! Why? Because it's up to us. We get to choose what are the permissible inputs and outputs of the function.",
      problems: []
      },
      {
        position: 3,
        title: 'Conic Sections',
        introduction: "In this section we'll discuss the various kinds of conic sections,
        which are 1. Ellipses, 2. Parabolas, and 3. Hyperbolas.",
        body: "Body.",
        problems: []
      },
      {
        position: 4,
        title: 'Exponents and Logs',
        introduction: "In this section we'll discuss what exponents and logarithms are
and how they're related to one another. A solid understanding of both concepts
is critical to understanding much of calculus and higher mathematics, so be sure
that you understand each of the topics discussed below!",
        body: "Talk a bit about exponentials and logs here.",
        problems: []
      }
    ]
  },
  {
    name: 'Number Theory',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: ' ',
        body: "Number Theory - the study of the integers - is among the oldest mathematical disciplines.",
        problems: []
      },
      {
        position: 2,
        title: 'Prime Numbers',
        introduction: "Prime numbers are one of the fundamental units of study in number theory. They are considered
the \"building blocks\" of the integers due to a result known as the Fundamental Theorem of Arithmetic, which
states that every integer greater than 1 is either itself prime or the product of primes (more on this later). Prime
numbers exhibit many interesting properties, and many important open questions in mathematics deal with prime numbers. In this section we cover some basic properties of prime numbers and some important results.",
        body: "
Before we begin, let's recall (or learn for the first time) what a prime number is:

**Definition 1** : A natural number is said to be *prime* if it is divisible only by 1 and itself.

Examples of prime numbers include 2, 3, 5, and 7, while numbers that are not prime (known as **composite** numbers) include 4 and 6, since 4 can be factored as 2x2 and 6 can be factored as 2x3. Great! Now that we know what a prime number is, we can prove a basic lemma about integers. Let's do that.

**Lemma 1** : If a prime number *p* divides both *n* and *m*, then it *p* divides *n + m*.

__Proof__ :
Since *p* | *n*, we have that *n* = *pq_1* for some integer *q_1*. Similarly, *m* = *pq_2*. Thus, *n* + *m* = *pq_1* + *pq_2* = *p(q_1 + q_2)*. Q.E.D.

Note that it is immediate that *p* also divides *n* - *m*. We now prove another basic lemma.

**Lemma 2**  : Every integer greater than 1 has at least one prime divisor.

__Proof__
Suppose for the sake of contradiction that this were false, i.e. that there were at least one integer greater than 1 that did not have a prime divisor. Consider the the smallest such integer *n*. Obviously *n* divides itself, and since we're assuming that no prime number divides *n*, we know that *n* must be composite. Thus, *n* = *pq* for some positive integers *p* and *q*, where both 1 < *p* < *n* and 1 < *q* < *n*. Now, since *p* < *n*, we know that there is a prime number *k* which divides *p*, since *n* was the smallest integer that did not have a prime divisor. But if the prime number *k* divides *p*, then it must also divide *n*. Thus, *n* in fact **does** have a prime divisor, and therefore all integers greater than 1 have a prime divisor. Q.E.D.

That wasn't so bad. Now that we have Lemma 2 in our bag of tricks, we're ready to prove a fundamental theorem (originally proved by Euclid) about primes which states that there are infinitely many prime numbers.

**Theorem 1**  : There are infinitely many prime numbers.

__Proof__
As in Lemma 2, suppose that the statement were false, i.e. that there were not infinitely many prime numbers. Then there are only *n* primes, where *n* is some positive integer. Then we could enumerate the entirety of the prime numbers in a finite list. In other words, if the set of prime numbers were labeled A, then we would have *A* = {*p_1*, *p_2*, ... , *p_n* }. Suppose we consider the number M = *p_1*  *p_2*  ... *p_n* + 1. Now, we know that *M* has a prime divisor, and by the well-ordering principle, we know it has a smallest prime divisor, call it *q*. It is clear that *q* = *p_i* for some 1 < *i* < *n*, since *q* must come from the finite list *A*. Thus, since *q* divides both *M* and *p_1*  *p_2*  ... *p_n*, we know by Lemma 1 that *q* must also divide *M* - *p_1*  *p_2*  ... *p_n* = 1. But no prime divides 1, which means we have a contradiction. Thus, there must in fact be infinitely many primes. Q.E.D.

Another way to state that there are infinitely many primes is the following: given any integer **N**, regardless of how large it is, there is at least one prime number (indeed, infinitely many) that is larger than *N*. We can now ask many interesting questions like, how can you tell whether or not a number is prime? For small numbers, it's easy - you just check to see whether or not it's divisible by a smaller number. But what about for numbers that are, say, 50,000 digits long? Well then it's not so easy, and this is where we'd need a computer to help us out.

Anyways, let's get back to the fundamentals. We're almost ready to prove a powerful and oft-used theorem called the Fundamental Theorem of Arithmetic, but first we need a couple of lemmas.

**Lemma 3** : If *a*, *b*, and *c* are positive integers such that gcd(*a*, *b*)=1 and *a* | *bc*, then *a* | *c*.

__Proof__ :
From earlier, we know that there exists integers *x*, *y* such that *ax* + *by* = 1. Then we have that *acx* + *bcy* = *c*. Since *a* | *bc*, we have that *a* divides each of the terms on the lefthand side of the equation. It therefore must divide the entirety of the lefthand side, and thus it also divides the entirety of the righthand side, i.e. *a* | *c*. Q.E.D.

Great. One last lemma is the following (if you need a refresher on what mathematical induction is, check out the 'Common Proof Techniques' page!)

**Lemma 4** : If *p* is a prime number and *p* | *n_1 n_2 n_3 ... n_k * where each *n_i* is a positive integer, then we must have that *p* | *n_i* for at least one value of *i*, 1 <= *i* <= *k*.

__Proof (Induction)__
1) It's immediately obvious for *k*=1, since our assumption would be *p* | *n_1*.
2) Suppose that the statement holds for all values of *k* <= *N*, where *N* is some arbitrary positive integer.
3) We now ask, does the statement hold for *k* = *N* + 1? Well, suppose we have some number *p* which divides *n_1 n_2 ... n_{N+1}*.  Because *p* is itself prime, we have that either gcd(*p*, *n_1 n_2 ... n_N*)=1 or gcd(*p*, *n_1 n_2 ... n_N*)=p. In the former case, we apply Lemma 3 to conclude that *p* | *n_{N+1}*, in which case the result holds. In the latter case, we have that  gcd(*p*, *n_1 n_2 ... n_N*)=p => *p* | *n_1 n_2 ... n_N*. Thus, we apply the our inductive hypothesis to conclude that *p* | *n_i* for at least one *n_i*, 1 <= *i* <= *N*. Q.E.D.

Excellent. That's all we need! We're ready to prove the Fundamental Theorem of Arithmetic:

**Theorem (Fundamental Theorem of Arithmetic** : Every positive integer greater than 1 can be uniquely expressed as a product of prime numbers.

__Proof (Contradiction)__
Suppose that the conclusion were false, i.e. that there's at least one integer greater than 1 that cannot be uniquely expressed as a product of prime numbers. Let *n* be the smallest such integer. Obviously *n* can't be prime, because then *n* itself would in fact be expressed as the product of prime numbers. So *n* must be composite, i.e. *n* = *pq*, where *1 < p < n*, *1 < q < n*. Now, by assumption that *n* is the smallest number which cannot be expressed as the product of primes, we know that both *p* and *q* are able to be expressed as the product of primes, since they're both strictly less than *n*. But that means that *n*, being the product of *p* and *q*, is also a product of primes. So *n* can in fact be expressed as the product of primes, and therefore every integer greater than 1 can be expressed as the product of primes.
To finish the proof, we need to show that the factorization of any integer greater than 1 into primes is unique. So suppose there were some integer *n* such that its factorization were not unique, i.e. *n* = *p_1 p_2 ... p_j* = *q_1 q_2 ... q_k*, where each *p_i* and *q_l* is prime. We cancel out all the common prime factors to get *p_i1 p_i2 ... p_is* = *q_j1 q_j2 ... q_js *, which means that none of the *p_i*'s are equal to any of the *q_j*'s. Now, since, say, *p_i1* divides the left hand side, it must also divide the right hand side, which means that by Lemma 4, *p_i1* | *q_jk* for some value of *k*. But that's impossible, since *q_jk* is prime. Thus, the factorization is unique. Q.E.D.",
      problems: []
      },
      {
        position: 3,
        title: 'Modular Arithmetic and Congruences',
        introduction: "Modular arithmetic is an arithmetic system in which the integers behave quite differently from the way we're used to integers behaving. Unlike the normal arithmetic we know and love, when doing modular arithmetic with integers, there is such thing as a largest element. The analogy commonly used is that modular arithmetic is like telling time. When we look at a clock and see that it's 3 hours past 12pm, we know that it's not 15 o'clock (assume we're not on military time) but rather 3 o'clock. That's because the hours \"wrap around\" after the first 12 hours in the day have passed - the largest element in our time-telling system is the number 12. Now, unlike time, with modular arithmetic, there is a 0 element. The limit which the integers in a modular system may not exceed is referred to as the modulus , so in our time-telling scheme, we would say that we're doing arithmetic \"modulo 12\". We'll get into the details below. Keep in mind that modular arithmetic isn't easy to understand the first time you see it, so don't be worried if you don't completely understand this whole article the first time around!",
        body: "Modular arithmetic works using what's known as a congruence relation.
Modular arithmetic works using what's known as a congruence relation. A congruence relation is a special kind of equivalence relation, which is a binary relation on a set that obeys certain special rules. Those rules are given in the following definition,

**Definition** (Equivalence Relation) : A binary relation ~ on a set *X* is said to be an equivalence relation if and only if the following three properties hold:
1) (Reflexivity) a ~ a
2) (Symmetry) a ~ b => b ~ a
3) (Transitivity) a ~ b and b ~ c => a ~ c

Let's make this a little more concrete with some examples.

a) If we define the relation ~ between two lines in a flat plane to means 'is parallel to,' then ~ is an equivalent relation. This is because
  1) A line is parallel to itself
  2) If line L_1 is parallel to line L_2, then line L_2 is also parallel to L_1
  3) If line L_1 is parallel to line L_2 and line L_2 is also parallel to L_3, then L_1 is parallel to L_3.

b) If we have two geometric objects A and B in a flat plane, and we define the relation ~ to be mean 'is similar to', i.e. A ~ B means 'object A is similar to object B', then ~ is an equivalence relation.

c) The &le; relation is *not* an equivalence relation. This is because it is not symmetric, e.g. 2 &le; 3, but obviously we don't have 3 &le; 2.

Now, a congruence relation is more or less an equivalence relation, but with the extra requirement that the set *X* on which the relation is defined is an algebraic structure. In our case, when we talk about the set of integers 'modulo *n*,' we're actually referring to a special mathematical object known as a ring. A ring is just a set of arbitrary elements with some special rules and properties, but we won't get into that here. If you're interested, you should consult the abstract algebra section of the site.

In any case, let's move on to modular arithmetic. When we talk about the set of integers 'modulo' some other integer *n*, what we mean is this: all integers in this number system are between 0 and *n-1* (inclusive). Addition, subtraction, and multiplication all work the way they do with the normal integers, but we are not allowed to divide numbers^1. Now, what happens when we add or multiply two numbers and we get a number that's less than 0 or bigger than *n-1*? Simple - we keep adding *n* or subtracting *n* from the number until it falls back within the set {0, 1, 2, ... , *n-2*, n-1*}. So if we are working with the integers modulo 7, and we consider 4*3 = 12, then this result in our modulo 7 world is actually given by 12-7 = 5. Thus, modulo 7, 4*3 = 5.

If we have 5^2 = 25, then this becomes 25 = 18 = 11 = 4. We write this succinctly as 5^2 = 4 (mod 7). The symbol we use here is the congruence operator, which indicates that under our congruence relation, two numbers are equivalent (congruent) to one another. What exactly is the equivalence relation here? Above we basically just said that a number outside the range {0, ... , *n-1*} is equivalent to some number inside the range one we've subtracted or added *n* sufficiently many times, but this can be put into mathematical language more precisely. The two definitions for our congruence relation are equivalent:

1) Two numbers *a* and *b* are congruent modulo *n* if a % n = b % n (i.e. the remainders of both numbers after being divided by *n* are the same)

2) Two numbers *a* and *b* are congruent modulo *n* if n | *b - a*.

Thus, from above, we have that 25 = 4 mod 7 because 1) 25 % 7 = 4 = 4 % 7 and because 2) 7 | (25 - 4).

(More to come later)

Footnotes
1. The reason why we can't divide numbers is that for most values of *n*, the set of integers modulo *n* is not a field, which is to say that not every element possesses a multiplicative inverse. See the abstract algebra section for more details.",
        problems: [
          {
            question: "Calculate 7 (mod 4)",
            answer: "3",
            difficulty_level: 1
          },
          {
            question: "Calculate 50 (mod 5)",
            answer: "0",
            difficulty_level: 1
          },
          {
            question: "Calculate 4387 (mod 15)",
            answer: "7",
            difficulty_level: 1
          },
          {
            question: "(T/F) 10 &equiv; 6 (mod 4)",
            answer: "T",
            difficulty_level: 1
          },
          {
            question: "(T/F) a &equiv; b (mod n) implies ac &equiv; bc (mod n)",
            answer: "T",
            difficulty_level: 2
          },
          {
            question: "(T/F) ac &equiv; bc (mod n) implies a &equiv; b (mod n)",
            answer: "F",
            difficulty_level: 2
          },
          {
            question: "Calculate 9^1001 (mod 5)",
            answer: "-1",
            difficulty_level: 2
          }
        ]
      },
      {
        position: 4,
        title: "Fermat's Little Theorem and RSA Encryption",
        introduction: "Here we'll talk about FLT and RSA.",
        body: "No body yet.",
        problems: []
      }
    ]
  },
  {
    name: 'Geometry',
    level: 'High School',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Algebra I',
    level: 'High School',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Algebra II',
    level: 'High School',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Complex Analysis',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Calculus',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Linear Algebra',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Ordinary Differential Equations',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Partial Differential Equations',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Numerical Analysis',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Probability',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Statistics',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Abstract Algebra',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      },
      {
        position: 2,
        title: 'Groups',
        introduction: '',
        body: "body",
        problems: []
      },
      {
        position: 3,
        title: 'Rings',
        introduction: '',
        body: "body",
        problems: []
      },
      {
        position: 4,
        title: 'Fields',
        introduction: '',
        body: "body",
        problems: []
      },
      {
        position: 5,
        title: 'Vector Spaces',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Real Analysis',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Multivariable Calculus',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Non-Euclidean Geometry',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Combinatorics',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Topology',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  },
  {
    name: 'Linear Programming',
    level: 'College',
    articles: [
      {
        position: 1,
        title: 'Introduction',
        introduction: '',
        body: "body",
        problems: []
      }
    ]
  }
]

subjects.each do |subject|
  current_subject = Subject.create!({
    name: subject[:name],
    level: subject[:level]})
  subject[:articles].each do |article|
    current_article = Article.create({
      position: article[:position],
      title: article[:title],
      introduction: article[:introduction], #.gsub("\n", " ").squeeze(" "),
      body: article[:body], #.gsub("\n", " ").squeeze(" ")
      })
    article[:problems].each do |problem|
      current_problem = Problem.create!(problem)
      current_article.problems << current_problem
    end
    current_subject.articles << current_article
  end
end
