.class public Lcom/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d;
.implements Lcom/a/a/e;
.implements Lcom/a/a/f;


# instance fields
.field public a:I

.field public b:F

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Landroid/graphics/drawable/shapes/RectShape;

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/a/a/c;->c:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Lcom/a/a/c;->d:I

    iput v1, p0, Lcom/a/a/c;->a:I

    iput v2, p0, Lcom/a/a/c;->e:I

    iput v1, p0, Lcom/a/a/c;->f:I

    iput v1, p0, Lcom/a/a/c;->g:I

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/drawable/shapes/RectShape;

    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/a/a/c;->j:I

    iput-boolean v2, p0, Lcom/a/a/c;->k:Z

    iput-boolean v2, p0, Lcom/a/a/c;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/c;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/drawable/shapes/RectShape;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->g:I

    return v0
.end method

.method static synthetic c(Lcom/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->f:I

    return v0
.end method

.method static synthetic d(Lcom/a/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/c;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/a/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->d:I

    return v0
.end method

.method static synthetic g(Lcom/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->j:I

    return v0
.end method

.method static synthetic h(Lcom/a/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/c;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/a/a/c;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic j(Lcom/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->e:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/a/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/c;->d()Lcom/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->b(Ljava/lang/String;I)Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/a/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->l:Z

    return-object p0
.end method

.method public a(I)Lcom/a/a/e;
    .locals 0

    iput p1, p0, Lcom/a/a/c;->a:I

    return-object p0
.end method

.method public a(Landroid/graphics/Typeface;)Lcom/a/a/e;
    .locals 0

    iput-object p1, p0, Lcom/a/a/c;->h:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public b(Ljava/lang/String;I)Lcom/a/a/a;
    .locals 2

    iput p2, p0, Lcom/a/a/c;->d:I

    iput-object p1, p0, Lcom/a/a/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/c;Lcom/a/a/b;)V

    return-object v0
.end method

.method public b()Lcom/a/a/e;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/a/a/f;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/a/a/d;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method
