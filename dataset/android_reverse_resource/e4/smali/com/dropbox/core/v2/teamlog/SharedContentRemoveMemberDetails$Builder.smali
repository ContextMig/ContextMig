.class public Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentRemoveMemberDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected originalFolderName:Ljava/lang/String;

.field protected sharedFolderType:Ljava/lang/String;

.field protected sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "targetAssetIndex"    # J

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->targetAssetIndex:J

    .line 119
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;
    .locals 7

    .prologue
    .line 169
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharingPermission:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharedFolderType:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;
    .locals 0
    .param p1, "originalFolderName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;
    .locals 0
    .param p1, "sharedFolderType"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public withSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;
    .locals 0
    .param p1, "sharingPermission"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 146
    return-object p0
.end method
