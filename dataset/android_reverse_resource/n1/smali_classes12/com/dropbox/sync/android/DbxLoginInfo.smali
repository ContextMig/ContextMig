.class final Lcom/dropbox/sync/android/DbxLoginInfo;
.super Ljava/lang/Object;
.source "DbxLoginInfo.java"


# instance fields
.field final mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo2;

.field final mTokenKey:Ljava/lang/String;

.field final mTokenSecret:Ljava/lang/String;

.field final mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxAccountInfo2;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "tokenKey"    # Ljava/lang/String;
    .param p3, "tokenSecret"    # Ljava/lang/String;
    .param p4, "accountInfo"    # Lcom/dropbox/sync/android/DbxAccountInfo2;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mUid:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mTokenKey:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mTokenSecret:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo2;

    .line 29
    return-void
.end method


# virtual methods
.method public getAccountInfo()Lcom/dropbox/sync/android/DbxAccountInfo2;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo2;

    return-object v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mTokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxLoginInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method
