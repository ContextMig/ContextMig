.class public final Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
.super Ljava/lang/Object;
.source "PropertiesSearchMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

.field private fieldNameValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->withTag(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    return-object v0
.end method

.method public static fieldName(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

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
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->FIELD_NAME:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->withTagAndFieldName(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;-><init>()V

    .line 75
    .local v0, "result":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    .line 76
    return-object v0
.end method

.method private withTagAndFieldName(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;
    .param p2, "fieldNameValue"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;-><init>()V

    .line 90
    .local v0, "result":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    .line 91
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

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
    instance-of v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    .line 191
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    if-ne v3, v4, :cond_0

    .line 194
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$PropertiesSearchMode$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getFieldNameValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->FIELD_NAME:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FIELD_NAME, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->fieldNameValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "hash":I
    return v0
.end method

.method public isFieldName()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->FIELD_NAME:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

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
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;->_tag:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
