import math

def calculate_large_exponent(base, exponent):
    log_result = exponent * math.log10(base)
    return f"10^{log_result:.2f}"

# Calculate 2^10^9 using logarithms
base = 2
exponent = 10**9
scientific_notation = calculate_large_exponent(base, exponent)
print(f"2^{exponent} in scientific notation is approximately: {scientific_notation}")