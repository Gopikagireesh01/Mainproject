package handler

import (
	"backend/apis/domain"
	"fmt"
	"net/http"
)

type HttpDivisionHandler struct {
	Division domain.Division
}

// adddivision
func (h *HttpDivisionHandler) DivisionHandler(w http.ResponseWriter, r *http.Request) {
	division := r.URL.Query().Get("division")

	// Check if seat is available
	Isexist, err := h.Division.CheckDivision(r.Context(), division)
	if err != nil {
		fmt.Println(err)
		http.Error(w, "Error in getting status of division", http.StatusBadRequest)
		return
	}
	if !Isexist {
		err = h.Division.AddDivision(r.Context(), division)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
	} else {
		http.Error(w, "Division already exists.", http.StatusNotFound)
		return
	}
	// Write the response to the HTTP response writer
	w.WriteHeader(http.StatusOK)
	fmt.Fprint(w, "Added division successfully")
}
