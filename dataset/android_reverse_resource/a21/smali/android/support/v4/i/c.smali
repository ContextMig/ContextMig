.class Landroid/support/v4/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/i/j;


# instance fields
.field final synthetic a:Landroid/support/v4/i/a;

.field final synthetic b:Landroid/support/v4/i/b;


# direct methods
.method constructor <init>(Landroid/support/v4/i/b;Landroid/support/v4/i/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/i/c;->b:Landroid/support/v4/i/b;

    iput-object p2, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    new-instance v1, Landroid/support/v4/i/a/l;

    invoke-direct {v1, p2}, Landroid/support/v4/i/a/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/i/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i/c;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
