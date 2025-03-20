.class public Landroid/support/v4/i/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/i/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/i/a/h;

    invoke-direct {v0}, Landroid/support/v4/i/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/i/a/g;->a:Landroid/support/v4/i/a/j;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/i/a/i;

    invoke-direct {v0}, Landroid/support/v4/i/a/i;-><init>()V

    sput-object v0, Landroid/support/v4/i/a/g;->a:Landroid/support/v4/i/a/j;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/a/g;->a:Landroid/support/v4/i/a/j;

    invoke-interface {v0, p0}, Landroid/support/v4/i/a/j;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method
