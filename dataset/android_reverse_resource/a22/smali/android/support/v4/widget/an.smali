.class public Landroid/support/v4/widget/an;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/at;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/ap;

    invoke-direct {v0}, Landroid/support/v4/widget/ap;-><init>()V

    sput-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/ao;

    invoke-direct {v0}, Landroid/support/v4/widget/ao;-><init>()V

    sput-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/as;

    invoke-direct {v0}, Landroid/support/v4/widget/as;-><init>()V

    sput-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/ar;

    invoke-direct {v0}, Landroid/support/v4/widget/ar;-><init>()V

    sput-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/widget/aq;

    invoke-direct {v0}, Landroid/support/v4/widget/aq;-><init>()V

    sput-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/at;->a(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/at;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/at;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/at;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/at;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method
