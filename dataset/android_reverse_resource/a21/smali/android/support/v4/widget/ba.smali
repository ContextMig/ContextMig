.class public Landroid/support/v4/widget/ba;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/bd;

    invoke-direct {v0}, Landroid/support/v4/widget/bd;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ba;->a:Landroid/support/v4/widget/bf;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/bc;

    invoke-direct {v0}, Landroid/support/v4/widget/bc;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ba;->a:Landroid/support/v4/widget/bf;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/be;

    invoke-direct {v0}, Landroid/support/v4/widget/be;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ba;->a:Landroid/support/v4/widget/bf;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/widget/bb;

    invoke-direct {v0}, Landroid/support/v4/widget/bb;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ba;->a:Landroid/support/v4/widget/bf;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/ba;->a:Landroid/support/v4/widget/bf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/bf;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
