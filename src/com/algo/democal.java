package com.algo;

public class democal {
	public static void main (String[] args) throws java.lang.Exception
	{
		distancecalculator loc1 = new distancecalculator("Shivaji-Nagar", 18.5314, 73.8446);
		distancecalculator loc2 = new distancecalculator("Ambegaon",18.4458,73.8507);  
        double distance = loc1.distanceTo(loc2);
       System.out.printf("%6.3f miles from\n", distance);
        System.out.println(loc1 + " to " + loc2);
	}
	

	private static double distance(double lat1, double lon1, double lat2, double lon2, String unit) {
		if ((lat1 == lat2) && (lon1 == lon2)) {
			return 0;
		}
		else {
			double theta = lon1 - lon2;
			double dist = Math.sin(Math.toRadians(lat1)) * Math.sin(Math.toRadians(lat2)) + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.cos(Math.toRadians(theta));
			dist = Math.acos(dist);
			dist = Math.toDegrees(dist);
			dist = dist * 60 * 1.1515;
			if (unit.equals("K")) {
				dist = dist * 1.609344;
			} else if (unit.equals("N")) {
				dist = dist * 0.8684;
			}
			return (dist);
		}
	}
}
