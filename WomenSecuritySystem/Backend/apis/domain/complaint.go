package domain

import (
	"backend/apis/infrastructure"
	"backend/apis/models"
	"context"
)

type ComplaintServiceInterface interface {
	RegisterComplaint(ctx context.Context, req models.ComplaintRequest) error
}

type ComplaintService struct {
	Complaint infrastructure.ComplaintRepo
}

func (us *ComplaintService) RegisterComplaint(ctx context.Context, req models.ComplaintRequest) error {
	err := us.Complaint.ComplaintRepository(ctx, req)
	if err != nil {
		return err
	}
	return nil
}
