.class public abstract Lcom/fsck/k9/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/Folder$FolderType;,
        Lcom/fsck/k9/mail/Folder$FolderClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fsck/k9/mail/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final OPEN_MODE_RO:I = 0x1

.field public static final OPEN_MODE_RW:I


# instance fields
.field private lastChecked:J

.field private lastPush:J

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    const-wide/16 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    .line 14
    iput-wide v2, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    .line 15
    iput-wide v2, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    return-void
.end method


# virtual methods
.method public abstract appendMessages(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract areMoreMessagesAvailable(ILjava/util/Date;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 1
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .param p2, "displayLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message;

    .line 104
    .local v0, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 105
    .local v1, "myMessage":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/Message;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0    # "message":Lcom/fsck/k9/mail/Message;
    .end local v1    # "myMessage":Lcom/fsck/k9/mail/Message;
    :cond_0
    return-void
.end method

.method public abstract delete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public expunge()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    return-void
.end method

.method public abstract fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/fsck/k9/mail/FetchProfile;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/BodyFactory;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "bodyFactory"    # Lcom/fsck/k9/mail/BodyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Lcom/fsck/k9/mail/Part;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/BodyFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/Message;>;"
    const-string v0, "fetchPart() not implemented."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public abstract getFlaggedMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getLastChecked()J
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    return-wide v0
.end method

.method public getLastPush()J
    .locals 2

    .prologue
    .line 173
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    return-wide v0
.end method

.method public getLastUpdate()J
    .locals 4

    .prologue
    .line 181
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastPush()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMode()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "oldPushState"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 148
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iget-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public isFlagSupported(Lcom/fsck/k9/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 152
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isInTopGroup()Z
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOpen()Z
.end method

.method public moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 1
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    .local p2, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    .local p3, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "K-9 does not support searches on this folder type"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFlags(Ljava/util/Set;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setLastChecked(J)V
    .locals 1
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    .line 170
    return-void
.end method

.method public setLastPush(J)V
    .locals 1
    .param p1, "lastCheckedDisplay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    .line 178
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    iput-object p1, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public supportsFetchingFlags()Z
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/fsck/k9/mail/Folder;, "Lcom/fsck/k9/mail/Folder<TT;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
