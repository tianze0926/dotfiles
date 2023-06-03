function proxy
    set url http://127.0.0.1:2081
    set -gx http_proxy $url
    set -gx HTTP_PROXY $url
    set -gx https_proxy $url
    set -gx HTTPS_PROXY $url
    set -gx all_proxy $url
    set -gx ALL_PROXY $url
end
