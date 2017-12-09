function [a] = laff_dot(x, y)

    [m_x, n_x] = size(x);
    [m_y, n_y] = size(y);

    if (m_x ~= 1 & n_x ~= 1)
        a = 'FAILED';
        return
    end

    if ( m_x * n_x ~= m_y * n_y )
        a = 'FAILED';
        return
    end

    a = 0;

    if (n_x == 1)
        
        if (n_y == 1)
            for i=1:m_x
                a = a + x(i, 1) * y(i, 1);
            end
        
        else
            for i=1:m_x
                a = a + x(i, 1) * y(1, i);
            end
        end
    else

        if (n_y == 1)
            for i=1:n_x
                a = a + x(1, i) * y(i, 1);
            end
            
        else
            for i=1:n_x
                a = a + x(1, i) * y(1, i);
            end            
        end
    end
end
