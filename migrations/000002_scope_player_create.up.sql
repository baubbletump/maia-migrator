CREATE TABLE scope.player (
    id UUID PRIMARY KEY DEFAULT uuidv7(),
    account_id INT NOT NULL UNIQUE,
    username VARCHAR(255) NOT NULL,
    profile_url TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_player_account_id ON scope.player(account_id)