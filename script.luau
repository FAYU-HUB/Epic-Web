-- update realm! 
-- Made By CrazyRc7
-- Update By 9x7x9x4x6

 local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
	RequestCommand:InvokeServer(";btools me")
	wait(0.4)
	RequestCommand:InvokeServer(";punish all")
	wait(0.1)
	local player = game.Players.LocalPlayer
	local char = player.Character
	local backpack = player.Backpack

	local function getf3x()
		for _, v in ipairs(backpack:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end
		for _, v in ipairs(char:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end

		return nil
	end
	local f3x = getf3x()
	if not f3x then
		warn("you dont have f3x skid")
	end
	local syncapi = f3x.SyncAPI
	local serverendpoint = syncapi.ServerEndpoint

	local function delete(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function deleteall()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("UnionOperation") then
				spawn(function()
					delete(v)
				end)
			end
		end
	end

	deleteall()

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
	RequestCommand:InvokeServer(";fogcolor black ;time")
	local player = game.Players.LocalPlayer
	local char = player.Character
	local backpack = player.Backpack

	local function getf3x()
		for _, v in ipairs(backpack:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end
		for _, v in ipairs(char:GetChildren()) do
			if v:FindFirstChild("SyncAPI") then
				return v
			end
		end

		return nil
	end
	local f3x = getf3x()
	if not f3x then
		warn("kamu tidak memiliki f3x ")
	end
	local syncapi = f3x.SyncAPI
	local serverendpoint = syncapi.ServerEndpoint

	local function resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmaterial(part,mate,trans)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Material"] = mate
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end
	local function transparency(part,trans)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = trans
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function color(part, color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshid(part, id)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..id
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function makemesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshsize(part, vectora)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = vectora
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function syncmeshtexture(part, id)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] =	"rbxassetid://"..id
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function name(part, stringa)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringa
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function lock(part, boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function setcollision(part, booleana)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = booleana
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function setanchor(part, boolean)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

	local function createdecal(part, side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end
	local function setdecal(part, asset, side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		serverendpoint:InvokeServer(unpack(args))
	end

local function SetVertexColor(part, vec)
      local args = {
         [1] = "SyncMesh",
         [2] = {
           [1] = {
             ["Part"] = part, 
             ["VertexColor"] = vec
            }
           }
          }
    	serverendpoint:InvokeServer(unpack(args))
end

	local function makerealmbase()
		local position = CFrame.new(0, 5, 0)
		local base = serverendpoint:InvokeServer("CreatePart", "Normal", position, workspace)
		resize(base, Vector3.new(512, 16, 512), position)
		syncmaterial(base, Enum.Material.Concrete)
		color(base, Color3.new(0.513725, 0.513725, 0.513725))
		name(base, "Baseplate")
		lock(base, true)

		local spawnpos = CFrame.new(34.5, 8.1, -26)
		local spawna = serverendpoint:InvokeServer("CreatePart", "Spawn", spawnpos, workspace)
		resize(spawna, Vector3.new(20, 10, 20), spawnpos)
		name(spawna, "SpawnPart")
		lock(spawna, true)
		transparency(spawna, 1)

		local pos = CFrame.new(74.143, 24, -25.232)

		local rules = serverendpoint:InvokeServer("CreatePart", "Normal", pos, workspace)

		setcollision(rules, false)
		createdecal(rules, Enum.NormalId.Left)
		setdecal(rules, "122639036587569", Enum.NormalId.Left)
		color(rules, Color3.new(1, 1, 1))
		resize(rules, Vector3.new(4, 23, 37), pos)
		name(rules, "PartDecal")


		local pos = CFrame.new(1.143, 24, -25.232)

		local bad = serverendpoint:InvokeServer("CreatePart", "Normal", pos, workspace)

		setcollision(bad, false)
		createdecal(bad, Enum.NormalId.Right)
		setdecal(bad, "122639036587569", Enum.NormalId.Right)
		resize(bad, Vector3.new(4, 23, 37), pos)
		name(bad, "PartDecal")
		color(bad, Color3.new(1, 1, 1))

	end

	local function sky()
		local position = CFrame.new(0, 5, 0)
		local sky = serverendpoint:InvokeServer("CreatePart", "Normal", position, workspace)

		makemesh(sky)
		syncmeshid(sky, "111891702759441")
		syncmeshtexture(sky, "122639036587569")
		syncmeshsize(sky, Vector3.new(99999, 99999, 99999))
		lock(sky, true)
		name(sky, "Skybox")
		setcollision(sky, false)
    SetVertexColor(sky, Vector3.new(3,3,3)) 
	end
	local function unanchorall()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("UnionOperation") then
				spawn(function()
					setanchor(v, false)
				end)
			end
		end
	end

	local function realm()
		sky()
		makerealmbase()
	end

	realm()

local ModelPosition = CFrame.new(50, 13, -110)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
local char = player.Character
local backpack = player.Backpack

local function getf3x()
	for _, v in ipairs(backpack:GetChildren()) do
		if v:FindFirstChild("SyncAPI") then
			return v
		end
	end
	for _, v in ipairs(char:GetChildren()) do
		if v:FindFirstChild("SyncAPI") then
			return v
		end
	end
	return nil
end

local f3x = getf3x()
if not f3x then
	warn("you dont have f3x skid")
end
local syncapi = f3x.SyncAPI
local serverendpoint = syncapi.ServerEndpoint

local function _(args)
	serverendpoint:InvokeServer(unpack(args))
end

local function huse()
	local model_id = "8959904556"
	local imported_model = game:GetObjects("rbxassetid://" .. model_id)[1]
	imported_model.Parent = game.Lighting

	local primary = imported_model:IsA("Model") and imported_model.PrimaryPart or nil
	if not primary and imported_model:IsA("Model") then
		primary = imported_model:FindFirstChildWhichIsA("BasePart")
	end

	local originCF = primary and primary.CFrame or CFrame.new()

	for _, v in next, imported_model:GetDescendants() do
		pcall(function()
			v.Anchored = true
		end)
	end

	local plr = game:GetService("Players").LocalPlayer
	local f3x_name = "Building Tools"
	local destination = workspace

	coroutine.wrap(function()
		task.wait(10)
		imported_model.Parent = nil
	end)()

	function f3xbuildpart(part_type, targetCF, dest, size, transparency, colour, material, collision, fake_part)
		local allPartsData = {}

		table.insert(allPartsData, {
			Type = fake_part:IsA("WedgePart") and "Wedge" or fake_part:IsA("Seat") and "Seat" or fake_part:IsA("VehicleSeat") and "VehicleSeat" or fake_part:IsA("TrussPart") and "Truss" or fake_part:IsA("SpawnLocation") and "Spawn" or
				fake_part.Shape == Enum.PartType.Block and "Normal" or
				fake_part.Shape == Enum.PartType.Ball and "Ball" or
				fake_part.Shape == Enum.PartType.Cylinder and "Cylinder",
			CFrame = targetCF,
			Size = fake_part.Size,
			Transparency = fake_part.Transparency,
			Color = fake_part.Color,
			Material = fake_part.Material,
			Collision = fake_part.CanCollide,
			Ref = fake_part,
		})

		local sync = plr.Backpack:FindFirstChild(f3x_name).SyncAPI.ServerEndpoint
		local partMap = {}

		for _, data in ipairs(allPartsData) do
			local created = sync:InvokeServer("CreatePart", data.Type, data.CFrame, dest)
			partMap[data.Ref] = created
		end

		for _, data in ipairs(allPartsData) do
			local created = partMap[data.Ref]
			if not created then continue end

			task.spawn(function()
				if data.Size ~= Vector3.new(4,1,2) then
					sync:InvokeServer("SyncResize", { { Part = created, CFrame = created.CFrame, Size = data.Size } })
				end

				if data.Transparency ~= 0 then
					sync:InvokeServer("SyncMaterial", { { Part = created, Transparency = data.Transparency } })
				end

				if data.Color ~= BrickColor.new("Medium stone grey").Color then
					sync:InvokeServer("SyncColor", { { Part = created, Color = data.Color, UnionColoring = true } })
				end

				if data.Material ~= Enum.Material.Plastic then
					sync:InvokeServer("SyncMaterial", { { Part = created, Material = data.Material } })
				end

				if data.Collision ~= true then
					sync:InvokeServer("SyncCollision", { { Part = created, CanCollide = data.Collision } })
				end

				local ref = data.Ref
				local texture = ref:FindFirstChildOfClass("Texture")
				if texture then
					sync:InvokeServer("CreateTextures", { { Part = created, Face = texture.Face, TextureType = "Texture" } })
					sync:InvokeServer("SyncTexture", { { Part = created, Face = texture.Face, TextureType = "Texture", StudsPerTileU = texture.StudsPerTileU, StudsPerTileV = texture.StudsPerTileV, Texture = texture.Texture, Transparency = texture.Transparency } })
				end

				local decal = ref:FindFirstChildOfClass("Decal")
				if decal then
					sync:InvokeServer("CreateTextures", { { Part = created, Face = decal.Face, TextureType = "Decal" } })
					sync:InvokeServer("SyncTexture", { { Part = created, Face = decal.Face, TextureType = "Decal", Texture = decal.Texture, Transparency = decal.Transparency } })
				end

				local mesh = ref:FindFirstChildOfClass("SpecialMesh")
				if mesh then
					sync:InvokeServer("CreateMeshes", { { Part = created } })
					sync:InvokeServer("SyncMesh", { { Part = created, MeshId = mesh.MeshId, TextureId = mesh.TextureId, Scale = mesh.Scale } })
				end
			end)
		end
	end

	for _, part in next, imported_model:GetDescendants() do
		if part:IsA("BasePart") then
			local relativeCF = originCF:ToObjectSpace(part.CFrame)
			local finalCF = ModelPosition:ToWorldSpace(relativeCF)

			task.spawn(function()
				f3xbuildpart(nil, finalCF, destination, part.Size, part.Transparency, part.Color, part.Material, part.CanCollide, part)
			end)
		end
	end

	print("Done!")
end

huse()

wait(1)


	RequestCommand:InvokeServer(";res all")
	wait(0.3)
	RequestCommand:InvokeServer(";r6 all")
	RequestCommand:InvokeServer(";time 12")
	wait(0.7)
	RequestCommand:InvokeServer(";music 119793287768463 ;pitch 0.1 ;volume inf")
 	RequestCommand:InvokeServer(";hideGuis Others ;mute Others")
	RequestCommand:InvokeServer(";ServerHint Welcome To 9x7x9x4x6 Realm")
