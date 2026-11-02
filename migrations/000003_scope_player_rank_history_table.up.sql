CREATE TABLE IF NOT EXISTS scope.player_rank_history (
    id UUID PRIMARY KEY DEFAULT uuidv7(),
    account_id INTEGER NOT NULL,
    tier INTEGER NOT NULL,
    recorded_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT fk_player_rank_history_player
        FOREIGN KEY (account_id)
        REFERENCES scope.player(account_id)
);

CREATE INDEX idx_player_rank_history_account_recorded 
    ON scope.player_rank_history(account_id, recorded_at DESC);