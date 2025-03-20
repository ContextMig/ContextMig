.class final Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
.super Ljava/lang/Object;
.source "DbxLoginInfoWStatus.java"


# instance fields
.field final mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

.field final mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxHttpStatus;Lcom/dropbox/sync/android/DbxLoginInfo;)V
    .locals 0
    .param p1, "httpStatus"    # Lcom/dropbox/sync/android/DbxHttpStatus;
    .param p2, "loginInfo"    # Lcom/dropbox/sync/android/DbxLoginInfo;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxLoginInfoWStatus;->mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

    .line 20
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxLoginInfoWStatus;->mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;

    .line 21
    return-void
.end method


# virtual methods
.method public getHttpStatus()Lcom/dropbox/sync/android/DbxHttpStatus;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfoWStatus;->mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

    return-object v0
.end method

.method public getLoginInfo()Lcom/dropbox/sync/android/DbxLoginInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfoWStatus;->mLoginInfo:Lcom/dropbox/sync/android/DbxLoginInfo;

    return-object v0
.end method
