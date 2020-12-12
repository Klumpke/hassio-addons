S0PCM-Reader
============

This is the Docker setup for the S0PCM-Reader application. This small Python application reads the pulse counters of a S0PCM-2 or S0PCM-5 and send the total and daily counters via MQTT to your favorite domotica application like Home Assistant. The S0PCM-2 or 5 are the S0 Pulse Counter Module sold by http://www.smartmeterdashboard.nl

I myself use it to count my water meter usage.

Docker Link: https://hub.docker.com/r/ualex73/s0pcm-reader/

Pulse vs liter vs m3
--------------------
I use the S0PCM-Reader to measure my water meter and normally in the Netherlands the water usage is measurement in m3 and not in liters. Only this S0PCM-Reader isn't really aware of liters vs m3, because it counts the pulses. So it is important for you to check how your e.g. water meter is counting the usage, my Itron water meter send 1 pulse per liter of water. This then means the 'measurement.yaml' file, which stores the total and daily counters, all should be in liters and not in m3.

The conversion from m3 to liter is easy, because you can just multiple it by 1000. E.g. 770.123 m3 is 770123 liter.

![alt text](https://raw.githubusercontent.com/ualex73/docker-s0pcm-reader/master/screenshots/water-meter.png "Water meter")