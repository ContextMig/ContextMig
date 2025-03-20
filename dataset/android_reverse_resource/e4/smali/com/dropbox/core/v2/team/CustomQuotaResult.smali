.class public final Lcom/dropbox/core/v2/team/CustomQuotaResult;
.super Ljava/lang/Object;
.source "CustomQuotaResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;,
        Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/CustomQuotaResult;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

.field private invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field private successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->withTag(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/CustomQuotaResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/CustomQuotaResult;)Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/CustomQuotaResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/CustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/CustomQuotaResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public static invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->withTagAndInvalidUser(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/team/UserCustomQuotaResult;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;->withTagAndSuccess(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserCustomQuotaResult;)Lcom/dropbox/core/v2/team/CustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    .line 83
    .local v0, "result":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndInvalidUser(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;
    .param p2, "invalidUserValue"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    .line 115
    .local v0, "result":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 117
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserCustomQuotaResult;)Lcom/dropbox/core/v2/team/CustomQuotaResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;
    .param p2, "successValue"    # Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaResult;-><init>()V

    .line 98
    .local v0, "result":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 258
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    if-eqz p1, :cond_0

    .line 264
    instance-of v3, p1, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 265
    check-cast v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;

    .line 266
    .local v0, "other":Lcom/dropbox/core/v2/team/CustomQuotaResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-ne v3, v4, :cond_0

    .line 269
    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult$1;->$SwitchMap$com$dropbox$core$v2$team$CustomQuotaResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 275
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInvalidUserValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INVALID_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 248
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    .local v0, "hash":I
    return v0
.end method

.method public isInvalidUser()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/CustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/CustomQuotaResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
