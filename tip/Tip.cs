using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Tip
/// </summary>
public class Tip
{
    private double mealAmount;
    private double tipPercent;
    private const double TAXPERCENT = .101;
    public Tip( double amount, double tipPerc)
    {
        mealAmount = amount;
        tipPercent = tipPerc;
        //
        // TODO: Add constructor logic here
        //
    }

    public double  calculateTax()
    {
        return mealAmount * TAXPERCENT;

    }

    public double calculateTip()
    {
        return mealAmount * tipPercent; 
    }
        public double Total()
    {
        return mealAmount + calculateTax() + calculateTip();
            
            }
        
        }