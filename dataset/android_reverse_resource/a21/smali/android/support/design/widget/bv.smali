.class Landroid/support/design/widget/bv;
.super Landroid/support/v4/i/a;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bq;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/bq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-direct {p0}, Landroid/support/v4/i/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/bq;Landroid/support/design/widget/br;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/bv;-><init>(Landroid/support/design/widget/bq;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    const-class v0, Landroid/support/design/widget/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/i/a/l;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->b(Landroid/support/design/widget/bq;)Landroid/support/design/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/l;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/support/v4/i/a/l;->c(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->c(Landroid/support/design/widget/bq;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->c(Landroid/support/design/widget/bq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/i/a/l;->c(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->d(Landroid/support/design/widget/bq;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->d(Landroid/support/design/widget/bq;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/i/a/l;->f(Z)V

    invoke-virtual {p2, v0}, Landroid/support/v4/i/a/l;->e(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/design/widget/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/support/design/widget/bv;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->b(Landroid/support/design/widget/bq;)Landroid/support/design/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/l;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
