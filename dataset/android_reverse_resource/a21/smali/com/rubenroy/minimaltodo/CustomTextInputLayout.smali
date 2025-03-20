.class public Lcom/rubenroy/minimaltodo/CustomTextInputLayout;
.super Landroid/support/design/widget/bq;


# instance fields
.field private a:Z

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/bq;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/bq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->b:Ljava/lang/CharSequence;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/bq;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/design/widget/bq;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->a:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/i/bt;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->b:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/CustomTextInputLayout;->a:Z

    :cond_1
    return-void
.end method
