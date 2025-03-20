.class public final Lcom/dropbox/core/v2/files/ThumbnailError;
.super Ljava/lang/Object;
.source "ThumbnailError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;,
        Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
    }
.end annotation


# static fields
.field public static final CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError;

.field public static final UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError;

.field public static final UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailError;->withTag(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailError;->withTag(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailError;->withTag(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/ThumbnailError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

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
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/ThumbnailError;->withTagAndPath(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    .line 78
    .local v0, "result":Lcom/dropbox/core/v2/files/ThumbnailError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 79
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/ThumbnailError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;-><init>()V

    .line 93
    .local v0, "result":Lcom/dropbox/core/v2/files/ThumbnailError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 95
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    if-eqz p1, :cond_0

    .line 211
    instance-of v3, p1, Lcom/dropbox/core/v2/files/ThumbnailError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 212
    check-cast v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    .line 213
    .local v0, "other":Lcom/dropbox/core/v2/files/ThumbnailError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    if-ne v3, v4, :cond_0

    .line 216
    sget-object v3, Lcom/dropbox/core/v2/files/ThumbnailError$1;->$SwitchMap$com$dropbox$core$v2$files$ThumbnailError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 220
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 222
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 224
    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 200
    .local v0, "hash":I
    return v0
.end method

.method public isConversionError()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

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
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedExtension()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedImage()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailError;->_tag:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
