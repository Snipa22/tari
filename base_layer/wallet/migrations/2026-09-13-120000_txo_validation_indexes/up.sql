-- Migration to speed up TXO validation queries on the outputs table

CREATE INDEX IF NOT EXISTS idx_outputs_status ON outputs (status);
CREATE INDEX IF NOT EXISTS idx_outputs_txo_validation_mined ON outputs (id) WHERE mined_in_block IS NOT NULL AND mined_height IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_outputs_status_invalid_cancelled ON outputs (id) WHERE status IN (4, 5);

ANALYZE outputs;
