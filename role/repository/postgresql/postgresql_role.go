package postgresql

import (
	"context"

	"github.com/adhtanjung/go-starter/domain"
	"gorm.io/gorm"
)

type postgresqlRoleRepository struct {
	Conn *gorm.DB
}

func NewMysqlRoleRepository(Conn *gorm.DB) domain.RoleRepository {
	return &postgresqlRoleRepository{Conn}
}

func (m *postgresqlRoleRepository) GetByName(ctx context.Context, name string) (r domain.Role, err error) {

	result := m.Conn.Where(domain.Role{Name: name}).FirstOrCreate(&r)
	if result.Error != nil {
		return domain.Role{}, result.Error
	}
	return
}

func (m *postgresqlRoleRepository) Store(ctx context.Context, r *domain.Role) (err error) {
	if result := m.Conn.Create(&r); result.Error != nil {
		return result.Error
	}
	return

}
