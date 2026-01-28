{ config, pkgs, ... }:
{
    programs.nvf = {
        enable = true;
        settings = {
            vim = {
                lsp.enable = true;
                ui = {
                borders.enable = true;
                colorizer.enable = true;
                };
                theme = {
                enable = true;
                name = "everforest";
                style = "hard";
                };

                statusline.lualine = {
                enable = true;
                theme = "everforest";
                };

                telescope.enable = true;
                autopairs.nvim-autopairs.enable = true;
                autocomplete.nvim-cmp.enable = true;

                filetree = {
                neo-tree = {
                    enable = true;
                };
                };

                languages = {
                enableTreesitter = true;

                nix.enable = true;
                ts.enable = true;
                rust.enable = true;
                bash.enable = true;
                python.enable = true;
                };
            };
        };
    };
}
