# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Random partitioning can be adopted because it is simple, unbiased, and ensures that each observation has an equal chance of being assigned to any group. However, it may lead to imbalances in small samples, ignore important structure in the data, and produce varying results unless carefully controlled.

## Partitioning by Hour

Partitioning by Hour ensures that each group reflects distinct daily patterns and preserves time-dependent effects.
However, this approach can produce uneven group sizes and may make the groups less comparable.

## Partitioning by Hash Value

Partitioning by hash value is useful because it spreads data evenly and always puts the same item in the same group.
But it doesn’t look at time or order, so it can miss important patterns in the data.
