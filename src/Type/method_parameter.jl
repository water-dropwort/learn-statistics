abstract type MethodParameter end

# 導関数を0と置いて解析的に解く
struct Diff0 <: MethodParameter
end

# 最急降下法(ステップ幅をtの関数として与える)
struct GD <: MethodParameter
    initial_parameter
    calcη
    ϵ
    max_epochs
end

# 最急降下法(ステップ幅をアルミホのルールで求めて更新を行う)
struct GD_ARMIJO <: MethodParameter
    initial_parameter
    ϵ
    max_epochs
    α
    β
end

# 確率的勾配降下法
struct SGD <: MethodParameter
    initial_parameter
    calcη
    ϵ
    max_epochs
end
