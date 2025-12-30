# Important: Run chmod +x manage.sh in your terminal to give it permission to run.
case "$1" in
  start)
    echo "🚀 Starting DockerMC..."
    docker-compose up -d
    ;;
  stop)
    echo "🛑 Stopping DockerMC..."
    docker-compose stop
    ;;
  logs)
    echo "📋 Opening Server Logs (Ctrl+C to exit)..."
    docker-compose logs -f minecraft
    ;;
  restart)
    echo "♻️ Restarting Server..."
    docker-compose restart minecraft
    ;;
  *)
    echo "Usage: ./manage.sh {start|stop|logs|restart}"
    exit 1
esac
