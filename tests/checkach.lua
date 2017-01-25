function GM:PlayerSpawn
if ply:achievements.IsAchieved( 7 ) = false
   ply:ChatPrint( "pl:Name() has not got" .. achievements.IsAchieved( 7 ) )
end
