.class final Landroid/support/v4/view/a/aj$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/a/aj;->a(Landroid/support/v4/view/a/ak;)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/ak;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/ak;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/a/aj$1;->a:Landroid/support/v4/view/a/ak;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/aj$1;->a:Landroid/support/v4/view/a/ak;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/ak;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/aj$1;->a:Landroid/support/v4/view/a/ak;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/ak;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/aj$1;->a:Landroid/support/v4/view/a/ak;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/ak;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
