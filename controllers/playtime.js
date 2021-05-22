function setSessionStartPlayer (req, res) {
    const playerName = req.body.playerName || req.session.playerName;    
    req.session.playerName = playerName;
    if (playerName) {
        res.render('game-in-session', {playerName: playerName});
    } else {
        res.writeHead(302, {
            'Location': '/play-time/'
        });
        res.end();
    }
}

exports.setSessionStartPlayer = setSessionStartPlayer;