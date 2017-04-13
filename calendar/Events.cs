using System;
using System.Drawing;

public class Events
{
    public bool IgnoreTimeComponent { get; set; }
    public string EventsText { get; set; }
    public DateTime Date { get; set; }
    public float EventsLengthInHours { get; set; }
    public object RecurringFrequency { get; set; }
    public Font EventsFont { get; set; }
    public bool Enabled { get; set; }
    public Color EventsColor { get; set; }
    public Color EventsTextColor { get; set; }
    public bool ThisDayForwardOnly { get; set; }
}