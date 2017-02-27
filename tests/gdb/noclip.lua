function GM:PlayerNoClip(pl, on)
	if pl:IsAdmin() then
		if GDB then
			if on then
				LogAction("[Admin CMD] <"..pl:SteamID().."> "..pl:Name().." TURNED ON NOCLIP")
			else
				LogAction("[Admin CMD] <"..pl:SteamID().."> "..pl:Name().." TURNED OFF NOCLIP")
			end
		end

		return true
	end

	return false
end
