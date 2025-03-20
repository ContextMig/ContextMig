.class public abstract Lcom/rubenroy/minimaltodo/j;
.super Landroid/support/v7/widget/dc;


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/dc;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/support/v7/widget/ch;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/dc;->a(Landroid/support/v7/widget/ch;II)V

    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const-string v0, "OskarSchindler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/j;->b()V

    iput v3, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    iput-boolean v3, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    if-eqz v0, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    if-nez v0, :cond_3

    if-gez p3, :cond_3

    :cond_2
    const-string v0, "OskarSchindler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    int-to-float v0, v0

    const/high16 v1, -0x3e600000    # -20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-string v0, "OskarSchindler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/j;->a()V

    iput v3, p0, Lcom/rubenroy/minimaltodo/j;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/j;->b:Z

    goto :goto_0
.end method

.method public abstract b()V
.end method
