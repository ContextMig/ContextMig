.class public Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
.super Ljava/lang/Object;
.source "InviteeInfoWithPermissionLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;
    }
.end annotation


# instance fields
.field protected final invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

.field protected final permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V
    .locals 2
    .param p1, "invitee"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .param p2, "permissionLevel"    # Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'invitee\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 40
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'permissionLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    .line 84
    .local v0, "other":Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 85
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    :cond_5
    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public getInvitee()Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    return-object v0
.end method

.method public getPermissionLevel()Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
