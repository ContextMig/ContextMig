.class public Landroid/support/v4/i/bo;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/i/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/i/bq;

    invoke-direct {v0}, Landroid/support/v4/i/bq;-><init>()V

    sput-object v0, Landroid/support/v4/i/bo;->a:Landroid/support/v4/i/br;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/i/bp;

    invoke-direct {v0}, Landroid/support/v4/i/bp;-><init>()V

    sput-object v0, Landroid/support/v4/i/bo;->a:Landroid/support/v4/i/br;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bo;->a:Landroid/support/v4/i/br;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/br;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bo;->a:Landroid/support/v4/i/br;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/br;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
