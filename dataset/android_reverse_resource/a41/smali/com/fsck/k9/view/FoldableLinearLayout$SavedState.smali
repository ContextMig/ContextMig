.class Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FoldableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/FoldableLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFolded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState$1;

    invoke-direct {v0}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->mFolded:Z

    .line 145
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fsck/k9/view/FoldableLinearLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/fsck/k9/view/FoldableLinearLayout$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lcom/fsck/k9/view/FoldableLinearLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Lcom/fsck/k9/view/FoldableLinearLayout$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->mFolded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->mFolded:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    iget-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->mFolded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
