.class public final Ldouzifly/list/widget/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/b/g;)V
    .locals 0

    invoke-direct {p0}, Ldouzifly/list/widget/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ldouzifly/list/widget/a;IFILjava/lang/Object;)I
    .locals 2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getDimedColor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const p2, 0x3f70a3d7    # 0.94f

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldouzifly/list/widget/a;->a(IF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(IF)I
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, p2

    float-to-int v0, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
