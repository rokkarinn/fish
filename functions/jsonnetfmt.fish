function jsonnetfmt
    jsonnet .drone.jsonnet -y > .drone.yml && drone fmt --save
end