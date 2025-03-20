.class public abstract Landroid/support/v4/widget/z;
.super Landroid/support/v4/i/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:[I

.field private final g:Landroid/view/accessibility/AccessibilityManager;

.field private final h:Landroid/view/View;

.field private i:Landroid/support/v4/widget/ab;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/high16 v1, -0x80000000

    invoke-direct {p0}, Landroid/support/v4/i/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->e:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/z;->f:[I

    iput v1, p0, Landroid/support/v4/widget/z;->j:I

    iput v1, p0, Landroid/support/v4/widget/z;->k:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/z;I)Landroid/support/v4/i/a/l;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->d(I)Landroid/support/v4/i/a/l;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/bt;->f(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/z;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/z;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/z;IILandroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/z;->b(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/z;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/z;->c(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/z;->k:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/z;->k:I

    iput p1, p0, Landroid/support/v4/widget/z;->k:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/z;->a(II)Z

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/z;->a(II)Z

    goto :goto_0
.end method

.method private b(IILandroid/os/Bundle;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/z;->c(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/z;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v1, Landroid/support/v4/widget/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/z;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/support/v4/i/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/i/a/aq;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/i/a/aq;->a(Landroid/view/View;I)V

    return-object v0
.end method

.method private c(IILandroid/os/Bundle;)Z
    .locals 1

    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/z;->a(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/z;->d(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private d()Landroid/support/v4/i/a/l;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/a/l;->a(Landroid/view/View;)Landroid/support/v4/i/a/l;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/z;->a(Landroid/support/v4/i/a/l;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/z;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/i/a/l;->b(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private d(I)Landroid/support/v4/i/a/l;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->e(I)Landroid/support/v4/i/a/l;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Landroid/support/v4/widget/z;->d()Landroid/support/v4/i/a/l;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d(IILandroid/os/Bundle;)Z
    .locals 1

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->g(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->h(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private e(I)Landroid/support/v4/i/a/l;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/support/v4/i/a/l;->b()Landroid/support/v4/i/a/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/i/a/l;->d(Z)V

    sget-object v1, Landroid/support/v4/widget/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/z;->a(ILandroid/support/v4/i/a/l;)V

    invoke-virtual {v0}, Landroid/support/v4/i/a/l;->p()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/i/a/l;->q()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/i/a/l;->c()I

    move-result v1

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/i/a/l;->a(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->b(Landroid/view/View;)V

    iget v1, p0, Landroid/support/v4/widget/z;->j:I

    if-ne v1, p1, :cond_5

    invoke-virtual {v0, v3}, Landroid/support/v4/i/a/l;->b(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->a(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/z;->a(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/support/v4/i/a/l;->a(Z)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->b(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/z;->f:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->f:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/support/v4/widget/z;->f:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/z;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/z;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v4/widget/z;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/support/v4/widget/z;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->d(Landroid/graphics/Rect;)V

    return-object v0

    :cond_5
    invoke-virtual {v0, v4}, Landroid/support/v4/i/a/l;->b(Z)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/l;->a(I)V

    goto :goto_0
.end method

.method private f(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->j:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/support/v4/i/a/g;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->f(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Landroid/support/v4/widget/z;->j:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/support/v4/widget/z;->j:I

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/z;->a(II)Z

    :cond_2
    iput p1, p0, Landroid/support/v4/widget/z;->j:I

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/z;->a(II)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/z;->j:I

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/z;->a(II)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(FF)I
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/i/a/ad;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/z;->i:Landroid/support/v4/widget/ab;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/ab;-><init>(Landroid/support/v4/widget/z;Landroid/support/v4/widget/aa;)V

    iput-object v0, p0, Landroid/support/v4/widget/z;->i:Landroid/support/v4/widget/ab;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->i:Landroid/support/v4/widget/ab;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/z;->a(II)Z

    return-void
.end method

.method protected abstract a(ILandroid/support/v4/i/a/l;)V
.end method

.method protected abstract a(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public a(Landroid/support/v4/i/a/l;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
.end method

.method public a(II)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/z;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/widget/z;->h:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/i/da;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract a(IILandroid/os/Bundle;)Z
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/z;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/i/a/g;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/z;->a(FF)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/z;->b(I)V

    if-eq v2, v4, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/z;->j:I

    if-eq v2, v4, :cond_0

    invoke-direct {p0, v4}, Landroid/support/v4/widget/z;->b(I)V

    move v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/z;->a(I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->j:I

    return v0
.end method
