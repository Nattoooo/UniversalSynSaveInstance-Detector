# UniversalSynSaveInstance Detector v1.2.5
Detects and crashes any client attempting to use UniversalSynSaveInstance (the engine between virtually all ROBLOX game stealing software)

Monitors for UGCValidationService, which has no in-game application but is used by UniversalSynSaveInstance to scan for object properties before stealing them. When detected, it instantly crashes the client via a huge RAM spike, since a kick would allow the client to dump the game memory and receive network data.

Runs on a 1.5 second polling loop and exits safely in Studio. Works best client-side in ReplicatedFirst
