weather_forecast = {
    monday: {
        sky: "scattered flurries",
        high: 0,
        low: -1,
        feels_like: -6,
        pop: 6/10,
        wind_speed_km: 25,
        hrs_of_sun: 1
    },
    tuesday: {
        sky: "scattered flurries",
        high: 3,
        low: -4,
        feels_like: -1,
        pop: 4/10,
        wind_speed_km: 15,
        hrs_of_sun: 1
    },
    wednesday: {
        sky: "a few flurries",
        high: 0,
        low: -14,
        feels_like: -6,
        pop: 4/10,
        wind_speed_km: 30,
        hrs_of_sun: 4
    },
    thursday: {
        sky: "mainly sunny",
        high: -6,
        low: -9,
        feels_like: -8,
        pop: 2/10,
        wind_speed_km: 20,
        hrs_of_sun: 9
    },
    friday: {
        sky: "flurries",
        high: 3,
        low: 3,
        feels_like: -3,
        pop: 6/10,
        wind_speed_km: 35,
        hrs_of_sun: 1
    }
}

puts weather_forecast[:monday]
