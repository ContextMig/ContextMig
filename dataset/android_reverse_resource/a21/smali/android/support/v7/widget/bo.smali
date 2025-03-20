.class final Landroid/support/v7/widget/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/bn;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/bn;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/bn;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/widget/bn;
    .locals 1

    new-array v0, p1, [Landroid/support/v7/widget/bn;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bo;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/bn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bo;->a(I)[Landroid/support/v7/widget/bn;

    move-result-object v0

    return-object v0
.end method
