local visibility_states = { "auto", "always", "never" }
local current_state = 1

function toggle_osc_visibility()
    current_state = current_state % #visibility_states + 1
    mp.set_property_native("options/script-opts", "osc-visibility=" .. visibility_states[current_state])
    mp.osd_message("OSC: " .. visibility_states[current_state])
end

mp.add_key_binding("DEL", "toggle_osc", toggle_osc_visibility)
