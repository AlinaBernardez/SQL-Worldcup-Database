#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE teams, games")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
#FILL TEAMS TABLE
  if [[ $WINNER != "winner" ]]
    then
    #check team_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #if no team_id
      if [[ -z $TEAM_ID ]]
      then
        #insert team and print result
        INSERT_DATA_WINNERS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        #get team_id
        WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      fi
  fi
  if [[ $OPPONENT != "opponent" ]]
    then
    #check team_id
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #if no team_id
      if [[ -z $TEAM_ID ]]
      then
        #insert team and print result
        INSERT_DATA_WINNERS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        #get team_id
        OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      fi
  fi
  #FILL GAMES TABLE
  if [[ $YEAR != 'year' && $ROUND != 'round' && $WINNER_GOALS != 'winner_goals' && $OPPONENT_GOALS != 'opponent_goals' ]]
  then
  GAME_ID=$($PSQL "SELECT game_id FROM games WHERE game_id=$GAME_ID")
    if [[ -z $GAME_ID ]]
    then
      INSERT_GAME_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE game_id=$GAME_ID")
    fi
  fi
done