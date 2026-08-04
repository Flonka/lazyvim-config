return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      root_dir = function(path)
        local p = vim.fs.root(0, { "gradlew", "mvnw" })
        return vim.fn.fnamemodify(p, ":p")
      end,

      cmd = (function()
        -- set JAVA_HOME for the JDTLS to run JDK21
        -- vim.env.JAVA_HOME = "/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"
      end)(),

      settings = {
        java = {
          configuration = {
            -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
            -- And search for `interface RuntimeOption`
            -- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
            -- runtimes = {
            --   {
            --     name = "JavaSE-1.8",
            --     path = "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home",
            --   },
            --   {
            --     name = "JavaSE-17",
            --     path = "/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home",
            --   },
            --   {
            --     name = "JavaSE-21",
            --     path = "/Library/Java/JavaVirtualMachines/temurin-20.jdk/Contents/Home",
            --   },
            -- },
          },
          checkstyle = {
            enabled = true,
            configuration = vim.fn.expand(
              "~/code/cbs/bips/cbs-bips-java-standards/tools/checkstyle/crosskey-checkstyle-13.xml"
            ),
          },
          format = {
            enabled = true,
            settings = {
              url = vim.fn.expand(
                "~/code/cbs/bips/cbs-bips-java-standards/ide-configuration/eclipse/crosskey-formatter.xml"
              ),
              profile = "Crosskey Conventions",
            },
          },
        },
      },
    },
  },
}
