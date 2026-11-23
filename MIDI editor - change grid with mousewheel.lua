-- MIDI Editor: Grid size via mousewheel
-- Wheel up   = finer grid
-- Wheel down = coarser grid

local _, _, _, _, _, _, wheel = reaper.get_action_context()

local editor = reaper.MIDIEditor_GetActive()
if not editor then return end

if wheel > 0 then
    reaper.MIDIEditor_OnCommand(editor, 40212)
elseif wheel < 0 then
    reaper.MIDIEditor_OnCommand(editor, 40210)
end
