#include <iostream>
#include <string>
#include <cstdlib>

using namespace std;

struct BusinessCard {
    string companyName;
    string address;
    string phone;
    string hours;
    string representative;
    int priceQuote;
};

void printCard(const BusinessCard& card) {
    cout << "-----------------------------\n";
    cout << "Company: " << card.companyName << endl;
    cout << "Address: " << card.address << endl;
    cout << "Phone: " << card.phone << endl;
    cout << "Hours: " << card.hours << endl;
    cout << "POC: " << card.representative << endl;
    cout << "Quoted Price: $" << card.priceQuote << endl;
}

int main() {

    int seed;
    cout << "Enter any number to generate price quotes: ";
    cin >> seed;
    srand(seed);

    // Random range 500-2000
    BusinessCard companies[5] = {
        {"Wayne Enterprises", "139 Kane Street in Midtown, Gotham City", "555-1111", "9am-5pm", "Bruce Wayne", 500 + rand() % 1951},
        {"LexCorp", "1452 Tilton Avenue, Metropolis", "555-2222", "9am-5pm", "Lex Luthor", 500 + rand() % 1951},
        {"Star Labs", "789 Flash Street, Central City", "555-3333", "9am-5pm", "Barry Allen", 500 + rand() % 1951},
        {"Stark Industries", "200 Park Avenue, Manhattan, New York", "555-4444", "9am-5pm", "Tony Stark", 500 + rand() % 1951},
        {"OzCorp", " 300 W 57th Street, Midtown Manhattan", "555-5555", "9am-5pm", "Norman Ozborn", 500 + rand() % 1951}
    };

    cout << "\nAll Price Quotes:\n";
    for (int i = 0; i < 5; i++) {
        printCard(companies[i]);
    }

    // Find cheapest
    int bestIndex = 0;
    for (int i = 1; i < 5; i++) {
        if (companies[i].priceQuote < companies[bestIndex].priceQuote) {
            bestIndex = i;
        }
    }

    cout << "\n=================================\n";
    cout << "Best Price Option:\n";
    printCard(companies[bestIndex]);

    return 0;
}
