package infrastructure

import (
	"context"
	"database/sql"
	"time"
)

type CategoryDB struct {
	DB *sql.DB
}

type CategoryRepo interface {
	CheckCategoryRepository(ctx context.Context, div string) (bool, error)
	AddCategoryRepository(ctx context.Context, div string) error
}

func (b *CategoryDB) CheckCategoryRepository(ctx context.Context, div string) (bool, error) {
	var count int
	err := b.DB.QueryRowContext(ctx, "SELECT count(*) FROM categories WHERE category = $1", div).Scan(&count)
	if err != nil {
		return false, err
	}
	return count > 0, nil
}

func (b *CategoryDB) AddCategoryRepository(ctx context.Context, div string) error {

	_, err := b.DB.ExecContext(ctx, "Insert into categories (category, updated_at) values ($1, $2)", div, time.Now())
	if err != nil {
		// tx.Rollback()
		return err
	}

	return nil
}
