return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      root_dir = function(path)
        return vim.fs.root(0, { "gradlew", "mvnw" })
      end,
    },
  },
}
