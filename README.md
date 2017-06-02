The task
=======

Create a program that takes a single string as input, and returns the [run length encoded value](https://en.wikipedia.org/wiki/Run-length_encoding).

## About run length encoding

Run length encoding is a compression algorithm that takes runs of sequential items in a series of data points, replacing that run with a single instance of the data point and the number of elements in that run.

This compression algorithm can be fairly efficient for some types of data. For example bitmap images can be greatly reduced by using this method, however it would be a poor choice for English language text, since it’s uncommon for a charater to be repeated more than twice. This would be extremely inefficient as most words would double in length, such as horse, which becomes h1o1r1s1e1.

Historically, RLE has been used to encode bitmap images in Windows 3.x. It was not a commonly used format, however it was used as the format of the startup screen. The algorithm is also used by fax machines, since the data they send is largely whitespace with small amounts of text on the page.

## Example

Given a string of uppercase characters in the range A-Z, replace runs of sequential characters with a single instance of that value preceded by the number of items in the run.

For example, if would take the sequence JJJTTWPPMMMMYYYYYYYYYVVVVVV the output would look like:

3J2T1W2P4M9Y6V

# Part I

Write the encoder that turns string into their run length encoded versions.

# Part II

Seems easy? How about doing the reverse, and decoding a run length string and expand it to its original format!

## How do test my code?

Load up the REPL with:

```bash
$ mix && iex -S mix
```

Then you can test it with:

```bash
iex(1)> Runlength.encode "ASDF"
"1A1S1D1F"
```

## How do I know I'm done?

This repo has some tests, so you can easily run run them with

```bash
$ mix test
```

If you're only interested in the encoding tests, then do

```bash
$ mix test test/encode_test.ex

```
