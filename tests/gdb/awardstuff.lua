KillAwards = {}
KillAwards[100] = "100_CTF_Kills"
KillAwards[250] = "250_CTF_Kills"
KillAwards[500] = "500_CTF_Kills"
KillAwards[1000] = "1000_CTF_Kills"
KillAwards[2500] = "2500_CTF_Kills"
KillAwards[5000] = "5000_CTF_Kills"
KillAwards[7500] = "7500_CTF_Kills"
KillAwards[10000] = "10000_CTF_Kills"
KillAwards[12500] = "12500_CTF_Kills"
KillAwards[15000] = "15000_CTF_Kills"
KillAwards[17500] = "17500_CTF_Kills"
KillAwards[20000] = "20000_CTF_Kills"


if KillAwards[attacker.PlayersKilled] then
				GDB.GiveAward(attacker, KillAwards[attacker.PlayersKilled])
end


function GM:InitialQuery(pl)
	if not GDB then return end

	for i, award in pairs(KillAwards) do
		if i <= pl.PlayersKilled then
			local hasaward = false
			for _, aw in pairs(pl.Awards) do
				if aw == award then
					hasaward = true
				end
			end
			if not hasaward then
				GDB.GiveAward(pl, award)
			end
		end
	end

end
