.class public Landroid/support/v4/view/bs;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bu;

    invoke-direct {v0}, Landroid/support/v4/view/bu;-><init>()V

    sput-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bv;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    sput-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bv;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bv;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bv;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bv;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bv;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
