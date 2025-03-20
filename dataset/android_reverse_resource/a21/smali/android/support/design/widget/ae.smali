.class Landroid/support/design/widget/ae;
.super Landroid/support/design/widget/ac;


# instance fields
.field final synthetic b:Landroid/support/design/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/z;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/ac;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/ae;-><init>(Landroid/support/design/widget/z;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/z;

    invoke-static {v0}, Landroid/support/design/widget/z;->a(Landroid/support/design/widget/z;)F

    move-result v0

    return v0
.end method
