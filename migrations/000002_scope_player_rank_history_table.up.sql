CREATE TABLE IF NOT EXISTS scope.player_rank_history (
    id UUID PRIMARY KEY DEFAULT uuidv7(),
    account_id INTEGER NOT NULL,
    rank INTEGER NOT NULL,
    recorded_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_player_rank_history_account_recorded ON scope.player_rank_history(account_id, recorded_at DESC);