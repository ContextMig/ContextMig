.class public Lcom/tokenautocomplete/CountSpan;
.super Lcom/tokenautocomplete/ViewSpan;
.source "CountSpan.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;III)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "textColor"    # I
    .param p4, "textSize"    # I
    .param p5, "maxWidth"    # I

    .prologue
    .line 18
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1, p5}, Lcom/tokenautocomplete/ViewSpan;-><init>(Landroid/view/View;I)V

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/tokenautocomplete/CountSpan;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 20
    .local v0, "v":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    const/4 v1, 0x0

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/tokenautocomplete/CountSpan;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
