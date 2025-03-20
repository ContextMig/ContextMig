.class Lcom/dropbox/sync/android/ItemSortKey;
.super Lcom/dropbox/sync/android/ItemSortKeyBase;
.source "ItemSortKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/sync/android/ItemSortKeyBase",
        "<",
        "Lcom/dropbox/sync/android/ItemSortKey;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dropbox/sync/android/ItemSortKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/dropbox/sync/android/ItemSortKey$1;

    invoke-direct {v0}, Lcom/dropbox/sync/android/ItemSortKey$1;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/ItemSortKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupSortKey"    # Ljava/lang/String;
    .param p2, "photoSortKey"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/ItemSortKeyBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method private sortKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 21
    .end local p1    # "sortKey":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 15
    .restart local p1    # "sortKey":Ljava/lang/String;
    :sswitch_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "~~~~~~~~MAX_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 17
    :pswitch_0
    const-string p1, "MIN#"

    goto :goto_1

    .line 19
    :pswitch_1
    const-string p1, "MAX#"

    goto :goto_1

    .line 15
    :sswitch_data_0
    .sparse-switch
        -0x7084463c -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    const-string v0, "(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/sync/android/ItemSortKey;->mGroupSortKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dropbox/sync/android/ItemSortKey;->sortKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/sync/android/ItemSortKey;->mPhotoSortKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dropbox/sync/android/ItemSortKey;->sortKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/sync/android/ItemSortKey;->mGroupSortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/dropbox/sync/android/ItemSortKey;->mPhotoSortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
