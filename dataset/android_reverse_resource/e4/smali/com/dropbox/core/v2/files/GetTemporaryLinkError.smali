.class public final Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
.super Ljava/lang/Object;
.source "GetTemporaryLinkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;,
        Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/GetTemporaryLinkError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->withTag(Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;)Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->OTHER:Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/GetTemporaryLinkError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->withTagAndPath(Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;)Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;-><init>()V

    .line 72
    .local v0, "result":Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    .line 73
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;-><init>()V

    .line 86
    .local v0, "result":Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    .line 87
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 88
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    if-eqz p1, :cond_0

    .line 183
    instance-of v3, p1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 184
    check-cast v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    .line 185
    .local v0, "other":Lcom/dropbox/core/v2/files/GetTemporaryLinkError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    if-ne v3, v4, :cond_0

    .line 188
    sget-object v3, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$1;->$SwitchMap$com$dropbox$core$v2$files$GetTemporaryLinkError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 192
    goto :goto_0

    .line 188
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
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 168
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 172
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

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
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;->_tag:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
