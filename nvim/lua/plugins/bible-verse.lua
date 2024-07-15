return {
  "anthony-halim/bible-verse.nvim",
  -- Lazy load on plugin commands
  cmd = { "BibleVerse", "BibleVerseQuery", "BibleVerseInsert" },
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    diatheke = {
      -- (MANDATORY)
      -- Corresponds to the diatheke module; diatheke's -b flag.
      -- In this example, we are using KJV module.
      translation = "KJV",
      formatter = {
        markdown = {
          omit_translation_footnote = true,
        },
      },
    },
  },
  -- plugin is not set up by default
  config = true,
  keys = {
    { "<leader>Bq", "<cmd>BibleVerse query<cr>", desc = "Bible query" },
    { "<leader>Bi", "<cmd>BibleVerse insert<cr>", desc = "Bible insert" },
  },
}
