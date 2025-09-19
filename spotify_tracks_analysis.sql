SELECT *
FROM spotify_tracks
LIMIT 10

-- Find 10 the most popular tracks in the dataset
-- Display only 'track_name', 'artists', 'popularity' and 'track_genre' columns

SELECT track_name, artists, popularity, track_genre
FROM spotify_tracks
ORDER BY popularity DESC
Limit 10

-- What genres are in this dataset?

SELECT DISTINCT track_genre
FROM spotify_tracks
ORDER BY track_genre

-- Find all the artists in 'k-pop' genre

SELECT DISTINCT artists
FROM spotify_tracks
WHERE track_genre = 'k-pop'
ORDER BY artists 

--How many artists in 'k-pop' genre

SELECT COUNT(DISTINCT artists) as number_of_artists
FROM spotify_tracks
WHERE track_genre = 'k-pop'

-- Find the most popular tracks in 'k-pop' genre and what artists sing them

SELECT artists, track_name, popularity
FROM spotify_tracks
WHERE track_genre = 'k-pop'
ORDER BY popularity DESC
LIMIT 10

-- Why 'Jack Harlow' in 'k-pop' genre?

SELECT artists, track_name, track_genre, popularity
FROM spotify_tracks
WHERE artists LIKE '%Harlow'
ORDER BY popularity DESC

--WTF? IDK

-- What is the 5 longest tracks? And what is the duration in minutes

SELECT track_name, artists, duration_ms,
        duration_ms/1000/60 AS duration_min
FROM spotify_tracks
ORDER BY duration_ms DESC
LIMIT 5

-- Find tracks which long more then 5 minutes but less then 10 minutes

SELECT track_name, artists, duration_ms,
        duration_ms/1000/60 AS duration_min
FROM spotify_tracks
WHERE (duration_ms/1000/60 BETWEEN 5 AND 10) AND track_genre = 'k-pop'
ORDER BY duration_ms 

-- Find top-10 tracks that have explicit lyrics

SELECT track_name, artists, popularity
FROM spotify_tracks
WHERE explicit_lyrics = TRUE
ORDER BY popularity DESC
LIMIT 10

-- Find the 5 most danceable tracks

SELECT track_name, artists, danceability
FROM spotify_tracks
ORDER BY danceability DESC
LIMIT 5

-- Find the 5 most energy tracks

SELECT track_name, artists, energy
FROM spotify_tracks
ORDER BY energy DESC
LIMIT 5

-- Find the 10 most energy tracks in 'k-pop' genre

SELECT track_name, artists, energy
FROM spotify_tracks
WHERE track_genre = 'k-pop'
ORDER BY energy DESC
LIMIT 10

-- Find 5 most popular Dua Lipa tracks

SELECT artists, track_name, popularity
FROM spotify_tracks
WHERE artists = 'Dua Lipa'
ORDER BY popularity DESC
LIMIT 5

SELECT artists, track_name, popularity
FROM spotify_tracks
WHERE artists LIKE '%(G)%'
ORDER BY popularity DESC
LIMIT 5