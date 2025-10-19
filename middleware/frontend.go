package middleware

import (
	"embed"
	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
)

func Frontend(server embed.FS, path string, r *gin.Engine) {
	fs, err := static.EmbedFolder(server, path)
	if err != nil {
		panic(err)
	}

	r.Use(static.Serve("/", fs))
}