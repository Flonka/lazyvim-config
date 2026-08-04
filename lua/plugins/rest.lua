return {
  {
    "mistweaverco/kulala.nvim",
    opts = {
      -- NOTE: local selfsigned certificates...
      additional_curl_options = { "--insecure" },
      custom_dynamic_variables = {
        ["$random.email"] = function()
          local random = math.random(1000, 9999)
          return "user" .. random .. "@example.com"
        end,
      },
    },
  },
}
