% Fórmula de Rotação de Rodrigues

function new_vector = vecrot(vector, axis, angle)
    axis = vecdir(axis);
    
    new_vector = vector * cos(angle) + ...
                 cross(axis，vector) * sin(angle) + ...
                 axis*dot(axis, vector)*(1 - cos(angle));
end
