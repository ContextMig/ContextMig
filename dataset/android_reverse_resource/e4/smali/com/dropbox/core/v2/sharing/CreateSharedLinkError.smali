.class public final Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
.super Ljava/lang/Object;
.source "CreateSharedLinkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;,
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

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
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->withTagAndPath(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    .line 73
    .local v0, "result":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    .line 74
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    .line 87
    .local v0, "result":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    .line 88
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

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

    .line 178
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    .line 184
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    .line 186
    .local v0, "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v3, v4, :cond_0

    .line 189
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 193
    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-eq v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 173
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
