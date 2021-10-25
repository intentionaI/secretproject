local LocalPlayer = ((game:GetService("Players").LocalPlayer) or (game.GetService(game, "Players").LocalPlayer));
local Character = LocalPlayer.Character;

local Humanoid = Character:FindFirstChildOfClass("Humanoid");
local Body = {
    "BodyProportionScale",
    "BodyWidthScale",
    "BodyHeightScale",
    "BodyDepthScale",
    "HeadScale"
}


function thing() 
    for i, v in pairs(Character:GetChildren()) do
        if v:IsA("BasePart") then
            pcall(function()
                v:FindFirstChild("OriginalSize", true):Destroy();
                for ii, vv in pairs(v:GetChildren()) do
                    if vv:IsA("Attachment") then
                        vv:FindFirstChild("OriginalPosition"):Destroy();
                    end;
                end;
            end);
        end;
    end;
end
Humanoid[Body[1]]:Destroy()
wait(1)
thing()
Humanoid[Body[2]]:Destroy()
wait(1)
thing()

Humanoid[Body[3]]:Destroy()
wait(1)
thing()

Humanoid[Body[4]]:Destroy()
wait(1)
thing()

Humanoid[Body[5]]:Destroy()
