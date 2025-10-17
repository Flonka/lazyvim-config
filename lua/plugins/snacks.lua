return {
  {
    "folke/snacks.nvim",
    opts = {
      -- https://github.com/folke/snacks.nvim/blob/main/docs/gitbrowse.md
      -- https://github.com/folke/snacks.nvim/blob/main/lua/snacks/gitbrowse.lua
      gitbrowse = {
        what = "permalink",
        remote_patterns = {
          -- Onpremise Bitbucket Server SSH pattern
          {
            "ssh://git@bitbucket.crosskey.fi:7999/(.*)/(.*).git",
            "https://bitbucket.crosskey.fi/projects/%1/repos/%2/browse",
          },
        },
        url_patterns = {
          ["bitbucket.crosskey.fi"] = {
            branch = "/?at=refs/heads/{branch}",
            file = "/{file}#{line_start}-{line_end}",
            permalink = "/{file}?at={commit}#{line_start}-{line_end}",
            commit = "/commits/{commit}",
          },
        },
      },
      -- https://github.com/folke/snacks.nvim/blob/main/docs/zen.md
      zen = {
        zoom = {
          win = {
            backdrop = true,
          },
        },
      },
      styles = {
        zen = {
          backdrop = {
            blend = 20,
          },
        },
      },
    },
  },
}
