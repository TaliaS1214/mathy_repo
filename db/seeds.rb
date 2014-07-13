Subject.destroy_all
Article.destroy_all

# Setting up the subjects

subjects = [
  {
  name: 'Pre-Calculus',
  level: 'High School',
  articles:[
      {
      position: 1,
      title: 'Introduction',
      introduction: '',
      body: "body"
      },
      {
        position: 2,
        title: 'Functions',
        introduction: "The idea of a function is one of the most fundamental in all of mathematics. We're using to considering functions like &fnof;(x) = x^2 or &fnof;(x) = x + 3. In this context, we think of a function &fnof; as a "black box" which accepts a number as an input and returns another number as an output. For example, with the function &fnof;(x) = x^2, our "black box" accepts a number and returns the square of that number. So if we feed the number 2 to our function &fnof;, we get back 4. If we feed it 10, we get back 100. But there are some subtleties here that have been swept under the rug. What kind of numbers is a function *allowed* to accept as inputs? Which numbers are permissible outputs of a function? We'll cover these ideas extensively using precise mathematical language in this section, and by the end of it you should be comfortable with talking about functions in a technical sense.",
        body: "Wikipedia's definition of a function is 'a relation between a set of inputs and a set of permissible outputs with the property that each input is related to exactly one output.' When we normally talk about functions, we're used to considering a function like &fnof;(x) = x + 1. Let's assume that we can substitute any number we'd like for 'x'; it can be an integer like 2 or -3; a rational number like 4.2 or 10.5; or an irrational number like &radic;2 or &pi;. To make it more clear what a function is, consider the image below, where we have a set of inputs (labeled X) and a set of outputs (labeled Y).

        ![Alt text](http://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Injection_keine_Injektion_2a.svg/200px-Injection_keine_Injektion_2a.svg.png)

        We draw arrows going from inputs to outputs in order to specify the relation between a given input and its output. Notice a few things about the picture above. The first is that we have numbers which are being "mapped" to letters! That's rather strange, isn't it? From a mathematical standpoint, yes, this is weird. In math, we don't typically define functions which accept numbers as inputs and return letters as outputs. But from a logical standpoint, there's nothing strange going on here. We're simply feeding numbers to our black box, and our black box is spitting out letters.

        This brings us to our first definition.

        **Definition 1** The *domain* of a function is the set of all inputs or arguments for which a function is defined.

        In other words, the domain of a function is the set of all things (whether they're numbers or letters or made-up symbols) which one is allowed to pass to a function as an input. In our picture above, we have called the domain "X", which simply consists of the numbers 1, 2, and 3. We write this concisely as X = {1, 2, 3}.

        Cool - we have a name for the stuff that you can plug into a function. What about the stuff that the function spits back out? There's a name for that too, and it's called the *range*.

        **Definition 2** The *range* of a function (also known as the *image*) is the set of all outputs of a function.

        In our picture above, our range is the letters *C* and *D*, since 1 gets mapped to *D* and 2 and 3 get mapped to *C*. Notice that there are no numbers in our domain X which get mapped to the letters *A* and *B*. This means that *A* and *B* don't lie in the range of our function. So why are they even in that bubble on the right-hand side? Because they lie in another special set, called the *codomain*.

        **Definition 3** The set of all potential or permissible outputs of a function is called the *codomain* of a function.

        Notice that the range of a function is always a subset of a function's codomain, since the actual outputs of a function (the range) must be included in the set of *potential* outputs (the codomain).

        Let's examine this in the context of an example with which we're more familiar. Consider the function &fnof;(x) = x^2. What are the domain and codomain of the function? The answer is: we don't know yet! Why? Because it's up to us. We get to choose what are the permissible inputs and outputs of the function."
      },
      {
        position: 3,
        title: 'Conic Sections',
        introduction: "In this section we'll discuss the various kinds of conic sections,
        which are 1. Ellipses, 2. Parabolas, and 3. Hyperbolas.",
        body: "Body."
      },
      {
        position: 4,
        title: 'Exponents and Logs',
        introduction: "In this section we'll discuss what exponents and logarithms are
        and how they're related to one another. A solid understanding of both concepts
        is critical to understanding much of calculus and higher mathematics, so be sure
        that you understand each of the topics discussed below!",
        body: "Talk a bit about exponentials and logs here."
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
        body: "Number Theory - the study of the integers - is among the oldest mathematical disciplines."
      },
      {
        position: 2,
        title: 'Prime Numbers',
        introduction: "Prime numbers are one of the fundamental units of study in number theory. They are considered
        the \"building blocks\" of the integers due to a result known as the Fundamental Theorem of Arithmetic, which
        states that every integer greater than 1 is either itself prime or the product of primes (more on this later). Prime
        numbers exhibit many interesting properties, and many important open questions in mathematics deal with prime numbers.
        In this section we cover some basic properties of prime numbers and some important results.",
        body: "Before we begin, let's recall (or learn for the first time) what a prime number is:

        **Definition 1** A natural number is said to be *prime* if it is divisible only by 1 and itself.

        Examples of prime numbers include 2, 3, 5, and 7, while numbers that are not prime (known as **composite** numbers) include 4 and 6, since 4 can be factored as 2x2 and 6 can be factored as 2x3. Great! Now that we know what a prime number is, we can prove a basic lemma about integers. Let's do that.

        **Lemma 1** If a prime number *p* divides both *n* and *m*, then it *p* divides *n + m*.

        **Proof** Since *p* | *n*, we have that *n* = *pq_1* for some integer *q_1*. Similarly, *m* = *pq_2*. Thus, *n* + *m* = *pq_1* + *pq_2* = *p(q_1 + q_2)*.

        Note that it is immediate that *p* also divides *n* - *m*. We now prove another basic lemma.

        **Lemma 2** Every integer greater than 1 has at least one prime divisor.

        **Proof** Suppose for the sake of contradiction that this were false, i.e. that there were at least one integer greater than 1 that did not have a prime divisor. Consider the the smallest such integer *n*. Obviously *n* divides itself, and since we're assuming that no prime number divides *n*, we know that *n* must be composite. Thus, *n* = *pq* for some positive integers *p* and *q*, where both 1 < *p* < *n* and 1 < *q* < *n*. Now, since *p* < *n*, we know that there is a prime number *k* which divides *p*, since *n* was the smallest integer that did not have a prime divisor. But if the prime number *k* divides *p*, then it must also divide *n*. Thus, *n* in fact **does** have a prime divisor, and therefore all integers greater than 1 have a prime divisor. Q.E.D.

        That wasn't so bad. Now that we have Lemma 2 in our bag of tricks, we're ready to prove a fundamental theorem (originally proved by Euclid) about primes which states that there are infinitely many prime numbers.

        **Theorem 1** There are infinitely many prime numbers.

        **Proof** As in Lemma 2, suppose that the statement were false, i.e. that there were not infinitely many prime numbers. Then there are only *n* primes, where *n* is some positive integer. Then we could enumerate the entirety of the prime numbers in a finite list. In other words, if the set of prime numbers were labeled A, then we would have *A* = {*p_1*, *p_2*, ... , *p_n* }. Suppose we consider the number M = *p_1*  *p_2*  ... *p_n* + 1. Now, we know that *M* has a prime divisor, and by the well-ordering principle, we know it has a smallest prime divisor, call it *q*. It is clear that *q* = *p_i* for some 1 < *i* < *n*, since *q* must come from the finite list *A*. Thus, since *q* divides both *M* and *p_1*  *p_2*  ... *p_n*, we know by Lemma 1 that *q* must also divide *M* - *p_1*  *p_2*  ... *p_n* = 1. But no prime divides 1, which means we have a contradiction. Thus, there must in fact be infinitely many primes. Q.E.D.

        Another way to state that there are infinitely many primes is the following: given any integer **N**, regardless of how large it is, there is at least one prime number (indeed, infinitely many) that is larger than *N*. We can now ask many interesting questions like, how can you tell whether or not a number is prime? For small numbers, it's easy - you just check to see whether or not it's divisible by a smaller number. But what about for numbers that are, say, 50,000 digits long? Well then it's not so easy."
      },
      {
        position: 3,
        title: 'Modular Arithmetic and Congruences',
        introduction: "In this section we'll talk about modular arithmetic and congruences.",
        body: "No body yet."
      },
      {
        position: 4,
        title: "Fermat's Little Theorem and RSA Encryption",
        introduction: "Here we'll talk about FLT and RSA.",
        body: "No body yet."
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      body: "body"
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
      introduction: article[:introduction].gsub("\n", " ").squeeze(" "),
      body: article[:body].gsub("\n", " ").squeeze(" ")})
    current_subject.articles << current_article
  end
end
