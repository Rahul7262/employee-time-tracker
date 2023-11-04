package com.practice.totaltime;

import java.time.LocalTime;

public class SystemTime extends Thread {

	public void run() {

		while (true) {
			LocalTime time = LocalTime.now();
			int h = time.getHour();
			int m = time.getMinute();
			int s = time.getSecond();
			String currenttime = h + ":" + m + ":" + s;
			try {
				Thread.sleep(1000);
			} catch (Exception ex) {
				System.out.println(ex);
			}
			
		}
		

	}

}
