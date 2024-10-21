#include <iostream>
using namespace std;

double calculateArea(double t, double k) {
    double r = k * t;
    return 3.14159 * r * r;  // Area of a circle: πr^2
}

int main() {
    double t, k;
    cout << "Enter time (t): ";
    cin >> t;
    cout << "Enter rate of expansion (k): ";
    cin >> k;

    double area = calculateArea(t, k);
    cout << "Area of the expanding circle of love: " << area << endl;

    return 0;
}
