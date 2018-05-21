/*------------------------------------------
			Addon By GayToz
----------------BLUR-----------------------*/

local blur = Material("pp/blurscreen")
local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

/*------------------------------------------
			     Frame
------------------------------------------*/

local font = 1
local icon11 = Material("tabletf4/tablet4.png")
local icon8 = Material("tabletf4/tablet2.png")
local icon9 = Material("tabletf4/tablet3.png")
local icon10 = Material("tabletf4/info.png")
local icon1 = Material("tabletf4/pole_emploi.png")
local icon2 = Material("tabletf4/caddie.png")
local icon3 = Material("tabletf4/gun_store.png")
local icon4 = Material("tabletf4/web.png")
local icon5 = Material("tabletf4/commands.png")
local icon6 = Material("tabletf4/discord.png")
local icon7 = Material("tabletf4/reglage.png")

net.Receive("f4menu", function()

	local icon

    if font == 1 then
     icon = Material("tabletf4/tablet.png")
    elseif font == 2 then
     icon = Material("tabletf4/tablet2.png")
    elseif font == 3 then
     icon = Material("tabletf4/tablet3.png")
    elseif font == 4 then
     icon = Material("tabletf4/tablet4.png")
    end

local ply = LocalPlayer()
    local TimeString = os.date( "%H:%M:%S - %d/%m/%Y" , Timestamp )
	local TabletF4_Frame = vgui.Create("DFrame")

	TabletF4_Frame:SetTitle("")
	TabletF4_Frame:SetSize(ScrW()*.6, ScrH()*.7)
	TabletF4_Frame:Center()
	TabletF4_Frame:ShowCloseButton(false)
	TabletF4_Frame:SetDraggable(false)
	TabletF4_Frame:MakePopup()
	TabletF4_Frame.Paint = function(self, w, h)
 	    surface.SetDrawColor( 255, 255, 255, 255 )
	    surface.SetMaterial( icon )
		surface.DrawTexturedRect( 0, 0, w, h )
		draw.DrawText(Tablet_Menu.NameEmploi, "Trebuchet24", ScrW() * 0.0830, ScrH() * 0.240, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameEntitie, "Trebuchet24", ScrW() * 0.2100, ScrH() * 0.240, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameGunShop, "Trebuchet24", ScrW() * 0.3150, ScrH() * 0.240, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameWebsite, "Trebuchet24", ScrW() * 0.4215, ScrH() * 0.240, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameCommand, "Trebuchet24", ScrW() * 0.0870, ScrH() * 0.420, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameReglage, "Trebuchet24", ScrW() * 0.2025, ScrH() * 0.420, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.NameInfo, "Trebuchet24", ScrW() * 0.3090, ScrH() * 0.420, Color(255, 255, 255, 255))
		if Tablet_Menu.ShowDiscord then
		draw.DrawText(Tablet_Menu.NameDiscord, "Trebuchet24", ScrW() * 0.4250, ScrH() * 0.420, Color(255, 255, 255, 255))
	    end
		draw.DrawText(TimeString, "Trebuchet18", ScrW() * 0.460, ScrH() * 0.105, Color(255, 255, 255, 255))
	end

/*------------------------------------------
			BUTTON INFO
------------------------------------------*/
    local TabletF4_Info = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Info:SetText( "" )
    TabletF4_Info:SetPos( ScrW() * 0.3050, ScrH() * 0.300 )
    TabletF4_Info:SetSize( 110, 110 )
 	function TabletF4_Info:Paint(w, h)
		surface.SetMaterial( icon10 )
		surface.DrawTexturedRect( 0, 0, w, h )
 	end
    TabletF4_Info.DoClick = function()
    	TabletF4_Frame:Close()	
	    local TabletF4_FrameInfo = vgui.Create("DFrame")
	    TabletF4_FrameInfo:SetTitle("")
	    TabletF4_FrameInfo:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_FrameInfo:Center()
	    TabletF4_FrameInfo:ShowCloseButton(false)
	    TabletF4_FrameInfo:SetDraggable(false)
	    TabletF4_FrameInfo:MakePopup()
	    TabletF4_FrameInfo.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
		    draw.DrawText("Tablet By GayToz", "FontCredits", ScrW() * 0.2150, ScrH() * 0.125, Color(255, 255, 255, 255))
		    draw.DrawText("https://steamcommunity.com/id/JamieTrouillet/", "FontCredits", ScrW() * 0.0800, ScrH() * 0.200, Color(255, 255, 255, 255))
		    draw.DrawText("Version : 2.14", "FontCredits", ScrW() * 0.2300, ScrH() * 0.415, Color(255, 255, 255, 255))
	    end
	    
	    local TabletF4_Close11 = vgui.Create( "DButton", TabletF4_FrameInfo )
        TabletF4_Close11:SetText( "" )
        TabletF4_Close11:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
        TabletF4_Close11:SetSize( 35, 35 )
        TabletF4_Close11.Paint = function(self, w, h)
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
        end
        TabletF4_Close11.DoClick = function()
	        TabletF4_FrameInfo:Close()	
        end
    end
/*------------------------------------------
			BUTTON REGLALE
------------------------------------------*/

    local TabletF4_Reglage = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Reglage:SetText( "" )
    TabletF4_Reglage:SetPos( ScrW() * 0.1900, ScrH() * 0.300 )
    TabletF4_Reglage:SetSize( 110, 110 )
 	function TabletF4_Reglage:Paint(w, h)
		surface.SetMaterial( icon7 )
		surface.DrawTexturedRect( 0, 0, w, h )
 	end
    TabletF4_Reglage.DoClick = function()
        TabletF4_Frame:Close()	
	    local TabletF4_FrameReglage = vgui.Create("DFrame")
	    TabletF4_FrameReglage:SetTitle("")
	    TabletF4_FrameReglage:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_FrameReglage:Center()
	    TabletF4_FrameReglage:ShowCloseButton(false)
	    TabletF4_FrameReglage:SetDraggable(false)
	    TabletF4_FrameReglage:MakePopup()
	    TabletF4_FrameReglage.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
		    draw.DrawText(Tablet_Menu.NameWallpaper, "Trebuchet24", ScrW() * 0.2300, ScrH() * 0.125, Color(255, 255, 255, 255))
	    end

	    local LockIcon1 = vgui.Create( "DButton", TabletF4_FrameReglage )
        LockIcon1:SetText( "" )
        LockIcon1:SetPos( ScrW()*.0900, ScrH()*.150 )
        LockIcon1:SetSize( 250, 200 )
        LockIcon1:SetFont("Trebuchet24")
        LockIcon1:SetTextColor(Color(255,255,255))
        LockIcon1.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
	    end
        if font == 1 or 3 or 4 then
        local LockIcon2 = vgui.Create( "DButton", TabletF4_FrameReglage )
        LockIcon2:SetText( "" )
        LockIcon2:SetPos( ScrW()*.3400, ScrH()*.150 )
        LockIcon2:SetSize( 250, 200 )
        LockIcon2:SetFont("Trebuchet24")
        LockIcon2:SetTextColor(Color(255,255,255))
        LockIcon2.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon8 )
		    surface.DrawTexturedRect( 0, 0, w, h )
	    end
        LockIcon2.DoClick = function()
	        TabletF4_FrameReglage:Close()
	        font = 2	
        end
    end

        local LockIcon3 = vgui.Create( "DButton", TabletF4_FrameReglage )
        LockIcon3:SetText( "" )
        LockIcon3:SetPos( ScrW()*.0900, ScrH()*.360 )
        LockIcon3:SetSize( 250, 200 )
        LockIcon3:SetFont("Trebuchet24")
        LockIcon3:SetTextColor(Color(255,255,255))
        LockIcon3.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon9 )
		    surface.DrawTexturedRect( 0, 0, w, h )
	    end
        LockIcon3.DoClick = function()
	        TabletF4_FrameReglage:Close()
	        font = 3
        end

        local LockIcon4 = vgui.Create( "DButton", TabletF4_FrameReglage )
        LockIcon4:SetText( "" )
        LockIcon4:SetPos( ScrW()*.3400, ScrH()*.360 )
        LockIcon4:SetSize( 250, 200 )
        LockIcon4:SetFont("Trebuchet24")
        LockIcon4:SetTextColor(Color(255,255,255))
        LockIcon4.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon11 )
		    surface.DrawTexturedRect( 0, 0, w, h )
	    end
        LockIcon4.DoClick = function()
	        TabletF4_FrameReglage:Close()
	        font = 4
        end

	    local TabletF4_Close10 = vgui.Create( "DButton", TabletF4_FrameReglage )
        TabletF4_Close10:SetText( "" )
        TabletF4_Close10:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
        TabletF4_Close10:SetSize( 35, 35 )
        TabletF4_Close10.Paint = function(self, w, h)
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
        end
        TabletF4_Close10.DoClick = function()
	        TabletF4_FrameReglage:Close()	
        end
    end



/*------------------------------------------
			BUTTON EMPLOI
------------------------------------------*/

	local TabletF4_Emploi = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Emploi:SetText( "" )
    TabletF4_Emploi:SetPos( ScrW() * 0.0800, ScrH() * 0.120 )
    TabletF4_Emploi:SetSize( 110, 110 )
 	function TabletF4_Emploi:Paint(w, h)
		surface.SetMaterial( icon1 )
		surface.DrawTexturedRect( 0, 0, w, h )
 		end
    TabletF4_Emploi.DoClick = function()
	    TabletF4_Frame:Close()	
	    local TabletF4_FrameEmploi = vgui.Create("DFrame")
	    TabletF4_FrameEmploi:SetTitle("")
	    TabletF4_FrameEmploi:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_FrameEmploi:Center()
	    TabletF4_FrameEmploi:ShowCloseButton(false)
	    TabletF4_FrameEmploi:SetDraggable(false)
	    TabletF4_FrameEmploi:MakePopup()
	    TabletF4_FrameEmploi.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
	    end

	    local TabletF4_PageBack = vgui.Create("DPanel", TabletF4_FrameEmploi)
        TabletF4_PageBack:SetPos(ScrW()*.0580, ScrH()*.105)
        TabletF4_PageBack:SetSize(775, 445)
        TabletF4_PageBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(0, 0, 0, 255))
		end

		local TabletF4_JobArea = vgui.Create("DScrollPanel", TabletF4_PageBack)
        TabletF4_JobArea:Dock(FILL)
        TabletF4_JobArea.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		for k, v in pairs(RPExtraTeams) do

		local TabletF4_JobBack = vgui.Create("DPanel", TabletF4_JobArea)
        TabletF4_JobBack:Dock(TOP)
        TabletF4_JobBack:SetSize(0,150)
        TabletF4_JobBack:DockMargin(5,5,5,5)
        TabletF4_JobBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		if util.IsValidModel( v.model[1] ) then
		    local TabletF4_JobModel = vgui.Create("SpawnIcon", TabletF4_JobBack)
		    TabletF4_JobModel:Dock(LEFT)
		    TabletF4_JobModel:SetSize(150,50)
		    TabletF4_JobModel:DockMargin(5,5,5,5)
		    TabletF4_JobModel:SetModel( v.model[1] )
        else
            local TabletF4_JobModel = vgui.Create("SpawnIcon", TabletF4_JobBack)
		    TabletF4_JobModel:Dock(LEFT)
		    TabletF4_JobModel:SetSize(150,50)
		    TabletF4_JobModel:DockMargin(5,5,5,5)
		    TabletF4_JobModel:SetModel( v.model )
		end

		local TabletF4_JobName = vgui.Create("DLabel", TabletF4_JobBack)
		TabletF4_JobName:SetText( v.name )
		TabletF4_JobName:Dock(TOP)
		TabletF4_JobName:DockMargin(5,5,0,0)
		TabletF4_JobName:SetFont("Trebuchet24")
		TabletF4_JobName:SetTextColor(Color(255,255,255))

		local TabletF4_DesBack = vgui.Create("DPanel", TabletF4_JobBack)
	    TabletF4_DesBack:Dock(FILL)
		TabletF4_DesBack:SetSize(0,150)
		TabletF4_DesBack:DockMargin(5,5,5,5)
		TabletF4_DesBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(66, 70, 80, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(66, 70, 80, 255))
		end

		surface.SetFont("Trebuchet18")
		local desX, desY = surface.GetTextSize( v.description )

		local TabletF4_Description = vgui.Create("DLabel", TabletF4_DesBack)
		TabletF4_Description:SetText( v.description )
		TabletF4_Description:Dock(FILL)
		TabletF4_Description:DockMargin(5,-30,0,0)
		TabletF4_Description:SetSize( desX, desY )
		TabletF4_Description:SetFont("FontDesc")
		TabletF4_Description:SetTextColor(Color(255,255,255))
        TabletF4_Description:SetWrap( true )

        local TabletF4_Become = vgui.Create("DButton", TabletF4_JobBack)
		TabletF4_Become:SetText("Become Job")
		TabletF4_Become:SetFont("FontButton")
		TabletF4_Become:Dock(BOTTOM)
		TabletF4_Become:DockMargin(5,5,5,5)
		TabletF4_Become:SetTextColor(Color(255,255,255))
		TabletF4_Become.Paint = function(self, w, h)
			surface.SetDrawColor(0,0,0,50)
			surface.DrawRect(0,0,w,h)
			surface.SetDrawColor(0,0,0,150)
			surface.DrawOutlinedRect(0,0,w,h)
		end
        TabletF4_Become.DoClick = function()
        RunConsoleCommand( "say", "/" .. v.command )
        end

        end

	    local TabletF4_Close5 = vgui.Create( "DButton", TabletF4_FrameEmploi )
        TabletF4_Close5:SetText( "" )
        TabletF4_Close5:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
        TabletF4_Close5:SetSize( 35, 35 )
        TabletF4_Close5.Paint = function(self, w, h)
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
        end
        TabletF4_Close5.DoClick = function()
	        TabletF4_FrameEmploi:Close()	
        end
    end

/*------------------------------------------
			BUTTON ENTITIES
------------------------------------------*/

    local TabletF4_Entities = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Entities:SetText( "" )
    TabletF4_Entities:SetPos( ScrW() * 0.1900, ScrH() * 0.120 )
    TabletF4_Entities:SetSize( 110, 110 )
 	function TabletF4_Entities:Paint(w, h)
		surface.SetMaterial( icon2 )
		surface.DrawTexturedRect( 0, 0, w, h )
 		end
    TabletF4_Entities.DoClick = function()
	    TabletF4_Frame:Close()	
	    local TabletF4_Entities = vgui.Create("DFrame")
	    TabletF4_Entities:SetTitle("")
	    TabletF4_Entities:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_Entities:Center()
	    TabletF4_Entities:ShowCloseButton(false)
	    TabletF4_Entities:SetDraggable(false)
	    TabletF4_Entities:MakePopup()
	    TabletF4_Entities.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
        end

	    local TabletF4_EntBack = vgui.Create("DPanel", TabletF4_Entities)
        TabletF4_EntBack:SetPos(ScrW()*.0580, ScrH()*.105)
        TabletF4_EntBack:SetSize(775, 445)
        TabletF4_EntBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		local TabletF4_EntArea = vgui.Create("DScrollPanel", TabletF4_EntBack)
        TabletF4_EntArea:Dock(FILL)
        TabletF4_EntArea.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		for k, v in pairs(DarkRPEntities) do

	    local TabletF4_EntBack2 = vgui.Create("DPanel", TabletF4_EntArea)
        TabletF4_EntBack2:Dock(TOP)
        TabletF4_EntBack2:SetSize(0,150)
        TabletF4_EntBack2:DockMargin(5,5,5,5)
        TabletF4_EntBack2.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

        local TabletF4_EntMdoel = vgui.Create( "DModelPanel", TabletF4_EntBack2 )
        TabletF4_EntMdoel:SetSize( 150,150 )
        TabletF4_EntMdoel:SetPos( ScrW() * 0.010, ScrH() * 0.020 	)
        TabletF4_EntMdoel:SetModel( v.model )
        TabletF4_EntMdoel:SetLookAt( Vector( 0, 0, 0 ) )
        TabletF4_EntMdoel:SetCamPos( Vector( 20, 20, 30 ) )

        local TabletF4_EntName = vgui.Create("DLabel", TabletF4_EntBack2)
		TabletF4_EntName:SetText( v.name.." ( "..DarkRP.formatMoney(v.price).." ) " )
		TabletF4_EntName:Dock(TOP)
		TabletF4_EntName:DockMargin(200,5,0,0)
		TabletF4_EntName:SetFont("Trebuchet24")
		TabletF4_EntName:SetTextColor(Color(255,255,255))

		local TabletF4_Buy = vgui.Create("DButton", TabletF4_EntBack2)
		TabletF4_Buy:SetText("Purchase")
		TabletF4_Buy:SetFont("FontDesc")
		TabletF4_Buy:SetTextColor(Color(0,0,0))
		TabletF4_Buy:Dock(BOTTOM)
		TabletF4_Buy:DockMargin(190,5,5,5)
		TabletF4_Buy.Paint = function(self, w, h)
			surface.SetDrawColor(255,255,255,50)
			surface.DrawRect(0,0,w,h)
			surface.SetDrawColor(255,255,255,150)
			surface.DrawOutlinedRect(0,0,w,h)
		end
        TabletF4_Buy.DoClick = function()
        RunConsoleCommand( "say", "/" .. v.cmd )
        end

        surface.SetFont( "Trebuchet24" )
		local entmaxX, entmaxY = surface.GetTextSize( "Maximum: "..v.max )

		local entmaxX = vgui.Create("DLabel", TabletF4_EntBack2)
		entmaxX:SetText( "Maximum: "..v.max )
		entmaxX:SetSize(entmaxX,entmaxY)
		entmaxX:Dock(TOP)
		entmaxX:DockMargin(200,5,0,0)
		entmaxX:SetFont("Trebuchet24")
		entmaxX:SetTextColor(Color(255,255,255))


		end

        local TabletF4_Close2 = vgui.Create( "DButton", TabletF4_Entities )
        TabletF4_Close2:SetText( "" )
        TabletF4_Close2:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
        TabletF4_Close2:SetSize( 35, 35 )
        TabletF4_Close2.Paint = function(self, w, h)
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
        end
        TabletF4_Close2.DoClick = function()
	        TabletF4_Entities:Close()	
        end
    end

/*------------------------------------------
			BUTTON WEAPONS
------------------------------------------*/

    local TabletF4_GunStore = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_GunStore:SetText( "" )
    TabletF4_GunStore:SetPos( ScrW() * 0.3000, ScrH() * 0.105 )
    TabletF4_GunStore:SetSize( 135, 135 )
 	function TabletF4_GunStore:Paint(w, h)
		surface.SetMaterial( icon3 )
		surface.DrawTexturedRect( 0, 0, w, h )
 		end
    TabletF4_GunStore.DoClick = function()
	    TabletF4_Frame:Close()	
	    local TabletF4_Weapon = vgui.Create("DFrame")
	    TabletF4_Weapon:SetTitle("")
	    TabletF4_Weapon:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_Weapon:Center()
	    TabletF4_Weapon:ShowCloseButton(false)
	    TabletF4_Weapon:SetDraggable(false)
	    TabletF4_Weapon:MakePopup()
	    TabletF4_Weapon.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
        end

        local TabletF4_WpBack = vgui.Create("DPanel", TabletF4_Weapon)
        TabletF4_WpBack:SetPos(ScrW()*.0580, ScrH()*.105)
        TabletF4_WpBack:SetSize(775, 445)
        TabletF4_WpBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		local TabletF4_WpArea = vgui.Create("DScrollPanel", TabletF4_WpBack)
        TabletF4_WpArea:Dock(FILL)
        TabletF4_WpArea.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end
        
        for k, v in pairs(CustomShipments) do

        local TabletF4_WpBack2 = vgui.Create("DPanel", TabletF4_WpArea)
        TabletF4_WpBack2:Dock(TOP)
        TabletF4_WpBack2:SetSize(0,150)
        TabletF4_WpBack2:DockMargin(5,5,5,5)
        TabletF4_WpBack2.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

        local TabletF4_WpMdoel = vgui.Create( "DModelPanel", TabletF4_WpBack2 )
        TabletF4_WpMdoel:SetSize( 150,150 )
        TabletF4_WpMdoel:SetPos( ScrW() * 0.010, ScrH() * 0.050 	)
        TabletF4_WpMdoel:SetModel( v.model )
        TabletF4_WpMdoel:SetLookAt( Vector( 0, 0, 0 ) )
        TabletF4_WpMdoel:SetCamPos( Vector( 20, 10, 15 ) )

        local TabletF4_WpName = vgui.Create("DLabel", TabletF4_WpBack2)
		TabletF4_WpName:SetText( v.name.." ( "..DarkRP.formatMoney(v.price).." ) " )
		TabletF4_WpName:Dock(TOP)
		TabletF4_WpName:DockMargin(200,5,0,0)
		TabletF4_WpName:SetFont("Trebuchet24")
		TabletF4_WpName:SetTextColor(Color(255,255,255))

		surface.SetFont( "Trebuchet24" )
		local shippriceX, shippriceY = surface.GetTextSize( v.name )

		local TabletF4_WpPrice = vgui.Create("DLabel", TabletF4_WpBack2)
		TabletF4_WpPrice:SetText( "Price: "..DarkRP.formatMoney(v.price) )
		TabletF4_WpPrice:SetSize(shippriceX,shippriceY)
		TabletF4_WpPrice:Dock(TOP)
		TabletF4_WpPrice:DockMargin(200,5,0,0)
		TabletF4_WpPrice:SetFont("Trebuchet24")
		TabletF4_WpPrice:SetTextColor(Color(255,255,255))

		surface.SetFont( "Trebuchet24" )
		local shipamountX, shipamountY = surface.GetTextSize( "Amount: "..v.amount )

		local TabletF4_WpAmount = vgui.Create("DLabel", TabletF4_WpBack2)
		TabletF4_WpAmount:SetText( "Amount: "..v.amount )
		TabletF4_WpAmount:SetSize(shipamountX,shipamountY)
		TabletF4_WpAmount:Dock(TOP)
		TabletF4_WpAmount:DockMargin(200,5,0,0)
		TabletF4_WpAmount:SetFont("Trebuchet24")
		TabletF4_WpAmount:SetTextColor(Color(255,255,255))

		local TabletF4_WpBuy = vgui.Create("DButton", TabletF4_WpBack2)
		TabletF4_WpBuy:SetText("Purchase")
		TabletF4_WpBuy:SetFont("FontDesc")
		TabletF4_WpBuy:SetTextColor(Color(255,255,255))
		TabletF4_WpBuy:Dock(BOTTOM)
		TabletF4_WpBuy:DockMargin(190,5,5,5)
		TabletF4_WpBuy.Paint = function(self, w, h)
			surface.SetDrawColor(255,255,255,50)
			surface.DrawRect(0,0,w,h)
			surface.SetDrawColor(255,255,255,150)
			surface.DrawOutlinedRect(0,0,w,h)
		end
        TabletF4_WpBuy.DoClick = function()
        RunConsoleCommand( "say", "/buyshipment " .. v.name )
        end
        end


        local TabletF4_Close2 = vgui.Create( "DButton", TabletF4_Weapon )
        TabletF4_Close2:SetText( "" )
        TabletF4_Close2:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
        TabletF4_Close2:SetSize( 35, 35 )
        TabletF4_Close2.Paint = function(self, w, h)
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
        end
        TabletF4_Close2.DoClick = function()
	        TabletF4_Weapon:Close()	
        end
    end

/*------------------------------------------
			BUTTON WEBSITE
------------------------------------------*/

    local TabletF4_Site = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Site:SetText( "" )
    TabletF4_Site:SetPos( ScrW() * 0.4100, ScrH() * 0.120 )
    TabletF4_Site:SetSize( 110, 110 )
 	function TabletF4_Site:Paint(w, h)
		surface.SetMaterial( icon4 )
		surface.DrawTexturedRect( 0, 0, w, h )
 		end
    TabletF4_Site.DoClick = function()
    	gui.OpenURL( Tablet_Menu.LinkWebsite )
    end

if Tablet_Menu.ShowDiscord then
    local TabletF4_Discord = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Discord:SetText( "" )
    TabletF4_Discord:SetPos( ScrW() * 0.4100, ScrH() * 0.300 )
    TabletF4_Discord:SetSize( 110, 110 )
 	function TabletF4_Discord:Paint(w, h)
		surface.SetMaterial( icon6 )
		surface.DrawTexturedRect( 0, 0, w, h )
 	end
    TabletF4_Discord.DoClick = function()
    	gui.OpenURL(Tablet_Menu.LinkDiscord)
    end
end

/*------------------------------------------
			BUTTON COMMAND
------------------------------------------*/

    local TabletF4_Command = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Command:SetText( "" )
    TabletF4_Command:SetPos( ScrW() * 0.0800, ScrH() * 0.300 )
    TabletF4_Command:SetSize( 110, 110 )
 	function TabletF4_Command:Paint(w, h)
		surface.SetMaterial( icon5 )
		surface.DrawTexturedRect( 0, 0, w, h )
 	end
    TabletF4_Command.DoClick = function()

        TabletF4_Frame:Close()	
	    local TabletF4_Command = vgui.Create("DFrame")
	    TabletF4_Command:SetTitle("")
	    TabletF4_Command:SetSize(ScrW()*.6, ScrH()*.7)
	    TabletF4_Command:Center()
	    TabletF4_Command:ShowCloseButton(false)
	    TabletF4_Command:SetDraggable(false)
	    TabletF4_Command:MakePopup()
	    TabletF4_Command.Paint = function(self, w, h)
 	        surface.SetDrawColor( 255, 255, 255, 255 )
	        surface.SetMaterial( icon )
		    surface.DrawTexturedRect( 0, 0, w, h )
        end

	    local TabletF4_CommandBack = vgui.Create("DPanel", TabletF4_Command)
        TabletF4_CommandBack:SetPos(ScrW()*.0580, ScrH()*.105)
        TabletF4_CommandBack:SetSize(775, 445)
        TabletF4_CommandBack.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		end

		local TabletF4_CmdArea = vgui.Create("DScrollPanel", TabletF4_CommandBack)
        TabletF4_CmdArea:Dock(FILL)
        TabletF4_CmdArea.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(20, 18, 30, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(20, 18, 30, 255))
		draw.DrawText(Tablet_Menu.CitizenCmd, "Trebuchet24", ScrW() * 0.015, ScrH() * 0.035, Color(255, 255, 255, 255))
		if (table.HasValue(Tablet_Menu.JobPolice , team.GetName(LocalPlayer():Team()))) then
		draw.DrawText(Tablet_Menu.PoliceCmd, "Trebuchet24", ScrW() * 0.3450, ScrH() * 0.035, Color(255, 255, 255, 255))
		draw.DrawText(Tablet_Menu.MayorCmd, "Trebuchet24", ScrW() * 0.3450, ScrH() * 0.240, Color(255, 255, 255, 255))
	    end
		end

/*------------------------------------------
			BUTTON CITIZEN
------------------------------------------*/

		local TextEntry = vgui.Create( "DTextEntry", TabletF4_CmdArea ) -- create the form as a child of frame
        TextEntry:SetPos( ScrW()*.0200, ScrH()*.075 )
        TextEntry:SetSize( 250, 40 )
        TextEntry:SetFont("Trebuchet18")
        TextEntry:SetText( Tablet_Menu.TextMoney )
        TextEntry:SetDrawLanguageID(false)
        TextEntry.OnEnter = function( self )
        	chat.AddText( self:GetValue() )	-- print the form's text as server text
        end

		local Dropmoney = vgui.Create( "DButton", TabletF4_CmdArea )
        Dropmoney:SetText( "Tablet_Menu.ButtonDrop" )
        Dropmoney:SetPos( ScrW()*.0200, ScrH()*.150 )
        Dropmoney:SetSize( 250, 30 )
        Dropmoney:SetFont("Trebuchet24")
        Dropmoney:SetTextColor(Color(255,255,255))
        Dropmoney.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
		end
        Dropmoney.DoClick = function()
	        RunConsoleCommand( "say", "/dropmoney "..TextEntry:GetValue())
	        TabletF4_Command:Close()
        end

        local Givemoney = vgui.Create( "DButton", TabletF4_CmdArea )
        Givemoney:SetText( "Tablet_Menu.ButtonGive" )
        Givemoney:SetPos( ScrW()*.0200, ScrH()*.195 )
        Givemoney:SetSize( 250, 30 )
        Givemoney:SetFont("Trebuchet24")
        Givemoney:SetTextColor(Color(255,255,255))
        Givemoney.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
		end
        Givemoney.DoClick = function()
	        RunConsoleCommand( "say", "/give "..TextEntry:GetValue() )
	        TabletF4_Command:Close()
        end

        local Sleep = vgui.Create( "DButton", TabletF4_CmdArea )
        Sleep:SetText( Tablet_Menu.ButtonSleep )
        Sleep:SetPos( ScrW()*.0200, ScrH()*.240 )
        Sleep:SetSize( 250, 30 )
        Sleep:SetFont("Trebuchet24")
        Sleep:SetTextColor(Color(255,255,255))
        Sleep.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
		end
        Sleep.DoClick = function()
	        RunConsoleCommand( "say", "/sleep " )
	        TabletF4_Command:Close()
        end

        local Dropweapon = vgui.Create( "DButton", TabletF4_CmdArea )
        Dropweapon:SetText( Tablet_Menu.ButtonWp )
        Dropweapon:SetPos( ScrW()*.0200, ScrH()*.285 )
        Dropweapon:SetSize( 250, 30 )
        Dropweapon:SetFont("Trebuchet24")
        Dropweapon:SetTextColor(Color(255,255,255))
        Dropweapon.Paint = function(self, w, h)
		DrawBlur(self, 2)
		draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
		draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
		end
        Dropweapon.DoClick = function()
	        RunConsoleCommand( "say", "/dropweapon " )
	        TabletF4_Command:Close()
        end

/*------------------------------------------
			BUTTON POLICE
------------------------------------------*/

    if (table.HasValue(Tablet_Menu.JobPolice , team.GetName(LocalPlayer():Team()))) then

    local TextEntry2 = vgui.Create( "DTextEntry", TabletF4_CmdArea ) -- create the form as a child of frame
    TextEntry2:SetPos( ScrW()*.3150, ScrH()*.075 )
    TextEntry2:SetSize( 250, 40 )
    TextEntry2:SetFont("Trebuchet18")
    TextEntry2:SetDrawLanguageID(false)
    TextEntry2:SetText( Tablet_Menu.TextPlayer )
    TextEntry2.OnEnter = function( self )
        chat.AddText( self:GetValue() )	-- print the form's text as server text
    end

	local Warrant = vgui.Create( "DButton", TabletF4_CmdArea )
    Warrant:SetText( Tablet_Menu.Warrant )
    Warrant:SetPos( ScrW()*.3150, ScrH()*.150 )
    Warrant:SetSize( 250, 30 )
    Warrant:SetFont("Trebuchet24")
    Warrant:SetTextColor(Color(255,255,255))
    Warrant.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    Warrant.DoClick = function()
	RunConsoleCommand( "say", "/warrant "..TextEntry2:GetValue())
	    TabletF4_Command:Close()
    end

    local UnWarrant = vgui.Create( "DButton", TabletF4_CmdArea )
    UnWarrant:SetText( Tablet_Menu.Unwarrant )
    UnWarrant:SetPos( ScrW()*.3150, ScrH()*.195 )
    UnWarrant:SetSize( 250, 30 )
    UnWarrant:SetFont("Trebuchet24")
    UnWarrant:SetTextColor(Color(255,255,255))
    UnWarrant.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    UnWarrant.DoClick = function()
	RunConsoleCommand( "say", "/unwarrant "..TextEntry2:GetValue())
	    TabletF4_Command:Close()
    end

    local TextEntry3 = vgui.Create( "DTextEntry", TabletF4_CmdArea ) -- create the form as a child of frame
    TextEntry3:SetPos( ScrW()*.3150, ScrH()*.280 )
    TextEntry3:SetSize( 250, 40 )
    TextEntry3:SetFont("Trebuchet18")
    TextEntry3:SetDrawLanguageID(false)
    TextEntry3:SetText( Tablet_Menu.TextLaw )
    TextEntry3.OnEnter = function( self )
        chat.AddText( self:GetValue() )	-- print the form's text as server text
    end

    local LawTab = vgui.Create( "DButton", TabletF4_CmdArea )
    LawTab:SetText( Tablet_Menu.LawTb )
    LawTab:SetPos( ScrW()*.3150, ScrH()*.335 )
    LawTab:SetSize( 250, 30 )
    LawTab:SetFont("Trebuchet24")
    LawTab:SetTextColor(Color(255,255,255))
    LawTab.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    LawTab.DoClick = function()
	RunConsoleCommand( "say", "/placelaws" )
	    TabletF4_Command:Close()
    end

    local AddLaw = vgui.Create( "DButton", TabletF4_CmdArea )
    AddLaw:SetText( Tablet_Menu.DeleteLaw )
    AddLaw:SetPos( ScrW()*.3950, ScrH()*.380 )
    AddLaw:SetSize( 120, 30 )
    AddLaw:SetFont("Trebuchet24")
    AddLaw:SetTextColor(Color(255,255,255))
    AddLaw.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    AddLaw.DoClick = function()
	RunConsoleCommand( "say", "/removelaw "..TextEntry3:GetValue() )
	    TabletF4_Command:Close()
    end

    local DltLaw = vgui.Create( "DButton", TabletF4_CmdArea )
    DltLaw:SetText( Tablet_Menu.AddLaw )
    DltLaw:SetPos( ScrW()*.3150, ScrH()*.380 )
    DltLaw:SetSize( 120, 30 )
    DltLaw:SetFont("Trebuchet24")
    DltLaw:SetTextColor(Color(255,255,255))
    DltLaw.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    DltLaw.DoClick = function()
	RunConsoleCommand( "say", "/addlaw "..TextEntry3:GetValue() )
	    TabletF4_Command:Close()
    end

    local LockDown = vgui.Create( "DButton", TabletF4_CmdArea )
    LockDown:SetText( Tablet_Menu.Lockdown )
    LockDown:SetPos( ScrW()*.3150, ScrH()*.420 )
    LockDown:SetSize( 250, 30 )
    LockDown:SetFont("Trebuchet24")
    LockDown:SetTextColor(Color(255,255,255))
    LockDown.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    LockDown.DoClick = function()
	RunConsoleCommand( "say", "/lockdown" )
	    TabletF4_Command:Close()
    end

    local UnDown = vgui.Create( "DButton", TabletF4_CmdArea )
    UnDown:SetText( Tablet_Menu.Deletelock )
    UnDown:SetPos( ScrW()*.3150, ScrH()*.460 )
    UnDown:SetSize( 250, 30 )
    UnDown:SetFont("Trebuchet24")
    UnDown:SetTextColor(Color(255,255,255))
    UnDown.Paint = function(self, w, h)
	DrawBlur(self, 2)
    draw.RoundedBox(0, 0, 0, w, h, Color(50, 18, 50, 200))
    draw.RoundedBox(0, 0, 0, w, 30, Color(50, 18, 50, 255))
	end
    UnDown.DoClick = function()
	RunConsoleCommand( "say", "/unlockdown" )
	    TabletF4_Command:Close()
    end
end


    
    local TabletF4_Close8 = vgui.Create( "DButton", TabletF4_Command )
    TabletF4_Close8:SetText( "" )
    TabletF4_Close8:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
    TabletF4_Close8:SetSize( 35, 35 )
    TabletF4_Close8.Paint = function(self, w, h)
    draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
    end
    TabletF4_Close8.DoClick = function()
	    TabletF4_Command:Close()	
    end
end
    local TabletF4_Close3 = vgui.Create( "DButton", TabletF4_Frame )
    TabletF4_Close3:SetText( "" )
    TabletF4_Close3:SetPos( ScrW() * 0.016, ScrH() * 0.335 )
    TabletF4_Close3:SetSize( 35, 35 )
    TabletF4_Close3.Paint = function(self, w, h)
    draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * 0.0, 600, 28, Color(0,0,0,0) ) 
    end
    TabletF4_Close3.DoClick = function()
	    TabletF4_Frame:Close()	
    end


end)

surface.CreateFont( "FontDesc", {   font = "Roboto",    size = 18,  weight = 500,   blursize = 0,   scanlines = 0,  antialias = true,} )

surface.CreateFont( "FontButton", {   font = "Roboto",    size = 15,  weight = 500,   blursize = 0,   scanlines = 0,  antialias = true,} )

surface.CreateFont( "FontCredits", {   font = "Roboto",    size = 40,  weight = 500,   blursize = 0,   scanlines = 0,  antialias = true,} )
