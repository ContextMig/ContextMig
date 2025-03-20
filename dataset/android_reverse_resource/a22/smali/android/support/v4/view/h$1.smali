.class final Landroid/support/v4/view/h$1;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/h;->a(Landroid/support/v4/view/i;)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/i;


# direct methods
.method constructor <init>(Landroid/support/v4/view/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1}, Landroid/support/v4/view/i;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/i;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/h$1;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/i;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
