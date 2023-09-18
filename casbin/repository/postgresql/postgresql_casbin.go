package postgresql

import (
	"github.com/adhtanjung/go-starter/domain"
	"github.com/casbin/casbin/v2"
)

type postgresqlCasbinRepository struct {
	Casbin *casbin.Enforcer
}

func NewMysqlCasbinRepository(Casbin *casbin.Enforcer) domain.CasbinRBACRepository {
	return &postgresqlCasbinRepository{Casbin}
}
func (m *postgresqlCasbinRepository) Store(c *domain.CasbinRBAC) (b bool, err error) {
	b, err = m.Casbin.AddPolicy(c.Sub, c.Obj, c.Act)
	return

}
