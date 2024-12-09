function balanceOf(address account, uint256 id) public view returns (uint256) {
        return balances[account][id];
    }

function balanceOfBatch(address[] memory accounts, uint256[] memory ids) public view returns (uint256[] memory) {
        uint256[] memory balances_ = new uint256[](accounts.length);
        for (uint i = 0; i < accounts.length; i++) {
            balances_[i] = balanceOf(accounts[i], ids[i]);
        }
        return balances_;
    } 