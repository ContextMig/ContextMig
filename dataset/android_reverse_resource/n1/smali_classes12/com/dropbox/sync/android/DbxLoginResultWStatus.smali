.class final Lcom/dropbox/sync/android/DbxLoginResultWStatus;
.super Ljava/lang/Object;
.source "DbxLoginResultWStatus.java"


# instance fields
.field final mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

.field final mLoginResult:Lcom/dropbox/sync/android/DbxLoginResult;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxHttpStatus;Lcom/dropbox/sync/android/DbxLoginResult;)V
    .locals 0
    .param p1, "httpStatus"    # Lcom/dropbox/sync/android/DbxHttpStatus;
    .param p2, "loginResult"    # Lcom/dropbox/sync/android/DbxLoginResult;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxLoginResultWStatus;->mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

    .line 20
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxLoginResultWStatus;->mLoginResult:Lcom/dropbox/sync/android/DbxLoginResult;

    .line 21
    return-void
.end method


# virtual methods
.method public getHttpStatus()Lcom/dropbox/sync/android/DbxHttpStatus;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginResultWStatus;->mHttpStatus:Lcom/dropbox/sync/android/DbxHttpStatus;

    return-object v0
.end method

.method public getLoginResult()Lcom/dropbox/sync/android/DbxLoginResult;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginResultWStatus;->mLoginResult:Lcom/dropbox/sync/android/DbxLoginResult;

    return-object v0
.end method
