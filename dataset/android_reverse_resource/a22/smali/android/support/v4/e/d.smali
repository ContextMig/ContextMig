.class Landroid/support/v4/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Landroid/support/v4/e/e;


# direct methods
.method public constructor <init>(Landroid/support/v4/e/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/e;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/e/e;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/e;

    invoke-interface {v0, p1}, Landroid/support/v4/e/e;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
