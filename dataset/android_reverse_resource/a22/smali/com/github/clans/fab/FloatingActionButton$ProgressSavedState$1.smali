.class final Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    .locals 2

    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;Lcom/github/clans/fab/FloatingActionButton$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    .locals 1

    new-array v0, p1, [Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;->a(Landroid/os/Parcel;)Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;->a(I)[Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    move-result-object v0

    return-object v0
.end method
