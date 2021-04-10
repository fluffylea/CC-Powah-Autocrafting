---@diagnostic disable: redefined-local
function craftBlazeRod(blazeRodSlotID)
    writeMessage("Found Blaze Rod at "..blazeRodSlotID.."\n"..
                 "Crafting with Blaze Rod")
    turtle.select(blazeRodSlotID)
    turtle.drop(1)
end

function craftDiamond(diamondSlotID)
    writeMessage("Found Diamond at "..diamondSlotID.."\n"..
                 "Crafting with Diamond")
    turtle.select(diamondSlotID)
    turtle.drop(1)
end

function craftIronGold(ironSlotID, goldSlotID)
    writeMessage("Found Iron at "..ironSlotID.."\n"..
                 " and Gold at "..goldSlotID.."\n"..
                 "Crafting with Iron and Gold")
    turtle.select(ironSlotID)
    turtle.drop(1)
    turtle.select(goldSlotID)
    turtle.drop(1)
end

function craftEmerald(emeraldSlotID)
    writeMessage("Found Emerald at "..emeraldSlotID.."\n"..
                 "Crafting with Emerald")
    turtle.select(emeraldSlotID)
    turtle.drop(1)
end

function craftNitro(starSlotID, redstoneBlockSlotID, blazingCrystalBlockSlotID)
    writeMessage("Found Nether Star at "..starSlotID.."\n"..
                 " and Redstone Block at "..redstoneBlockSlotID.."\n"..
                 " and Blazing Crystal Block at "..blazingCrystalBlockSlotID.."\n"..
                 "Crafting Nitro")
    turtle.select(starSlotID)
    turtle.drop(1)
    turtle.select(redstoneBlockSlotID)
    turtle.drop(2)
    turtle.select(blazingCrystalBlockSlotID)
    turtle.drop(1)
end

function doCrafting()
    local canCraft, blazeRodSlotID = shouldCraftBlaze()
    if canCraft then
        craftBlazeRod(blazeRodSlotID)
        return
    end
    
    local canCraft, diamondSlotID = shouldCraftDiamond()
    if canCraft then
        craftDiamond(diamondSlotID)
        return
    end

    local canCraft, emeraldSlotID = shouldCraftEmerald()
    if canCraft then
        craftEmerald(emeraldSlotID)
        return
    end

    local canCraft, starSlotID, redstoneBlockSlotID, blazingCrystalBlockSlotID = shouldCraftNitro()
    if canCraft then
        craftNitro(starSlotID, redstoneBlockSlotID, blazingCrystalBlockSlotID)
        return
    end

    local canCraft, ironSlotID, goldSlotID = shouldCraftIronGold()
    if canCraft then
        craftIronGold(ironSlotID, goldSlotID)
        return
    end
end
