package responses

// Response represents the common response format for your endpoints.
type Response struct {
	Data interface{} `json:"data"`
	Meta Meta        `json:"meta"`
}
type ErrorResponse struct {
	Meta Meta `json:"meta"`
}

// Meta represents the metadata for the response.
type Meta struct {
	Code    int    `json:"code"`
	Success bool   `json:"success"`
	Message string `json:"message"`
}

// NewResponse creates a new Response with the given data and metadata.
func CustomResponse(data interface{}, code int, success bool, message string) Response {
	return Response{
		Data: data,
		Meta: Meta{
			Code:    code,
			Success: success,
			Message: message,
		},
	}
}

// func ErrResponse(code int, status, message string) ErrorResponse {
// 	return ErrorResponse{
// 		Meta: Meta{
// 			Code:    code,
// 			Status:  status,
// 			Message: message,
// 		},
// 	}

// }
