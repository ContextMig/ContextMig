.class public final Lcom/dropbox/core/v2/async/LaunchResultBase;
.super Ljava/lang/Object;
.source "LaunchResultBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;,
        Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

.field private asyncJobIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/async/LaunchResultBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/async/LaunchResultBase;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchResultBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchResultBase;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/async/LaunchResultBase;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchResultBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchResultBase;-><init>()V

    .line 65
    .local v0, "result":Lcom/dropbox/core/v2/async/LaunchResultBase;
    iput-object p1, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    .line 66
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchResultBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchResultBase;-><init>()V

    .line 87
    .local v0, "result":Lcom/dropbox/core/v2/async/LaunchResultBase;
    iput-object p1, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    .line 88
    iput-object p2, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    .line 89
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    if-eqz p1, :cond_0

    .line 179
    instance-of v3, p1, Lcom/dropbox/core/v2/async/LaunchResultBase;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 180
    check-cast v0, Lcom/dropbox/core/v2/async/LaunchResultBase;

    .line 181
    .local v0, "other":Lcom/dropbox/core/v2/async/LaunchResultBase;
    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    if-ne v3, v4, :cond_0

    .line 184
    sget-object v3, Lcom/dropbox/core/v2/async/LaunchResultBase$1;->$SwitchMap$com$dropbox$core$v2$async$LaunchResultBase$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "hash":I
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchResultBase;->_tag:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
