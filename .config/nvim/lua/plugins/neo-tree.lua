return {
    "nvim-neo-tree/neo-tree.nvim", 
    branch = "v3.x", 
    dependencies = {
        "nvim-lua/plenary.nvim", 
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim"
    },
    config = function()
        require("neo-tree").setup({
          filesystem = {
            use_libuv_file_watcher = true,
            filtered_items = {
              visible = true,  -- Show hidden files if set to true
            },
            follow_current_file = {enabled = true},
            use_icons = true,  -- Enable icons
          }
        })

        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})
    end
}
