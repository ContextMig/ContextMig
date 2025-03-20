.class final Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;
.super Ljava/lang/Object;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuotaInfo"
.end annotation


# instance fields
.field final mNormalBytes:J

.field final mSharedBytes:J

.field final mTotalBytes:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 1
    .param p1, "normalBytes"    # J
    .param p3, "sharedBytes"    # J
    .param p5, "totalBytes"    # J

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mNormalBytes:J

    .line 363
    iput-wide p3, p0, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mSharedBytes:J

    .line 364
    iput-wide p5, p0, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mTotalBytes:J

    .line 365
    return-void
.end method


# virtual methods
.method getNormalBytes()J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mNormalBytes:J

    return-wide v0
.end method

.method getSharedBytes()J
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mSharedBytes:J

    return-wide v0
.end method
