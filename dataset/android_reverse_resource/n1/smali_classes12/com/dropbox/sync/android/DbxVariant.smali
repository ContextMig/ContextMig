.class final Lcom/dropbox/sync/android/DbxVariant;
.super Ljava/lang/Object;
.source "DbxVariant.java"


# instance fields
.field final mName:Ljava/lang/String;

.field final mProbability:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "probability"    # D

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxVariant;->mName:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/dropbox/sync/android/DbxVariant;->mProbability:D

    .line 25
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxVariant;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProbability()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxVariant;->mProbability:D

    return-wide v0
.end method
