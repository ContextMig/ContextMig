.class public Lcom/fsck/k9/activity/MessageReferenceHelper;
.super Ljava/lang/Object;
.source "MessageReferenceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMessageReferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .local v2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    .local v1, "messageReferenceString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 15
    .local v0, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    const-string v4, "Invalid message reference: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    .end local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v1    # "messageReferenceString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .local v2, "messageReferenceStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    .line 28
    .local v0, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "messageReferenceString":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v1    # "messageReferenceString":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
