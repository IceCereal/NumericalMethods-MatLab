














    elseif Row_i ~= j
        a([j,Row_i],:) = a([Row_i,j],:);
        p([j,Row_i]) = p([Row_i,j]);
        P=P9p,:);
    elseif Col_i ~=j
        a(:,[j,Col_i]) = a(:,[Col_i,j]);
        q([j,Col_i]) = q([Col_i,j]);
        Q=Q(:,q);
    end
mul(j+1:m,1) = a(j+1:m,j)/a(j,j);


       