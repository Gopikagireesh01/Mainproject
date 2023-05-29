package infrastructure

import (
	"backend/apis/models"
	"context"
	"database/sql"
	"time"
)

type ComplaintDB struct {
	DB *sql.DB
}

type ComplaintRepo interface {
	ComplaintRepository(ctx context.Context, req models.ComplaintRequest) error
}

func (b *ComplaintDB) ComplaintRepository(ctx context.Context, req models.ComplaintRequest) error {
	_, err := b.DB.ExecContext(ctx, "Insert into complaints (date, division, category, title, description, name, address, mobile, updated_at) values ($1, $2, $3, $4, $5, $6, $7, $8, $9)", req.Date, req.Division, req.Category, req.Title, req.Description, req.Name, req.Address, req.Mobile, time.Now())
	if err != nil {
		return err
	}
	return nil
}
