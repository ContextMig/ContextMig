.class public Landroid/support/v4/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/support/v4/e/e;)Landroid/os/Parcelable$Creator;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/e/g;->a(Landroid/support/v4/e/e;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/e/d;

    invoke-direct {v0, p0}, Landroid/support/v4/e/d;-><init>(Landroid/support/v4/e/e;)V

    goto :goto_0
.end method
