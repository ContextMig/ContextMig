.class Landroid/support/v4/i/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/i/cx;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewConfiguration;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
