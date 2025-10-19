package main

import (
	"embed"
	"github.com/gin-gonic/gin"
	"github.com/shohei-ot/react-gin-spa-practice/middleware"
)

//go:embed frontend/dist
var server embed.FS
const frontendPath = "frontend/dist"

func prepare(router *gin.Engine) {
	middleware.Frontend(server, frontendPath, router)
}
