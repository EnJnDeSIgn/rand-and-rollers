#include <iostream>
#include <cmath>
using namespace std;

double moonPhase(double t, double A, double omega, double phi, double C) {
    return A * sin(omega * t + phi) + C;
}

int main() {
    double t, A, omega, phi, C;
    cout << "Enter time (t): ";
    cin >> t;
    cout << "Enter amplitude (A): ";
    cin >> A;
    cout << "Enter angular frequency (omega): ";
    cin >> omega;
    cout << "Enter phase shift (phi): ";
    cin >> phi;
    cout << "Enter vertical shift (C): ";
    cin >> C;

    double illumination = moonPhase(t, A, omega, phi, C);
    cout << "Moon illumination: " << illumination << endl;

    return 0;
}