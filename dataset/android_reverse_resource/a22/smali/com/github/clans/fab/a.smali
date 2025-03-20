.class Lcom/github/clans/fab/a;
.super Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field final synthetic a:Lcom/github/clans/fab/FloatingActionButton;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/github/clans/fab/a;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v2, p1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/github/clans/fab/a;->b:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lcom/github/clans/fab/a;->c:I

    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/clans/fab/a;->b:I

    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->b(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/a;->b:I

    iget v0, p0, Lcom/github/clans/fab/a;->c:I

    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->b(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/a;->c:I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/a;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/github/clans/fab/a;->b:I

    iget v1, p0, Lcom/github/clans/fab/a;->c:I

    iget-object v2, p0, Lcom/github/clans/fab/a;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v2}, Lcom/github/clans/fab/FloatingActionButton;->c(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/a;->b:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/clans/fab/a;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v3}, Lcom/github/clans/fab/FloatingActionButton;->d(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v3

    iget v4, p0, Lcom/github/clans/fab/a;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/github/clans/fab/a;->setBounds(IIII)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
