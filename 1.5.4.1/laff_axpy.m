function [y_out] = laff_axpy(a, x, y)

    [m_a, n_a] = size(a);
    [m_x, n_x] = size(x);
    [m_y, n_y] = size(y);

    if (m_a ~= 1 & n_a ~= 1)
        y_out = 'FAILED';
        return
    end

    if ( m_x * n_x ~= m_y * n_y )
        y_out = 'FAILED';
        return
    end

    if (n_x == 1)

        if (n_y == 1)
                for i=1:m_x
                    y(i, 1) = a*x(i, 1) + y(i, 1);
                end

        elseif (m_y == 1)
                for i=1:m_x
                    y(1, i) = a*x(i, 1) + y(1, i);
                end
        end
    
    elseif (m_x == 1)

        if (m_y == 1)
                for i=1:n_x
                    y(1, i) = a*x(1, i) + y(1, i);
                end

        elseif (n_y == 1)
                for i=1:n_x
                    y(i, 1) = a*x(1, i) + y(i, 1);
                end

        end
    end

    y_out = y;

end
