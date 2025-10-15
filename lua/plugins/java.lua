return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      root_dir = function(path)
        return vim.fs.root(0, { "gradlew", "mvnw" })
      end,

      cmd = (function()
        -- Use vim.fn.expand to expand ~ in JAVA_HOME path
        vim.env.JAVA_HOME = "/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"
      end)(),
    },
  },
}
