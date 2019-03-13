function r = Reward(state)

global state_desired;

r = -abs(state(1)-state_desired);

end