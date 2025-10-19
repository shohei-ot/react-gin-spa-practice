import {defineConfig} from 'orval';

export default defineConfig({
  ginApi: {
    input: "../openapi/openapi.yml",
    output: {
      target: "./src/api/ginApi.ts",
      httpClient: "fetch",
      client: "swr",
      fileExtension: ".gen.ts",
    },
    hooks: {
      afterAllFilesWrite: "biome format --write"
    }
  }
})