# AWS Maritim Pontianak

AWS Maritim Pontianak is an android application that builds by reference from the website [BADAN METEOROLOGIKLIMATOLOGI DAN GEOFISIKA | Automatic Weather Station - System Online](http://202.90.199.132/aws-new/monitoring/3000000011)

## Getting Started

**Note**: You needs to have flutter and git installed on your machine in order to run it locally.

Step 1: Clone the project on your machine using the following command

```ssh
git clone https://github.com/21soft/aws-maritim-ptk.git
```

Step 2: In the project directory, run the following command on your terminal to install all the dependencies.

```ssh
flutter pub get
```

Step 3: Finally, run the following command to start the programs.

```ssh
flutter run lib/main.dart
```

## Feature

- Monitoring Air Temp
- Monitoring Humidity
- Monitoring Pressure
- Monitoring Radiation
- Monitoring Rainfall
- Monitoring Windspeed
- Monitoring Water Temp
- Monitoring Water Level
- Monitoring Wind Direction

## Data

URL API: http://202.90.199.132/aws-new/data/station/latest/3000000011

### Data Structure

```JSON
{
  "idaws": "3000000011",
  "waktu": "2022-10-07 23:00:00",
  "windspeed": "0.50",
  "winddir": "217.00",
  "temp": "23.70",
  "rh": "95.50",
  "pressure": "1010.00",
  "rain": "22.40",
  "solrad": "0.00",
  "netrad": "0.00",
  "watertemp": "26.30",
  "waterlevel": "1.625",
  "ta_min": "0.00",
  "ta_max": "0.00",
  "pancilevel": "0.00",
  "pancitemp": "0.00"
}
```
