.class final Lcom/fsck/k9/view/FoldableLinearLayout$SavedState$1;
.super Ljava/lang/Object;
.source "FoldableLinearLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
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
        "Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    new-instance v0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/fsck/k9/view/FoldableLinearLayout$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    new-array v0, p1, [Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState$1;->newArray(I)[Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    move-result-object v0

    return-object v0
.end method
