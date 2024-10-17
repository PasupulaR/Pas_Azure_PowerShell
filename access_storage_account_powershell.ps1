$storageAccountName = "newadls10162024"
$storageAccountKey = "your storage Account key"
$ctx = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey 
$containerName = "inout"

Get-AzStorageBlob -Container $containerName -Context $ctx

# List all blobs in a container
Get-AzStorageBlob -Container $containerName -Context $ctx

# Upload a blob
Set-AzStorageBlobContent -Container $containerName -Blob $blobName -File "<local-file-path>" -Context $ctx

# Download a blob
Get-AzStorageBlobContent -Container $containerName -Blob $blobName -Destination "<local-destination-path>" -Context $ctx
Queues:
Code


