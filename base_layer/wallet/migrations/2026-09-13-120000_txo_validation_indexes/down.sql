-- Undo TXO validation indexes on the outputs table

DROP INDEX IF EXISTS idx_outputs_status_invalid_cancelled;
DROP INDEX IF EXISTS idx_outputs_txo_validation_mined;
DROP INDEX IF EXISTS idx_outputs_status;
