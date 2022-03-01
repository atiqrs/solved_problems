/*
Mn = Monthly
Yr = Yearly

*/

double maxHouseRentMn = 25000.00;
double maxMedicalCostYr = 120000.00;
double maxTransportCostYr = 30000.00;

double minTaxAvoidanceAmountYr = 300000.00;

// tax calculation
double taxRange1 = 100000.00;
double taxRate = 0.05;

double houseAmountFun(double houseAmount) {
  // houseAmount
  if (houseAmount <= maxHouseRentMn) {
    // double houseAmount = houseAmount;
    print("House Amount is: ${tkCount(houseAmount.toString())}");
    return houseAmount;
  } else {
    print("House Amount is: ${tkCount(maxHouseRentMn.toString())}");
    return maxHouseRentMn;
  }
}

double medicalAmountFun(double medicalAmount) {
  // medicalAmount
  if ((medicalAmount * 12) <= maxMedicalCostYr) {
    // double medicalAmount = medicalAmount;
    print("Medical Amount is: ${tkCount(medicalAmount.toString())}");
    return medicalAmount;
  } else {
    print("Medical Amount is: ${tkCount((maxMedicalCostYr / 12).toString())}");
    return maxMedicalCostYr / 12;
  }
}

double transportAmountFun(double transportAmount) {
  // transportAmount
  if ((transportAmount * 12) <= maxTransportCostYr) {
    // double transportAmount = transportAmount;
    print("Transport Amount is: ${tkCount(transportAmount.toString())}");
    return transportAmount;
  } else {
    print("Transport Amount is: ${tkCount((maxTransportCostYr / 12).toString())}");
    return maxTransportCostYr / 12;
  }
}

calculateTax(double taxAmountYr) {
  double tax = 0.00;
  print("Tax pay amount is: ${tkCount(taxAmountYr.toString())}");

  if (taxAmountYr == minTaxAvoidanceAmountYr) {
    print("Tax pay amount is: ${tkCount(tax.toString())}");
    return tax;
  } else if (taxAmountYr > 0 && taxAmountYr < taxRange1) {
    tax = taxAmountYr * 0.05;
    print("Tax pay amount is: ${tkCount(tax.toString())}");
    return tax;
  } else {
    print("-------------------\nTax Not Applicable\n-------------------");
    return 0;
  }
}

// double transportAmountFun(double transportAmount) {}

String tkCount(String tk) {
  if (tk == 0) {
    return "0";
  } else if (10000 > double.parse(tk) && double.parse(tk) > 999) {
    return tk.toString().substring(0, 1) + "," + tk.toString().substring(1, tk.toString().length);
  } else if (100000 > double.parse(tk) && double.parse(tk) > 9999) {
    return tk.toString().substring(0, 2) + "," + tk.toString().substring(2, tk.toString().length);
  } else if (1000000 > double.parse(tk) && double.parse(tk) > 99999) {
    return tk.toString().substring(0, 1) + "," + tk.toString().substring(1, 3) + "," + tk.toString().substring(3, tk.toString().length);
  } else if (10000000 > double.parse(tk) && double.parse(tk) > 999999) {
    return tk.toString().substring(0, 2) + "," + tk.toString().substring(2, 4) + "," + tk.toString().substring(4, tk.toString().length);
  } else {
    return tk;
  }
}

void main() {
  double mainSalaryAmount = 31250.00;

  print('----------------------------------------------------------------------------------------------------');
  double houseAmount = houseAmountFun((mainSalaryAmount / 100) * 50);
  double medicalAmount = medicalAmountFun((mainSalaryAmount / 100) * 10);
  double transportAmount = transportAmountFun(2500.00);
  print('----------------------------------------------------------------------------------------------------');
  double totalIncomeAmountMn = (mainSalaryAmount + houseAmount + medicalAmount + transportAmount);
  double totalIncomeAmountYr = (totalIncomeAmountMn * 12);

  double totalTaxableSalaryAmountYr = (mainSalaryAmount * 14);
  double totalTaxableSalaryAmountMn = (totalTaxableSalaryAmountYr / 12);

  double netTaxPayableAmountYr = (totalTaxableSalaryAmountYr - minTaxAvoidanceAmountYr);

  print("Main Salary Amount is: ${tkCount(mainSalaryAmount.toString())}");
  print('----------------------------------------------------------------------------------------------------');
  // Monthly
  print("Total Income Amount Monthly is: ${tkCount(totalIncomeAmountMn.toString())}");
  print("Total Taxable Amount Monthly is: ${tkCount(totalTaxableSalaryAmountMn.toString())}");
  print('----------------------------------------------------------------------------------------------------');
  // Yearly
  print("Total Income Amount Yearly is: ${tkCount(totalIncomeAmountYr.toString())}");
  print("Total Taxable Amount Yearly is: ${tkCount(totalTaxableSalaryAmountYr.toString())}");
  print('----------------------------------------------------------------------------------------------------');

  // calculateTax(netTaxPayableAmountYr);
  print("=============\n||  ${calculateTax(netTaxPayableAmountYr)}  ||\n=============");
}
