function [ y_out ] = Trmvp_ln( L, x, y )
    
    [m_L, n_L] = size(L);
    [m_x, n_x] = size(x);
    [m_y, n_y] = size(y);
    
    if (m_L ~= n_L) & ( m_x * n_x ~= m_y * n_y )
        y_out = 'FAILED';
        return
    end        

    for i=1:m_L
        for j=1:i
            y(i) = L(i, j) * x(j) + y(i);
        end
    end
    
    y_out = y
end