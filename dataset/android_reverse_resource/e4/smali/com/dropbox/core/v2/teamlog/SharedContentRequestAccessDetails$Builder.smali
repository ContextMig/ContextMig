.class public Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentRequestAccessDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected originalFolderName:Ljava/lang/String;

.field protected sharedContentLink:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "targetAssetIndex"    # J

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->targetAssetIndex:J

    .line 104
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->sharedContentLink:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;
    .locals 5

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->targetAssetIndex:J

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->sharedContentLink:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;
    .locals 0
    .param p1, "originalFolderName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public withSharedContentLink(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;
    .locals 0
    .param p1, "sharedContentLink"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Builder;->sharedContentLink:Ljava/lang/String;

    .line 129
    return-object p0
.end method
