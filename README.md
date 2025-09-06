# 🔢 R Matrix Caching

## 📖 Overview
This project provides an implementation of **caching mechanisms in R** to optimize expensive computations like calculating the mean of a vector or inverting a matrix.  

Instead of recalculating values each time, results are cached and reused, improving performance in scenarios with repeated operations.

---

## ✨ Features
- Cache the **mean of a numeric vector**.  
- Cache the **inverse of a square matrix**.  
- Demonstrates R’s `<<-` operator for managing state.  
- Avoids unnecessary recomputation for repeated calculations.  

---

## 🛠️ Functions

### `makeVector`
Creates a special vector object that supports:  
- Setting the value of the vector  
- Getting the value of the vector  
- Setting a cached mean  
- Getting a cached mean  

```r
makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}
