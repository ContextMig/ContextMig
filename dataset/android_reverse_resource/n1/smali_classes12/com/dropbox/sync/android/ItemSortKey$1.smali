.class final Lcom/dropbox/sync/android/ItemSortKey$1;
.super Ljava/lang/Object;
.source "ItemSortKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/ItemSortKey;
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
        "Lcom/dropbox/sync/android/ItemSortKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dropbox/sync/android/ItemSortKey;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/dropbox/sync/android/ItemSortKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/ItemSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/ItemSortKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dropbox/sync/android/ItemSortKey;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dropbox/sync/android/ItemSortKey;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Lcom/dropbox/sync/android/ItemSortKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/ItemSortKey$1;->newArray(I)[Lcom/dropbox/sync/android/ItemSortKey;

    move-result-object v0

    return-object v0
.end method
