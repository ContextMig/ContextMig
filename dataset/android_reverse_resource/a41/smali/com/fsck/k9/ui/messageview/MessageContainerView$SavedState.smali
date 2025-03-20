.class Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MessageContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/MessageContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attachmentViewVisible:Z

.field showingPictures:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState$1;

    invoke-direct {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->attachmentViewVisible:Z

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->showingPictures:Z

    .line 584
    return-void

    :cond_0
    move v0, v2

    .line 582
    goto :goto_0

    :cond_1
    move v1, v2

    .line 583
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fsck/k9/ui/messageview/MessageContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/fsck/k9/ui/messageview/MessageContainerView$1;

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 578
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 589
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->attachmentViewVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$SavedState;->showingPictures:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return-void

    :cond_0
    move v0, v2

    .line 589
    goto :goto_0

    :cond_1
    move v1, v2

    .line 590
    goto :goto_1
.end method
