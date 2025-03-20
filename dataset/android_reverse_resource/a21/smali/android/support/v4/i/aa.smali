.class public Landroid/support/v4/i/aa;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/i/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/i/ae;

    invoke-direct {v0}, Landroid/support/v4/i/ae;-><init>()V

    sput-object v0, Landroid/support/v4/i/aa;->a:Landroid/support/v4/i/ab;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/i/ad;

    invoke-direct {v0}, Landroid/support/v4/i/ad;-><init>()V

    sput-object v0, Landroid/support/v4/i/aa;->a:Landroid/support/v4/i/ab;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/i/ac;

    invoke-direct {v0}, Landroid/support/v4/i/ac;-><init>()V

    sput-object v0, Landroid/support/v4/i/aa;->a:Landroid/support/v4/i/ab;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/i/ak;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/aa;->a:Landroid/support/v4/i/ab;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/ab;->a(Landroid/view/LayoutInflater;Landroid/support/v4/i/ak;)V

    return-void
.end method
