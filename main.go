package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	r := gin.Default()
	r.Any("/", func(c *gin.Context) {
		c.JSON(http.StatusOK,gin.H{
			"msg":"hi!",
		})
	})
	r.Run(":8989")
}
