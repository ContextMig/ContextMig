.class final Lcom/dropbox/sync/android/DbxTwofactorInfo;
.super Ljava/lang/Object;
.source "DbxTwofactorInfo.java"


# instance fields
.field final mCheckpointToken:Ljava/lang/String;

.field final mCheckpointTokenExpirationUtcMs:J

.field final mDeliveryMode:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

.field final mUserVisibleTwofactorDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;JLjava/lang/String;)V
    .locals 1
    .param p1, "checkpointToken"    # Ljava/lang/String;
    .param p2, "deliveryMode"    # Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;
    .param p3, "checkpointTokenExpirationUtcMs"    # J
    .param p5, "userVisibleTwofactorDesc"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mCheckpointToken:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mDeliveryMode:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    .line 27
    iput-wide p3, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mCheckpointTokenExpirationUtcMs:J

    .line 28
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mUserVisibleTwofactorDesc:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCheckpointToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mCheckpointToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckpointTokenExpirationUtcMs()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mCheckpointTokenExpirationUtcMs:J

    return-wide v0
.end method

.method public getDeliveryMode()Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mDeliveryMode:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    return-object v0
.end method

.method public getUserVisibleTwofactorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTwofactorInfo;->mUserVisibleTwofactorDesc:Ljava/lang/String;

    return-object v0
.end method
