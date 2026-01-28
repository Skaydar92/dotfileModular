{ config, pkgs, ... }:
{
    services.ollama = {
        enable = true;
        host = "0.0.0.0";
        port = 11434;
        loadModels = [ "llama3.2:3b" "deepseek-r1:1.5b" ];
    };
    services.open-webui = {
        enable = true;
        host = "0.0.0.0";
        port = 11111;
        environment = {
            OLLAMA_API_BASE_URL = "http://127.0.0.1:11434";
        };
    };
}