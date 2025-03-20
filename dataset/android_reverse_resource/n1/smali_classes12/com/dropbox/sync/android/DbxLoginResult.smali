.class final Lcom/dropbox/sync/android/DbxLoginResult;
.super Ljava/lang/Object;
.source "DbxLoginResult.java"


# instance fields
.field final mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;

.field final mRequiresTwofactor:Z

.field final mTwofactorInfo:Lcom/dropbox/sync/android/DbxTwofactorInfo;


# direct methods
.method public constructor <init>(ZLcom/dropbox/sync/android/DbxLoginInfo;Lcom/dropbox/sync/android/DbxTwofactorInfo;)V
    .locals 0
    .param p1, "requiresTwofactor"    # Z
    .param p2, "loginInfo"    # Lcom/dropbox/sync/android/DbxLoginInfo;
    .param p3, "twofactorInfo"    # Lcom/dropbox/sync/android/DbxTwofactorInfo;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mRequiresTwofactor:Z

    .line 23
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;

    .line 24
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mTwofactorInfo:Lcom/dropbox/sync/android/DbxTwofactorInfo;

    .line 25
    return-void
.end method


# virtual methods
.method public getLoginInfo()Lcom/dropbox/sync/android/DbxLoginInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;

    return-object v0
.end method

.method public getRequiresTwofactor()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mRequiresTwofactor:Z

    return v0
.end method

.method public getTwofactorInfo()Lcom/dropbox/sync/android/DbxTwofactorInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginResult;->mTwofactorInfo:Lcom/dropbox/sync/android/DbxTwofactorInfo;

    return-object v0
.end method
