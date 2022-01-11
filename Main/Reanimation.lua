getgenv().Settings = {
	Reanimation = "Simple",
	CloneName = "Reanimate",
    CloneParent = game.Players.LocalPlayer.Character, -- Recommended: game.Players.LocalPlayer.Character
    AttachHead = false, -- Recommended: False
    Velocity = Vector3.new(35,0,0),
    AllowNetBypass = true, -- Recommended: True
    DisableAnimationsR6 = false, -- Recommended: IDK
    SimpleBulletFling = false -- Recommended: IDK
}

if not getgenv().Settings.AllowNetBypass then getgenv().Settings.AllowNetBypass = true end
spawn(function()
	while getgenv().Settings.AllowNetBypass == true do
        if syn then
            break
        end
		game:GetService('RunService').RenderStepped:Wait()
		setsimulationradius(1000,1000)
		settings().Physics.AllowSleep = false
		game.Players.LocalPlayer.MaximumSimulationRadius = 1000
	end
end)

print([[
-- Credits:
 This reanimation was made by Gelatek! 
 Thanks to poncho for small help!
]])

warn([[
-- Credits:
 This reanimation was made by Gelatek! 
 Thanks to poncho for small help!
]])

if getgenv().Reanimated == true then
game.StarterGui:SetCore("SendNotification", {
	Title = "Already Reanimated!";
	Text = "Reset to un-reanimate.";
})
return
end

local function Align(P0,P1,Position,Rotate)
    local AlignPosition = Instance.new("AlignPosition", P0)
    local AlignOrientation = Instance.new("AlignOrientation", P0)
    local Attachment1 = Instance.new("Attachment", P0)
    local Attachment2 = Instance.new("Attachment", P1)
    -- Main Attach Thingy:
    AlignPosition.Attachment0,AlignPosition.Attachment1 = Attachment1,Attachment2 -- Shortcut
    AlignOrientation.Attachment0,AlignOrientation.Attachment1 = Attachment1,Attachment2 -- Shortcut
    -- Properties:
    AlignPosition.RigidityEnabled = true
    AlignOrientation.MaxTorque = 1600000000
    AlignPosition.Responsiveness = 200
    AlignOrientation.Responsiveness = 200
    -- Rotate/Position
    Attachment1.Position = Position or Vector3.new(0,0,0)
    Attachment1.Rotation = Rotate or Vector3.new(0,0,0)
end
    
if not getgenv().Settings.Reanimation then getgenv().Settings.Reanimation = "Simple" end
if not getgenv().Settings.Velocity then getgenv().Settings.Velocity = Vector3.new(35,0,0) end
if not getgenv().Settings.CloneParent then getgenv().Settings.CloneParent = game.Players.LocalPlayer.Character end
if not getgenv().Settings.DisableAnimationsR6 then getgenv().Settings.DisableAnimationsR6 = false end
if not getgenv().Settings.SimpleBulletFling then getgenv().Settings.SimpleBulletFling = true end
if not getgenv().Settings.AttachHead then getgenv().Settings.AttachHead = false end
    
    
    
getgenv().Reanimated = true
    
local Human = game.Players.LocalPlayer.Character.Humanoid
    
if Human.RigType == Enum.HumanoidRigType.R6 then
    
    if getgenv().Settings.Reanimation == "Simple" then -- R6 Simple
        
        
        
        
        
    local Character = workspace[game.Players.LocalPlayer.Name]
    local Humanoid = Character:FindFirstChild("Humanoid")
    Character.Archivable = true
    if getgenv().Settings.DisableAnimationsR6 == true then
        pcall(function()
        for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
         v:Stop()
        end
        Character.Animate.Disabled = true
        Humanoid.Animator:Destroy()
        local ae = Instance.new("Part", Humanoid)
        ae.Name = "Animator"
        ae.Anchored = true
        ae.CanCollide = false
        ae.Position = Vector3.new(100,100,100)
    end)
    end
    local Reanim = Character:Clone()
    Reanim.Parent = getgenv().Settings.CloneParent or Character
    Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*
    
    for i,v in pairs(Reanim:GetChildren()) do 
        if v:IsA("BasePart") then v.Transparency = 1
            elseif v:IsA("Accessory") then v:Destroy()
        end
    end
    Reanim.Head.face.Transparency = 1	
    

    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().Reanimated == true then
        for i,v in pairs(Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end

        for i,v in pairs(Reanim:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
         end

        if getgenv().Reanimated == true then
           pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
        end  
    end)

    
    game:GetService("UserInputService").JumpRequest:Connect(function()
        pcall(function()
        Reanim.Humanoid.Jump = true
        Reanim.Humanoid.Sit = false
        end)
    end)
    Character.Torso['Right Shoulder']:Destroy()
    Character.Torso['Left Shoulder']:Destroy()
    Character.Torso['Right Hip']:Destroy()
    Character.Torso['Left Hip']:Destroy()
    Character.HumanoidRootPart:Destroy()
    function InstantAttach(P0)
        Align(Character[P0],Reanim[P0])
    end
    if getgenv().Settings.AttachHead == true then
        InstantAttach("Head")
    end
    InstantAttach("Right Arm")
    InstantAttach("Left Arm")
    InstantAttach("Right Leg")
    InstantAttach("Left Leg")
    InstantAttach("Torso")
    
    game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in pairs(Character:GetChildren()) do
            if v:IsA("BasePart") then v.Velocity = getgenv().Settings.Velocity
            elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
            end
        end
    end)
    Humanoid.Died:Connect(function()
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
        wait()
        getgenv().Reanimated = false
        Reanim:Destroy()
    end)
    workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
    
    
    
    
    
    elseif getgenv().Settings.Reanimation == "Fling" then -- R6 Fling
    
    
    
    
    
    
    -- Main (R6)
    local Character = workspace[game.Players.LocalPlayer.Name]
    local Humanoid = Character:FindFirstChild("Humanoid")
    Character.Archivable = true
    if getgenv().Settings.DisableAnimationsR6 == true then
        pcall(function()
        for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
         v:Stop()
        end
        Character.Animate.Disabled = true
        Humanoid.Animator:Destroy()
        local ae = Instance.new("Part", Humanoid)
        ae.Name = "Animator"
        ae.Anchored = true
        ae.CanCollide = false
        ae.Position = Vector3.new(100,100,100)
    end)
    end
    local Reanim = Character:Clone()
    Reanim.Parent = getgenv().Settings.CloneParent or Character
    Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*
    
    for i,v in pairs(Reanim:GetChildren()) do 
        if v:IsA("BasePart") then v.Transparency = 1
            elseif v:IsA("Accessory") then v:Destroy()
        end
    end
    Reanim.Head.face.Transparency = 1	
    
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().Reanimated == true then
        for i,v in pairs(Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end

        for i,v in pairs(Reanim:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
         end

        if getgenv().Reanimated == true then
           pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
        end  
    end)

    
    game:GetService("UserInputService").JumpRequest:Connect(function()
        pcall(function()
        Reanim.Humanoid.Jump = true
        Reanim.Humanoid.Sit = false
        end)
    end)

    Character.Torso['Right Shoulder']:Destroy()
    Character.Torso['Left Shoulder']:Destroy()
    Character.Torso['Right Hip']:Destroy()
    Character.Torso['Left Hip']:Destroy()
    Character.HumanoidRootPart:Destroy()
    function InstantAttach(P0)
        Align(Character[P0],Reanim[P0])
    end
    if getgenv().Settings.AttachHead == true then
        InstantAttach("Head")
    end
    InstantAttach("Right Arm")
    InstantAttach("Left Arm")
    InstantAttach("Right Leg")
    InstantAttach("Left Leg")
    InstantAttach("Torso")
    
    game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in pairs(Character:GetChildren()) do
            if v:IsA("BasePart") and v.Name ~= "Torso" then v.Velocity = getgenv().Settings.Velocity
            elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
            end
        end
        pcall(function() Character.Torso.Velocity = Vector3.new(2000,1000,2000) end)
    
    end)
    Humanoid.Died:Connect(function()
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
        wait()
        getgenv().Reanimated = false
        Reanim:Destroy()
    end)
    workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
    
    
    
    
    
    
    
    
    elseif getgenv().Settings.Reanimation == "Bullet" then -- R6 Bullet
        
        if not game.Players.LocalPlayer.Character:WaitForChild("Pal Hair") then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Not Reanimated!";
                Text = "Missing: Pal Hair..";
            })
            return
        end
        
        -- Main (R6)
        local Character = workspace[game.Players.LocalPlayer.Name]
        local Humanoid = Character:FindFirstChild("Humanoid")
        Character.Archivable = true
        if getgenv().Settings.DisableAnimationsR6 == true then
            pcall(function()
            for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
             v:Stop()
            end
            Character.Animate.Disabled = true
            Humanoid.Animator:Destroy()
            local ae = Instance.new("Part", Humanoid)
            ae.Name = "Animator"
            ae.Anchored = true
            ae.CanCollide = false
            ae.Position = Vector3.new(100,100,100)
        end)
        end

        local Reanim = Character:Clone()
        Reanim.Parent = getgenv().Settings.CloneParent or Character  
        Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*
                    
        for i,v in pairs(Reanim:GetChildren()) do 
            if v:IsA("BasePart") then v.Transparency = 1
                elseif v:IsA("Accessory") then v:Destroy()
            end
        end
        Reanim.Head.face.Transparency = 1	
        
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().Reanimated == true then
            for i,v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
    
            for i,v in pairs(Reanim:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
             end
    
            if getgenv().Reanimated == true then
               pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
            end  
        end)
    
        game:GetService("UserInputService").JumpRequest:Connect(function()
            pcall(function()
            Reanim.Humanoid.Jump = true
            Reanim.Humanoid.Sit = false
            end)
        end)

        Character.Torso['Right Shoulder']:Destroy()
        Character.Torso['Left Shoulder']:Destroy()
        Character.Torso['Right Hip']:Destroy()
        Character.Torso['Left Hip']:Destroy()
        Character.HumanoidRootPart:Destroy()
        function InstantAttach(P0)
            Align(Character[P0],Reanim[P0])
        end
        Humanoid:ChangeState("Physics")
        local Hat = Character['Pal Hair'].Handle
        Hat:ClearAllChildren()
        if getgenv().Settings.SimpleBulletFling == false then InstantAttach("Left Arm") end
        InstantAttach("Right Arm")
        InstantAttach("Right Leg")
        InstantAttach("Left Leg")
        InstantAttach("Torso")
        if getgenv().Settings.AttachHead == true then
            InstantAttach("Head")
        end
        Align(Hat,Reanim['Left Arm'],Vector3.new(0,0,0),Vector3.new(90,0,0))
        game:GetService("RunService").Heartbeat:Connect(function()
            for i,v in pairs(Character:GetChildren()) do
                if v:IsA("BasePart") and v.Name ~= "Bullet" then v.Velocity = getgenv().Settings.Velocity
                elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
                end
                pcall(function() Character.Bullet.Velocity = Vector3.new(75,0,0) end)
            end
        end)

        Humanoid.Died:Connect(function()
            workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
            wait()
            getgenv().Reanimated = false
            Reanim:Destroy()
        end)
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
        if getgenv().Settings.SimpleBulletFling == true then
        Character['Left Arm'].Name = "Bullet"
        local Bullet = Character['Bullet']
        local BP = Instance.new("BodyPosition", Bullet)
        local BT = Instance.new("BodyThrust", Bullet)
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.D = 125
        BP.P = 12500
        BT.Location = Vector3.new(10,5,-10)
        BT.Force = Vector3.new(3000,3000,3000)
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local MouseHolding = false
        Mouse.Button1Down:Connect(function()
            MouseHolding = true --BP.Position = Mouse.Hit.p
        end)
        
        Mouse.Button1Up:Connect(function()
            MouseHolding = false --BP.Position = Character.Torso.Position
        end)
        
        
        game:GetService("RunService").Heartbeat:Connect(function()
        if MouseHolding == true then
            BP.Position = Mouse.Hit.p
        elseif MouseHolding == false then
            pcall(function() BP.Position = Reanim:FindFirstChild("Torso").Position + Vector3.new(0,-25,0) end)
        end
        end)
        
        Bullet.Transparency = 1
        local Outline = Instance.new("SelectionBox", Bullet)
        Outline.Adornee = Bullet
	end
    end
    


-----------------------------------------------
elseif Human.RigType == Enum.HumanoidRigType.R15 then
-----------------------------------------------   



    if getgenv().Settings.Reanimation == "Simple" then -- R15 Simple
        
        -- Main (R15)
        local Character = workspace[game.Players.LocalPlayer.Name]
        local Humanoid = Character:FindFirstChild("Humanoid")
        Character.Archivable = true
        pcall(function()
            for i, v in pairs(Humanoid:GetChildren()) do if v:IsA("NumberValue") then v:Destroy() end end
        end)
        pcall(function()
            for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
             v:Stop()
            end
            Character.Animate.Disabled = true
            Humanoid.Animator:Destroy()
            local ae = Instance.new("Part", Humanoid)
            ae.Name = "Animator"
            ae.Anchored = true
            ae.CanCollide = false
            ae.Position = Vector3.new(100,100,100)
        end)
        local Reanim = game:GetObjects('rbxassetid://8440552086')[1]
        Reanim.Parent = getgenv().Settings.CloneParent or Character  
        Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*
        Character.Animate:Destroy()
        Humanoid.Animator:Destroy()
        for i,v in pairs(Reanim:GetChildren()) do 
            if v:IsA("BasePart") then v.Transparency = 1
                elseif v:IsA("Accessory") then v:Destroy()
            end
        end
        Reanim.Head.face.Transparency = 1	

        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().Reanimated == true then
            for i,v in pairs(Character:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
    
            for i,v in pairs(Reanim:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
             end
    
            if getgenv().Reanimated == true then
               pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
            end  
        end)
        game:GetService("UserInputService").JumpRequest:Connect(function()
            pcall(function()
            Reanim.Humanoid.Jump = true
            Reanim.Humanoid.Sit = false
            end)
        end)
    
    
        Character.HumanoidRootPart:Destroy()


        function Attach(Part1,Part2,Position,Rotate)
            for i,v in pairs(Part1:GetChildren()) do
                if v:IsA('Motor6D') and v.Name ~= "Neck" then 
                    v:Destroy() 
                end
            end
            Align(Part1,Part2,Position,Rotate)
        end

        Reanim.HumanoidRootPart.CFrame = Character.UpperTorso.CFrame
        Attach(Character.UpperTorso, Reanim['Torso'], Vector3.new(0, -0.03, 0), Vector3.new(0, 0, 0))
        Attach(Character.LowerTorso, Reanim['Torso'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightHand, Reanim['Right Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftHand, Reanim['Left Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightFoot, Reanim['Right Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftFoot, Reanim['Left Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperArm, Reanim['Right Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperArm, Reanim['Left Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperLeg, Reanim['Left Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperLeg, Reanim['Right Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerArm, Reanim['Right Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerArm, Reanim['Left Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerLeg, Reanim['Left Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerLeg, Reanim['Right Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        if getgenv().Settings.AttachHead == true then
            Attach(Character["Head"],Reanim["Head"])
        end
        game:GetService("RunService").Heartbeat:Connect(function()
            for i,v in pairs(Character:GetChildren()) do
                if v:IsA("MeshPart") then v.Velocity = getgenv().Settings.Velocity
                elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
                end
            end
        end)
        Humanoid.Died:Connect(function()
            workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
            wait()
            getgenv().Reanimated = false
            Reanim:Destroy()
        end)
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid

    elseif getgenv().Settings.Reanimation == "Fling" then -- R15 Fling
        local Character = workspace[game.Players.LocalPlayer.Name]
        local Humanoid = Character:FindFirstChild("Humanoid")
        Character.Archivable = true
        pcall(function()
            for i, v in pairs(Humanoid:GetChildren()) do if v:IsA("NumberValue") then v:Destroy() end end
        end)
        pcall(function()
            for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
             v:Stop()
            end
            Character.Animate.Disabled = true
            Humanoid.Animator:Destroy()
            local ae = Instance.new("Part", Humanoid)
            ae.Name = "Animator"
            ae.Anchored = true
            ae.CanCollide = false
            ae.Position = Vector3.new(100,100,100)
        end)
        local Reanim = game:GetObjects('rbxassetid://8440552086')[1]
        Reanim.Parent = Character
        Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*
        Character.Animate:Destroy()
        Humanoid.Animator:Destroy()
        for i,v in pairs(Reanim:GetChildren()) do 
            if v:IsA("BasePart") then v.Transparency = 1
                elseif v:IsA("Accessory") then v:Destroy()
            end
        end
        Reanim.Head.face.Transparency = 1	
        
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().Reanimated == true then
            for i,v in pairs(Character:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
    
            for i,v in pairs(Reanim:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
             end
    
            if getgenv().Reanimated == true then
               pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
            end  
        end)
        game:GetService("UserInputService").JumpRequest:Connect(function()
            pcall(function()
            Reanim.Humanoid.Jump = true
            Reanim.Humanoid.Sit = false
            end)
        end)
    
    
        Character.HumanoidRootPart:Destroy()
        
        
        function Attach(Part1,Part2,Position,Rotate)
            for i,v in pairs(Part1:GetChildren()) do
                if v:IsA('Motor6D') and v.Name ~= "Neck" then 
                    v:Destroy() 
                end
            end
            Align(Part1,Part2,Position,Rotate)
        end
        
        Reanim.HumanoidRootPart.CFrame = Character.UpperTorso.CFrame
        Attach(Character.UpperTorso, Reanim['Torso'], Vector3.new(0, -0.03, 0), Vector3.new(0, 0, 0))
        Attach(Character.LowerTorso, Reanim['Torso'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightHand, Reanim['Right Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftHand, Reanim['Left Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightFoot, Reanim['Right Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftFoot, Reanim['Left Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperArm, Reanim['Right Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperArm, Reanim['Left Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperLeg, Reanim['Left Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperLeg, Reanim['Right Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerArm, Reanim['Right Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerArm, Reanim['Left Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerLeg, Reanim['Left Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerLeg, Reanim['Right Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        if getgenv().Settings.AttachHead == true then
            Attach(Character["Head"],Reanim["Head"])
        end
        game:GetService("RunService").Heartbeat:Connect(function()
            for i,v in pairs(Character:GetChildren()) do
                if v:IsA("MeshPart") and v.Name ~= "UpperTorso" then v.Velocity = getgenv().Settings.Velocity
                elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
                    
                end
            end
            pcall(function() Character.UpperTorso.Velocity = Vector3.new(1300,2000,1300)
              Character.UpperTorso.CFrame = Reanim.Torso.CFrame + Vector3.new(0,0.05,0)  end)
        end)
        Humanoid.Died:Connect(function()
            workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
            wait()
            getgenv().Reanimated = false
            Reanim:Destroy()
        end)
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
        
    elseif getgenv().Settings.Reanimation == "Bullet" then -- R15 Bullet
        local Character = workspace[game.Players.LocalPlayer.Name]
        local Humanoid = Character:FindFirstChild("Humanoid")
        Character.Archivable = true
        pcall(function()
            for i, v in pairs(Humanoid:GetChildren()) do if v:IsA("NumberValue") then v:Destroy() end end
        end)

        pcall(function()
            for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
             v:Stop()
            end
            Character.Animate.Disabled = true
            Humanoid.Animator:Destroy()
            local ae = Instance.new("Part", Humanoid)
            ae.Name = "Animator"
            ae.Anchored = true
            ae.CanCollide = false
            ae.Position = Vector3.new(100,100,100)
        end)

        local Reanim = game:GetObjects('rbxassetid://8440552086')[1]
        Reanim.Parent = Character
        Reanim.Name = getgenv().Settings.CloneName or "TalentlessDumbass" -- fox*

        for i,v in pairs(Reanim:GetChildren()) do 
            if v:IsA("BasePart") then v.Transparency = 1
                elseif v:IsA("Accessory") then v:Destroy()
            end
        end
        Reanim.Head.face.Transparency = 1	
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().Reanimated == true then
            for i,v in pairs(Character:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
    
            for i,v in pairs(Reanim:GetDescendants()) do
                if v:IsA("MeshPart") then
                    v.CanCollide = false
                end
            end
             end
    
            if getgenv().Reanimated == true then
               pcall(function() Reanim.Humanoid:Move(Humanoid.MoveDirection) end)
            end  
        end)

    game:GetService("UserInputService").JumpRequest:Connect(function()
        pcall(function()
        Reanim.Humanoid.Jump = true
        Reanim.Humanoid.Sit = false
        end)
    end)



        Character.HumanoidRootPart:Destroy()

        Humanoid:ChangeState("Physics")
        function Attach(Part1,Part2,Position,Rotate)
            for i,v in pairs(Part1:GetChildren()) do
                if v:IsA('Motor6D') and v.Name ~= "Neck" then 
                    v:Destroy() 
                end
            end
            Align(Part1,Part2,Position,Rotate)
        end



        Reanim.HumanoidRootPart.CFrame = Character.UpperTorso.CFrame



        
        if getgenv().Settings.SimpleBulletFling == false then
            Attach(Character.RightUpperLeg, Reanim['Right Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
            Attach(Character.RightLowerLeg, Reanim['Right Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
            Attach(Character.RightFoot, Reanim['Right Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        end
        Attach(Character.UpperTorso, Reanim['Torso'], Vector3.new(0, -0.03, 0), Vector3.new(0, 0, 0))
        Attach(Character.LowerTorso, Reanim['Torso'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightHand, Reanim['Right Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftHand, Reanim['Left Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftFoot, Reanim['Left Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperArm, Reanim['Right Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperArm, Reanim['Left Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerArm, Reanim['Right Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerArm, Reanim['Left Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerLeg, Reanim['Left Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperLeg, Reanim['Left Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        if getgenv().Settings.AttachHead == true then
            Attach(Character["Head"],Reanim["Head"])
        end
        game:GetService("RunService").Heartbeat:Connect(function()
            for i,v in pairs(Character:GetChildren()) do
                if v:IsA("MeshPart") then v.Velocity = getgenv().Settings.Velocity
                elseif v:IsA("Accessory") then v.Handle.Velocity = getgenv().Settings.Velocity
                    
                end
            end
        end)
        Humanoid.Died:Connect(function()
            workspace:FindFirstChildOfClass("Camera").CameraSubject = Character.Humanoid
            wait()
            getgenv().Reanimated = false
            Reanim:Destroy()
        end)
        workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
        for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
        wait(0.1)
        Character['RightLowerLeg'].Name = "Bullet"
        if getgenv().Settings.SimpleBulletFling == true then
            Attach(Character.RightUpperLeg, Reanim['Right Leg'], Vector3.new(0, -0.78, 0), Vector3.new(0, 0, 0))
        local Bullet = Character['Bullet']
        Character.RightFoot:BreakJoints()
        Bullet:BreakJoints()
        local BP = Instance.new("BodyPosition", Bullet)
        local BT = Instance.new("BodyThrust", Bullet)
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.D = 125
        BP.P = 12500
        BT.Location = Vector3.new(10,5,-10)
        BT.Force = Vector3.new(3000,3000,3000)


        local Mouse = game.Players.LocalPlayer:GetMouse()
        local MouseHolding = false
        Mouse.Button1Down:Connect(function()
            MouseHolding = true --BP.Position = Mouse.Hit.p
        end)

        Mouse.Button1Up:Connect(function()
            MouseHolding = false --BP.Position = Character.Torso.Position
        end)


        game:GetService("RunService").Heartbeat:Connect(function()
        if MouseHolding == true then
            BP.Position = Mouse.Hit.p
        elseif MouseHolding == false then
            pcall(function() BP.Position = Reanim.Torso.Position + Vector3.new(0,-25,0) end)
        end
        end)

        Bullet.Transparency = 1
        local Outline = Instance.new("SelectionBox", Bullet)

        Outline.LineThickness = 0.15
        Outline.Adornee = Bullet
    end
    end
        
end


game.StarterGui:SetCore("SendNotification", {
	Title = "Reanimated!";
	Text = "Press F9 For Credits.";
})
