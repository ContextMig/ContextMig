.class final Lcom/fsck/k9/search/ConditionsTreeNode$1;
.super Ljava/lang/Object;
.source "ConditionsTreeNode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/ConditionsTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/fsck/k9/search/ConditionsTreeNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 409
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Landroid/os/Parcel;Lcom/fsck/k9/search/ConditionsTreeNode$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 414
    new-array v0, p1, [Lcom/fsck/k9/search/ConditionsTreeNode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode$1;->newArray(I)[Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    return-object v0
.end method
