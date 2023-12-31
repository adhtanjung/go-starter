package domain

import "errors"

var (
	// ErrInternalServerError will throw if any the Internal Server Error happen
	ErrInternalServerError = errors.New("internal Server Error")
	// ErrNotFound will throw if the requested item is not exists
	ErrNotFound = errors.New("your requested item is not found")
	// ErrConflict will throw if the current action already exists
	ErrConflict     = errors.New("already exist")
	ErrUsenameTaken = errors.New("username already taken")
	ErrEmailTaken   = errors.New("email already taken")
	// ErrBadParamInput will throw if the given request-body or params is not valid
	ErrBadParamInput = errors.New("given Param is not valid")
	ErrInvalidInput  = errors.New("invalid input data")
)
