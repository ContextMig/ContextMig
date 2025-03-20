.class public interface abstract Lcom/fsck/k9/mail/store/StoreConfig;
.super Ljava/lang/Object;
.source "StoreConfig.java"


# virtual methods
.method public abstract allowRemoteSearch()Z
.end method

.method public abstract getDisplayCount()I
.end method

.method public abstract getDraftsFolderName()Ljava/lang/String;
.end method

.method public abstract getIdleRefreshMinutes()I
.end method

.method public abstract getInboxFolderName()Ljava/lang/String;
.end method

.method public abstract getMaximumAutoDownloadMessageSize()I
.end method

.method public abstract getOutboxFolderName()Ljava/lang/String;
.end method

.method public abstract getStoreUri()Ljava/lang/String;
.end method

.method public abstract getTransportUri()Ljava/lang/String;
.end method

.method public abstract isPushPollOnConnect()Z
.end method

.method public abstract isRemoteSearchFullText()Z
.end method

.method public abstract setArchiveFolderName(Ljava/lang/String;)V
.end method

.method public abstract setAutoExpandFolderName(Ljava/lang/String;)V
.end method

.method public abstract setDraftsFolderName(Ljava/lang/String;)V
.end method

.method public abstract setInboxFolderName(Ljava/lang/String;)V
.end method

.method public abstract setSentFolderName(Ljava/lang/String;)V
.end method

.method public abstract setSpamFolderName(Ljava/lang/String;)V
.end method

.method public abstract setTrashFolderName(Ljava/lang/String;)V
.end method

.method public abstract subscribedFoldersOnly()Z
.end method

.method public abstract useCompression(Lcom/fsck/k9/mail/NetworkType;)Z
.end method
