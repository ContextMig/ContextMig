.class final Lcom/dropbox/sync/android/DbxSiblingInfo;
.super Ljava/lang/Object;
.source "DbxSiblingInfo.java"


# instance fields
.field final mEmail:Ljava/lang/String;

.field final mRole:Ljava/lang/String;

.field final mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "role"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mUid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mEmail:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mRole:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSiblingInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method
