p <- histogram(~Sepal.Length|equal.count(Sepal.Width,number=4),data=iris)
print(p)
