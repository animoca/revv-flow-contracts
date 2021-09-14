import REVVVaultAccess from 0xREVVVaultAccess

transaction {
    let vaultGuard: &REVVVaultAccess.VaultGuard
    prepare(acct:AuthAccount){
        self.vaultGuard = acct.borrow<&REVVVaultAccess.VaultGuard>(from: /storage/revvVaultGuard_01)!  
    }

    execute {
        self.vaultGuard.total = 1.0 //should fail
    }

}