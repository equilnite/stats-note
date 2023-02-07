function normalpdf(x, mean = 0, sd = 1) {
    return jStat.normal.pdf(x, mean, sd);
}

function normalcdf(a, b, mean = 0, sd = 1) {
    return jStat.normal.cdf(b, mean, sd) - jStat.normal.cdf(a, mean, sd);
}

function invNorm(p, mean = 0, sd = 1) {
    return jStat.normal.inv(p, mean, sd);
}

function tpdf(x, df) {
    return jStat.studentt.pdf(x, df);
}

function tcdf(a, b, df) {
    return jStat.studentt.cdf(b, df) - jStat.studentt.cdf(a, df);
}

function invT(p, df) {
    return jStat.studentt.inv(p, df);
}

function binompdf(n, p, k) {
    return jStat.binomial.pdf(k, n, p);
}

function binomcdf(n, p, k) {
    return jStat.binomial.cdf(k, n, p);
}

function checkgeomet(p, k) {
    if (!(0 <= p && p <= 1)) {
        throw new Error("p is not between 0 and 1");
    }
    if (!((k % 1 == 0) && k > 0)) {
        throw new Error("p is not between 0 and 1");
    }
}

function geometpdf(p, k) {
    checkgeomet(p,k);
    return ((1 - p) ** (k - 1)) * p;
}

function geometcdf(p, k) {
    checkgeomet(p,k);
    var sum = 0;
    for (var x = 1; x <= k; x++) {
        sum += (1-p)**(x-1);
    }
    return sum * p;
}
