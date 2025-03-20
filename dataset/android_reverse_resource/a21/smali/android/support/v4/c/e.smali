.class public Landroid/support/v4/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/c/i;

    invoke-direct {v0}, Landroid/support/v4/c/i;-><init>()V

    sput-object v0, Landroid/support/v4/c/e;->a:Landroid/support/v4/c/f;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/c/h;

    invoke-direct {v0}, Landroid/support/v4/c/h;-><init>()V

    sput-object v0, Landroid/support/v4/c/e;->a:Landroid/support/v4/c/f;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/c/g;

    invoke-direct {v0}, Landroid/support/v4/c/g;-><init>()V

    sput-object v0, Landroid/support/v4/c/e;->a:Landroid/support/v4/c/f;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/c/e;->a:Landroid/support/v4/c/f;

    invoke-interface {v0, p0}, Landroid/support/v4/c/f;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
