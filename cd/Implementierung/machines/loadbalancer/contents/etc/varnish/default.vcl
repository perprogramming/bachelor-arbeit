backend default {
    .host = "app";
    .port = "80";
}

sub vcl_fetch {
    if (beresp.http.Cache-Control ~ "private" ||
        beresp.http.Cache-Control ~ "no-cache" ||
        beresp.http.Cache-Control ~ "no-store"
    ) {
        return (hit_for_pass);
    }
}
