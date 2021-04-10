function shouldCraftBlaze()
    for slotNum = 1, 16, 1 do
        if isBlazeRod(slotNum) then
            return true, slotNum
        end
    end
    return false, -1
end

function shouldCraftDiamond()
    for slotNum = 1, 16, 1 do
        if isDiamond(slotNum) then
            return true, slotNum
        end
    end
    return false, -1
end

function shouldCraftEmerald()
    for slotNum = 1, 16, 1 do
        if isEmerald(slotNum) then
            return true, slotNum
        end
    end
    return false, -1
end

function shouldCraftIronGold()
    local ironSlotID = -1
    local goldSlotID = -1
    for slotNum = 1, 16, 1 do
        if isIron(slotNum) then
            ironSlotID = slotNum
        elseif isGold(slotNum) then
            goldSlotID = slotNum
        end
    end
    
    local canCraft = ironSlotID > 0 and goldSlotID > 0
    return canCraft, ironSlotID, goldSlotID
end

function shouldCraftNitro()
    local starSlotID = -1
    local redstoneBlockSlotID = -1
    local blazingCrystalBlockSlotID = -1

    for slotNum = 1, 16, 1 do
        if isNetherStar(slotNum) then
            starSlotID = slotNum
        elseif isBlazingCrystalBlock(slotNum) then
            blazingCrystalBlockSlotID = slotNum
        elseif isRedstoneBlock(slotNum) and
               turtle.getItemDetail(slotNum).count >= 2 then
            redstoneBlockSlotID = slotNum
        end
    end

    local canCraft = starSlotID > 0 and blazingCrystalBlockSlotID > 0 and redstoneBlockSlotID > 0
    return canCraft, starSlotID, redstoneBlockSlotID, blazingCrystalBlockSlotID
end
