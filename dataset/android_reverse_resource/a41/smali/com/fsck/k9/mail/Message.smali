.class public abstract Lcom/fsck/k9/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/fsck/k9/mail/Part;
.implements Lcom/fsck/k9/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/Message$RecipientType;
    }
.end annotation


# instance fields
.field private mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/fsck/k9/mail/Folder;

.field private mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/fsck/k9/mail/Flag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public calculateSize()J
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 202
    :try_start_0
    new-instance v2, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    invoke-direct {v2}, Lcom/fsck/k9/mail/filter/CountingOutputStream;-><init>()V

    .line 203
    .local v2, "out":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    new-instance v1, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v1, "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 205
    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 206
    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/CountingOutputStream;->getCount()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 212
    .end local v1    # "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .end local v2    # "out":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    :goto_0
    return-wide v4

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Failed to calculate a message size"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Failed to calculate a message size"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract clone()Lcom/fsck/k9/mail/Message;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->clone()Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "destination"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    iput-object v0, p1, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    iput-object v0, p1, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 223
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    iput-object v0, p1, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 226
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p1, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    .line 227
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 151
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/fsck/k9/mail/Message;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/fsck/k9/mail/Message;

    .line 51
    .local v0, "other":Lcom/fsck/k9/mail/Message;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract getBody()Lcom/fsck/k9/mail/Body;
.end method

.method public getFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getHeaderNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
.end method

.method public abstract getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getReferences()[Ljava/lang/String;
.end method

.method public abstract getReplyTo()[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getSender()[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getSentDate()Ljava/util/Date;
.end method

.method public abstract getSize()J
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasAttachments()Z
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 57
    const/16 v0, 0x1f

    .line 59
    .local v0, "MULTIPLIER":I
    const/4 v1, 0x1

    .line 60
    .local v1, "result":I
    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 61
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 62
    return v1

    .line 60
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSet(Lcom/fsck/k9/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public olderThan(Ljava/util/Date;)Z
    .locals 2
    .param p1, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 36
    .local v0, "myDate":Ljava/util/Date;
    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v0

    .line 39
    :cond_2
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    goto :goto_0
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
.end method

.method public abstract setCharset(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags(Ljava/util/Set;Z)V
    .locals 3
    .param p2, "set"    # Z
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

    .prologue
    .line 182
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Flag;

    .line 183
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p0, v0, p2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 185
    .end local v0    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_0
    return-void
.end method

.method public abstract setFrom(Lcom/fsck/k9/mail/Address;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInReplyTo(Ljava/lang/String;)V
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "internalDate"    # Ljava/util/Date;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 87
    return-void
.end method

.method public setRecipient(Lcom/fsck/k9/mail/Message$RecipientType;Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "address"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 101
    return-void
.end method

.method public abstract setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
.end method

.method public abstract setReferences(Ljava/lang/String;)V
.end method

.method public abstract setReplyTo([Lcom/fsck/k9/mail/Address;)V
.end method

.method public abstract setSender(Lcom/fsck/k9/mail/Address;)V
.end method

.method public abstract setSentDate(Ljava/util/Date;Z)V
.end method

.method public abstract setSubject(Ljava/lang/String;)V
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    .line 71
    return-void
.end method
