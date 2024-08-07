
# START
docker compose up --build -d

# RUN BABELFISH COMPASS COMANDS
docker compose exec -it babelfish_compass bash
cd BabelfishCompass
./BabelfishCompass.sh -help
