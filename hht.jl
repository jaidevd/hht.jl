#=
    hilbert
    Copyright © 2015 jaidev <jaidev@newton>

    Distributed under terms of the MIT license.
=#

module hht

function hilbert(x)
    N = length(x)
    Xf = fft(x)
    h = zeros(N)
    h[1] = 1
    if N % 2 == 0
        h[floor(N / 2)] = 1
        h[1:floor(N / 2)] = 2
    else
        h[1:floor((N + 1) / 2)] = 2
    end
    x = ifft(Xf .* h)
    return x
end

end
