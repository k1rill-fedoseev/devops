package main

import (
	"context"
	"html/template"
	"log"
	"net/http"
	"os"
	"os/signal"
	"time"
)

var (
	mainTemplate = template.Must(template.ParseFiles("./templates/index.html"))
	timezone     *time.Location
)

func init() {
	var err error
	timezone, err = time.LoadLocation(GetEnv("TIMEZONE_NAME", "Europe/Moscow"))
	if err != nil {
		panic(err)
	}
}

type PageData struct {
	TimezoneName string
	Time         string
}

func GetEnv(key, def string) string {
	val, ok := os.LookupEnv(key)
	if ok {
		return val
	}
	return def
}

func Handler(w http.ResponseWriter, r *http.Request) {
	err := mainTemplate.Execute(w, &PageData{
		TimezoneName: timezone.String(),
		Time:         time.Now().In(timezone).Format(GetEnv("TIME_FORMAT", "15:04:05")),
	})
	if err != nil {
		log.Fatal(err)
	}
}

func main() {
	srv := &http.Server{
		Addr: "0.0.0.0:8000",
	}
	http.HandleFunc("/", Handler)

	go func() {
		err := srv.ListenAndServe()
		if err != nil {
			log.Fatal(err)
		}
	}()

	stop := make(chan os.Signal, 1)
	signal.Notify(stop, os.Interrupt)

	<-stop

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	err := srv.Shutdown(ctx)
	if err != nil {
		log.Fatal(err)
	}
}
