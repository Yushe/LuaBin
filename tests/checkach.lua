function GM:PlayerSpawn
if ply:achievements.IsAchieved( 7 ) = false then
   ply:ChatPrint( ply:Nick() .. " has not got" .. achievements.IsAchieved( 7 ) )
   end
end
