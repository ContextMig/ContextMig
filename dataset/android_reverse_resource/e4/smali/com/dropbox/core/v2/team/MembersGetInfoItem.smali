.class public final Lcom/dropbox/core/v2/team/MembersGetInfoItem;
.super Ljava/lang/Object;
.source "MembersGetInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;,
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

.field private idNotFoundValue:Ljava/lang/String;

.field private memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->withTagAndIdNotFound(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public static memberInfo(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->withTagAndMemberInfo(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .prologue
    .line 66
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    .line 67
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .line 68
    return-object v0
.end method

.method private withTagAndIdNotFound(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    .param p2, "idNotFoundValue"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    .line 88
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .line 89
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method private withTagAndMemberInfo(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    .param p2, "memberInfoValue"    # Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    .line 107
    .local v0, "result":Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 109
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 262
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 247
    instance-of v3, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    .line 249
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v3, v4, :cond_0

    .line 252
    sget-object v3, Lcom/dropbox/core/v2/team/MembersGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$MembersGetInfoItem$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberInfoValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBER_INFO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->memberInfoValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "hash":I
    return v0
.end method

.method public isIdNotFound()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberInfo()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
