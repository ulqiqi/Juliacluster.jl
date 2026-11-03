module Juliacluster

export load_data

function load_data(path)
    lines = readlines(path)        # lis le fichier
    rows = lines[2:end]            # commence à la ligne 2 car ligne 1 = colonnes
    n = length(rows)               # nombre de points
    X = zeros(n, 2)                # matrice n*2
    for i in 1:n
        parts = split(rows[i], ",")            # séparateur
        X[i, 1] = parse(Float64, parts[1])     # texte en flottant
        X[i, 2] = parse(Float64, parts[2])
    end
    return X
end # fonction load_data

end # module