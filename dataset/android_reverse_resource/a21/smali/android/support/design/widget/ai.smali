.class abstract Landroid/support/design/widget/ai;
.super Ljava/lang/Object;


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[I


# instance fields
.field final e:Landroid/view/View;

.field final f:Landroid/support/design/widget/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/ai;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/ai;->c:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/ai;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/aq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/ai;->e:Landroid/view/View;

    iput-object p2, p0, Landroid/support/design/widget/ai;->f:Landroid/support/design/widget/aq;

    return-void
.end method


# virtual methods
.method a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/ai;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/ai;->b()Landroid/support/design/widget/j;

    move-result-object v1

    sget v2, Landroid/support/design/d;->design_fab_stroke_top_outer_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/design/d;->design_fab_stroke_top_inner_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/design/d;->design_fab_stroke_end_inner_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Landroid/support/design/d;->design_fab_stroke_end_outer_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/j;->a(IIII)V

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/j;->a(F)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/j;->a(I)V

    return-object v1
.end method

.method abstract a()V
.end method

.method abstract a(F)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract a(Landroid/support/design/widget/aj;)V
.end method

.method abstract a([I)V
.end method

.method b()Landroid/support/design/widget/j;
    .locals 1

    new-instance v0, Landroid/support/design/widget/j;

    invoke-direct {v0}, Landroid/support/design/widget/j;-><init>()V

    return-object v0
.end method

.method abstract b(F)V
.end method

.method abstract b(Landroid/support/design/widget/aj;)V
.end method
