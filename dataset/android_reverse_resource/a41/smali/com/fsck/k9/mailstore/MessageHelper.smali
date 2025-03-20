.class public Lcom/fsck/k9/mailstore/MessageHelper;
.super Ljava/lang/Object;
.source "MessageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEmptyPart()Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 3

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z
    .locals 10
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 18
    .local v5, "partsToCheck":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v5, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 21
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 22
    .local v2, "currentPart":Lcom/fsck/k9/mail/Part;
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 24
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    if-nez v0, :cond_1

    move v3, v7

    .line 25
    .local v3, "isBodyMissing":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 37
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v2    # "currentPart":Lcom/fsck/k9/mail/Part;
    .end local v3    # "isBodyMissing":Z
    :goto_1
    return v6

    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    .restart local v2    # "currentPart":Lcom/fsck/k9/mail/Part;
    :cond_1
    move v3, v6

    .line 24
    goto :goto_0

    .line 29
    .restart local v3    # "isBodyMissing":Z
    :cond_2
    instance-of v8, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v8, :cond_0

    move-object v4, v0

    .line 30
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 31
    .local v4, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/BodyPart;

    .line 32
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v5, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "currentPart":Lcom/fsck/k9/mail/Part;
    .end local v3    # "isBodyMissing":Z
    .end local v4    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_3
    move v6, v7

    .line 37
    goto :goto_1
.end method
