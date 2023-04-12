-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>j"] = { "<cmd>:HopWord<cr>", desc = "Hop" },
    ["<leader>;"] = { "<cmd>:edit!<cr>", desc = "Reload buffer" },
    ["<leader>lg"] = {
      function() require("neogen").generate() end,
      desc = "Generate Docstring",
    },
    ["<leader>tt"] = { "<cmd>:terminal<cr>", desc = "open current as terimnal" },
    ["<leader>[["] = {
      "<cmd>:cd -<cr>",
      desc = "Go back in cd",
    },
    ["<leader>pp"] = {
      "<cmd>:Telescope projects<cr>",
      desc = "Telescope projects",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>" },
  },
  i = {},
}
