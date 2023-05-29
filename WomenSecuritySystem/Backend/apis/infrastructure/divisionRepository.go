package infrastructure

import (
	"context"
	"database/sql"
	"time"
)

type DivisionDB struct {
	DB *sql.DB
}

type DivisionRepo interface {
	CheckDivisionRepository(ctx context.Context, div string) (bool, error)
	AddDivisionRepository(ctx context.Context, div string) error
}

func (b *DivisionDB) CheckDivisionRepository(ctx context.Context, div string) (bool, error) {
	var count int
	err := b.DB.QueryRowContext(ctx, "SELECT count(*) FROM divisions WHERE division = $1", div).Scan(&count)
	if err != nil {
		return false, err
	}
	return count > 0, nil

}

func (b *DivisionDB) AddDivisionRepository(ctx context.Context, div string) error {
	// tx, err := b.DB.BeginTx(ctx, nil)
	// if err != nil {
	// 	return err
	// }
	_, err := b.DB.ExecContext(ctx, "Insert into divisions (division, updated_at) values ($1, $2)", div, time.Now())
	if err != nil {
		// tx.Rollback()
		return err
	}
	// _, err = tx.ExecContext(ctx, fmt.Sprintf("UPDATE seats SET filled_seats =  filled_seats + %d WHERE theater = $1 and screen = $2 and show_time = $3;", request.No_of_seats), request.Theater, request.Screen, request.Show_time)
	// if err != nil {
	// 	tx.Rollback()
	// 	return err
	// }
	// tx.Commit()
	return nil
}
