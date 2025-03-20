.class public final Lcom/dropbox/core/v2/team/MembersAddLaunch;
.super Ljava/lang/Object;
.source "MembersAddLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;,
        Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

.field private asyncJobIdValue:Ljava/lang/String;

.field private completeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    if-nez p0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    .line 196
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    if-nez v0, :cond_1

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    sget-object v2, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-direct {v1, v2, p0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->withTagAndComplete(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v1

    return-object v1
.end method

.method private withTag(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    .line 58
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 59
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    .line 75
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 76
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 77
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "completeValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    .line 91
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    if-eqz p1, :cond_0

    .line 237
    instance-of v3, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 238
    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .line 239
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 242
    sget-object v3, Lcom/dropbox/core/v2/team/MembersAddLaunch$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 226
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
