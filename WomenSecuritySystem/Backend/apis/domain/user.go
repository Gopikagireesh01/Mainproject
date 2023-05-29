package domain

import (
	"backend/apis/infrastructure"
	"backend/apis/models"
	"context"

	"golang.org/x/crypto/bcrypt"
)

type UserServiceInterface interface {
	CheckUser(ctx context.Context, username, password string) (bool, string, error)
	GetUserByEmail(ctx context.Context, email string) (bool, error)
	SignUp(ctx context.Context, m models.SignupRequest) (bool, error)
	SignUpPolice(ctx context.Context, m models.SignupPoliceRequest) (bool, error)
}

type UserService struct {
	UserChecker infrastructure.UserChecker
}

func (us *UserService) CheckUser(ctx context.Context, username, password string) (bool, string, error) {
	Isexist, name, dbpassword, err := us.UserChecker.CheckUserRepository(ctx, username)
	if err != nil {
		return false, "", err
	}
	if Isexist {
		err = bcrypt.CompareHashAndPassword([]byte(dbpassword), []byte(password))
		if err != nil {
			return false, name, nil
		}
	}
	return Isexist, name, nil
}

func (us *UserService) SignUp(ctx context.Context, m models.SignupRequest) (bool, error) {
	pw, err := bcrypt.GenerateFromPassword([]byte(m.Password), 0)
	if err != nil {
		return false, err
	}
	m.Password = string(pw)
	return us.UserChecker.SignUpRepository(ctx, m)
}

func (us *UserService) SignUpPolice(ctx context.Context, m models.SignupPoliceRequest) (bool, error) {
	pw, err := bcrypt.GenerateFromPassword([]byte(m.Password), 0)
	if err != nil {
		return false, err
	}
	m.Password = string(pw)
	return us.UserChecker.SignUpPoliceRepository(ctx, m)
}

func (us *UserService) GetUserByEmail(ctx context.Context, email string) (bool, error) {
	return us.UserChecker.GetUserByEmail(ctx, email)
}
