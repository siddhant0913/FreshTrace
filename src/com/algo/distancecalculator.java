package com.algo;

public class distancecalculator {
	private String name;
    private double longitude;
    private double latitude; 
    
    public distancecalculator(String name, double latitude, double longitude) {
        this.name = name;
        this.latitude  = latitude;
        this.longitude = longitude;
    }
    public double distanceTo(distancecalculator that) {
        double km = 1.15077945;// Radius of the earth in km
        double slat1 = Math.toRadians(this.latitude);
        double slon1 = Math.toRadians(this.longitude);
        double dlat2 = Math.toRadians(that.latitude);
        double dlon2 = Math.toRadians(that.longitude);

        // great circle distance in radians, using law of cosines formula
        double distance = Math.acos(Math.sin(slat1) * Math.sin(dlat2)
                               + Math.cos(slat1) * Math.cos(dlat2) * Math.cos(slon1 - dlon2));

        // each degree on a great circle of Earth is 60 nautical miles
        double nMiles = 60 * Math.toDegrees(distance);
        double kmdistance = km * nMiles* 1.609344;
        return kmdistance;
    }
    public String toString() {
        return name + " (" + latitude + ", " + longitude + ")";
    }
	public static void main(String[] args) {
		distancecalculator loc1 = new distancecalculator("Shivaji-Nagar", 18.5314, 73.8446);
		distancecalculator loc2 = new distancecalculator("Ambegaon",18.4458,73.8507);  
        double distance = loc1.distanceTo(loc2);
       System.out.printf("%6.3f miles from\n", distance);
        System.out.println(loc1 + " to " + loc2);
	}

}
