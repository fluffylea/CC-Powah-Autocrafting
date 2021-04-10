function compareItemName(itemName, slotID)
    if turtle.getItemDetail(slotID) ~= nil and
       turtle.getItemDetail(slotID).name == itemName then
        return true
    else
        return false
    end
end

function isBlazeRod(slotID)
    return compareItemName("minecraft:blaze_rod", slotID)
end

function isDiamond(slotID)
    return compareItemName("minecraft:diamond", slotID)
end

function isIron(slotID)
    return compareItemName("minecraft:iron_ingot", slotID)
end

function isGold(slotID)
    return compareItemName("minecraft:gold_ingot", slotID)
end

function isEmerald(slotID)
    return compareItemName("minecraft:emerald", slotID)
end

function isNetherStar(slotID)
    return compareItemName("minecraft:nether_star", slotID)
end

function isRedstoneBlock(slotID)
    return compareItemName("minecraft:redstone_block", slotID)
end

function isBlazingCrystalBlock(slotID)
    return compareItemName("powah:blazing_crystal_block", slotID)
end
