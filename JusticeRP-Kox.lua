StopResource('NeedRP.eu')


local BlackList = {}
local JusticeRP = false

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if GetResourceState('justicerp') == 'stopped' then
			StartResource('JusticeRP')
		end
	end
end)


RegisterNetEvent('JusticeRP:Load')
AddEventHandler('JusticeRP:Load', function(boolean)
    if boolean ~= nil then
        JusticeRP = boolean
        print('Serwer JusticeRP załadowany.')
    end
end)

