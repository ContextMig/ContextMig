.class public final Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
.super Ljava/lang/Object;
.source "AddPropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    }
.end annotation


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/fileproperties/LookupError;

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTagAndPath(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 119
    .local v0, "result":Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .line 120
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/fileproperties/LookupError;

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 150
    .local v0, "result":Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .line 151
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    .line 152
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    .param p2, "templateNotFoundValue"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 135
    .local v0, "result":Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .line 136
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    .line 137
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 351
    if-ne p1, p0, :cond_0

    .line 384
    :goto_0
    :pswitch_0
    return v2

    .line 354
    :cond_0
    if-nez p1, :cond_1

    move v2, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 359
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-eq v3, v4, :cond_2

    move v2, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$AddPropertiesError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 380
    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move v2, v1

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    :cond_7
    move v2, v1

    .line 384
    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 340
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 345
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 346
    return v0
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

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
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

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
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyFieldTooLarge()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyGroupAlreadyExists()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedContent()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateNotFound()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedFolder()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
