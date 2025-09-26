return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      root_dir = function(path)
        -- NOTE: Altered due to needing to support multiprojects, which have many build.gradle files.
        local custom = vim.fs.root(path, { "gradlew", "mvnw" })
        if custom then
          return custom
        end
        -- fallback to default configuration
        return vim.fs.root(path, vim.lsp.config.jdtls.root_markers)
      end,
    },
  },
}
