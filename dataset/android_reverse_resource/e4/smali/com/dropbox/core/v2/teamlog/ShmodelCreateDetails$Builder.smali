.class public Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;
.super Ljava/lang/Object;
.source "ShmodelCreateDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected sharingPermission:Ljava/lang/String;

.field protected tokenKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->tokenKey:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->sharingPermission:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->tokenKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;
    .locals 0
    .param p1, "sharingPermission"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->sharingPermission:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withTokenKey(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;
    .locals 0
    .param p1, "tokenKey"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Builder;->tokenKey:Ljava/lang/String;

    .line 113
    return-object p0
.end method
