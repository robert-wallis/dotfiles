local header = function()
  local hostname = string.lower(vim.uv.os_gethostname())
  if hostname == "mac.lan" or hostname == "rwm3m.lan" then
    -- https://patorjk.com/software/taag/#p=display&c=lua&f=ANSI%20Shadow&t=RWM3M%0A
    return [[
██████╗ ██╗    ██╗███╗   ███╗██████╗ ███╗   ███╗
██╔══██╗██║    ██║████╗ ████║╚════██╗████╗ ████║
██████╔╝██║ █╗ ██║██╔████╔██║ █████╔╝██╔████╔██║
██╔══██╗██║███╗██║██║╚██╔╝██║ ╚═══██╗██║╚██╔╝██║
██║  ██║╚███╔███╔╝██║ ╚═╝ ██║██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝     ╚═╝╚═════╝ ╚═╝     ╚═╝]]
  elseif hostname == "pc" then
    return [[
██████╗  ██████╗
██╔══██╗██╔════╝
██████╔╝██║     
██╔═══╝ ██║     
██║     ╚██████╗
╚═╝      ╚═════╝]]
  else
    return [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]]
  end
end

local is_a_git_repo = function()
  if vim.fn.executable("git") ~= 1 then
    return false
  end
  -- if we can get the current branch, we're in a git repo
  local branch = vim.fn.system("git branch --show-current 2>/dev/null")
  return vim.v.shell_error == 0 and branch ~= ""
end

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = { header = header() },
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
            enabled = is_a_git_repo(),
            cmd = "type git >/dev/null 2>&1 && git status --short --branch --renames 2>/dev/null || true",
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
    },
  },
}
