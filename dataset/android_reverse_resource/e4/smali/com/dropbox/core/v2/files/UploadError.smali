.class public final Lcom/dropbox/core/v2/files/UploadError;
.super Ljava/lang/Object;
.source "UploadError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadError$Serializer;,
        Lcom/dropbox/core/v2/files/UploadError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadError;->withTag(Lcom/dropbox/core/v2/files/UploadError$Tag;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadError;->OTHER:Lcom/dropbox/core/v2/files/UploadError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadError;)Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadWriteFailed;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadError;->withTagAndPath(Lcom/dropbox/core/v2/files/UploadError$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadError$Tag;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadError$Tag;

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError;-><init>()V

    .line 75
    .local v0, "result":Lcom/dropbox/core/v2/files/UploadError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    .line 76
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/UploadError$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/UploadWriteFailed;

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError;-><init>()V

    .line 90
    .local v0, "result":Lcom/dropbox/core/v2/files/UploadError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    .line 91
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    .line 92
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/dropbox/core/v2/files/UploadError;

    .line 191
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    if-ne v3, v4, :cond_0

    .line 194
    sget-object v3, Lcom/dropbox/core/v2/files/UploadError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadWriteFailed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 198
    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadError$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadError;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadError$Tag;

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
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadError$Tag;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadError;->_tag:Lcom/dropbox/core/v2/files/UploadError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
