return {
  {
    "folke/snacks.nvim",
    opts = function()
      local hostname = string.lower(vim.uv.os_gethostname())
      if hostname == "mac.lan" or hostname == "rwm3m.lan" then
        header = [[
|   RRRRRRR  WW       Ww  MMM  MMM    33333    MMM  MMM   |
|   RR    rr WW      Ww   MMm  MMmm  33   33   MMm  MMmm  |
|  RR     rr  WW     Ww  MMMm MMMmm       33  MMMm MMMmm  |
|= RR  rrrr = WW == Ww = MM mmMM mm ==== 33 = MM mmMM mm =|
| RR   rr     WW w  Ww  MMM      mm       33 MMM      mm  |
| RR    rr     WwWwWw   MM       mm       33 MM       mm  |
|RRR    rr     Ww www  MMM       mm  33  33 MMM       mm  |
|RR      rr    W   w   MM         mm  3333  MM         mm |]]
      else
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]]
      end
      return {
        dashboard = {
          preset = { header = header },
          sections = {
            { section = "header" },
            { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, height = 9, padding = 1 },
            { section = "keys", gap = 1, padding = 1 },
            { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            {
              pane = 2,
              icon = " ",
              title = "git status",
              section = "terminal",
              cmd = "git status --short --branch --renames",
              height = 8,
              padding = 1,
              ttl = 5 * 60,
              indent = 2,
            },
            { section = "startup" },
          },
        },
        notifier = {
          timeout = 10000,
        },
      }
    end,
  },
}
