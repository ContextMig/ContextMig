.class final Lcom/dropbox/sync/android/DbxAccountInfo2;
.super Ljava/lang/Object;
.source "DbxAccountInfo2.java"


# instance fields
.field final mCanUsePhotos:Ljava/lang/Boolean;

.field final mDisplayName:Ljava/lang/String;

.field final mEmail:Ljava/lang/String;

.field final mOrgName:Ljava/lang/String;

.field final mQuota:J

.field final mQuotaUsedNormal:J

.field final mQuotaUsedShared:J

.field final mRawJson:Ljava/lang/String;

.field final mRole:Ljava/lang/String;

.field final mSiblingInfo:Lcom/dropbox/sync/android/DbxSiblingInfo;

.field final mUid:Ljava/lang/String;

.field final mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxSiblingInfo;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "rawJson"    # Ljava/lang/String;
    .param p2, "quotaUsedNormal"    # J
    .param p4, "quotaUsedShared"    # J
    .param p6, "quota"    # J
    .param p8, "uid"    # Ljava/lang/String;
    .param p9, "email"    # Ljava/lang/String;
    .param p10, "role"    # Ljava/lang/String;
    .param p11, "displayName"    # Ljava/lang/String;
    .param p12, "userName"    # Ljava/lang/String;
    .param p13, "orgName"    # Ljava/lang/String;
    .param p14, "siblingInfo"    # Lcom/dropbox/sync/android/DbxSiblingInfo;
    .param p15, "canUsePhotos"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mRawJson:Ljava/lang/String;

    .line 50
    iput-wide p2, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuotaUsedNormal:J

    .line 51
    iput-wide p4, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuotaUsedShared:J

    .line 52
    iput-wide p6, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuota:J

    .line 53
    iput-object p8, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mUid:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mEmail:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mRole:Ljava/lang/String;

    .line 56
    iput-object p11, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mDisplayName:Ljava/lang/String;

    .line 57
    iput-object p12, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mUserName:Ljava/lang/String;

    .line 58
    iput-object p13, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mOrgName:Ljava/lang/String;

    .line 59
    iput-object p14, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mSiblingInfo:Lcom/dropbox/sync/android/DbxSiblingInfo;

    .line 60
    iput-object p15, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mCanUsePhotos:Ljava/lang/Boolean;

    .line 61
    return-void
.end method


# virtual methods
.method public getCanUsePhotos()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mCanUsePhotos:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mOrgName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuota:J

    return-wide v0
.end method

.method public getQuotaUsedNormal()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuotaUsedNormal:J

    return-wide v0
.end method

.method public getQuotaUsedShared()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mQuotaUsedShared:J

    return-wide v0
.end method

.method public getRawJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mRawJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public getSiblingInfo()Lcom/dropbox/sync/android/DbxSiblingInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mSiblingInfo:Lcom/dropbox/sync/android/DbxSiblingInfo;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo2;->mUserName:Ljava/lang/String;

    return-object v0
.end method
