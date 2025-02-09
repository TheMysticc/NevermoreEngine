--[[
	@class ServerMain
]]

local ServerScriptService = game:GetService("ServerScriptService")

local loader = ServerScriptService:FindFirstChild("LoaderUtils", true).Parent
local packages = require(loader).bootstrapGame(ServerScriptService.deathreport)

local serviceBag = require(packages.ServiceBag).new()
serviceBag:GetService(require(packages.DeathReportService))

serviceBag:Init()
serviceBag:Start()

