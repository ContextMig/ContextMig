.class public final Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
.super Ljava/lang/Object;
.source "ListFolderMembersContinueError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;,
        Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    .line 80
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    .line 81
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    .line 94
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 96
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    if-eqz p1, :cond_0

    .line 203
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .line 205
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v3, v4, :cond_0

    .line 208
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFolderMembersContinueError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 212
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 214
    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 188
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 192
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidCursor()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

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
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
