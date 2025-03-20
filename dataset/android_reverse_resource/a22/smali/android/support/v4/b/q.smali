.class public Landroid/support/v4/b/q;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/support/v4/b/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/b/p;->a:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method
