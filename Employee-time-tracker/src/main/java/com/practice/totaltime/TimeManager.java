package com.practice.totaltime;

public class TimeManager {

	public static String getTotalTime(String intime, String outtime) {
		int ints = getTimeInSeconds(intime);
		int outs = getTimeInSeconds(outtime);
		int total = ints - outs;
		int h = total / 3600;
		int s = total % 3600;
		int m = s / 60;
		s = s % 60;
		String time = h + "hrs," + m + "min," + s + "sec";
		return time;
	}

	private static int getTimeInSeconds(String time) {
		String[] x = time.split(":");
		int total = Integer.parseInt(x[0]) * 3600 + Integer.parseInt(x[1]) * 60 + Integer.parseInt(x[2]);
		return total;
	}

}
