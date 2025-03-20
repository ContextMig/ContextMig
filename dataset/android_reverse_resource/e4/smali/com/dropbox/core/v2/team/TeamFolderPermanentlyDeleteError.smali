.class public final Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
.super Ljava/lang/Object;
.source "TeamFolderPermanentlyDeleteError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;,
        Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field private statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

.field private teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->withTag(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->withTagAndAccessError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v0

    return-object v0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->withTagAndStatusError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v0

    return-object v0
.end method

.method public static teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->withTagAndTeamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    .line 72
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    .line 73
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    .line 86
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    .line 87
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .line 88
    return-object v0
.end method

.method private withTagAndStatusError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;
    .param p2, "statusErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    .line 101
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .line 103
    return-object v0
.end method

.method private withTagAndTeamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;
    .param p2, "teamSharedDropboxErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;-><init>()V

    .line 116
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    .line 118
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    if-eqz p1, :cond_0

    .line 309
    instance-of v3, p1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    .line 311
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-ne v3, v4, :cond_0

    .line 314
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderPermanentlyDeleteError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 322
    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-eq v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public getTeamSharedDropboxErrorValue()Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-eq v0, v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 291
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxErrorValue:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 297
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 298
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

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
    .line 286
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusError()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamSharedDropboxError()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
