.class final Lcom/appflood/d/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/d/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/d/a;


# direct methods
.method constructor <init>(Lcom/appflood/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v1, v0, Lcom/appflood/d/a;->r:I

    add-int/lit16 v1, v1, 0x1f4

    iput v1, v0, Lcom/appflood/d/a;->r:I

    :cond_0
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v0, v0, Lcom/appflood/d/a;->r:I

    iget-object v1, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->s:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    sget-object v1, Lcom/appflood/mraid/A;->f:Lcom/appflood/mraid/A;

    invoke-virtual {v0, v1}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-virtual {v0}, Lcom/appflood/d/a;->c()V

    :cond_1
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v0, v0, Lcom/appflood/d/a;->r:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    invoke-virtual {v0, v1}, Lcom/appflood/d/a$a;->b(I)V

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v3, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-virtual {v3}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->b:Z

    if-nez v0, :cond_3

    div-int/lit16 v0, v1, 0x3e8

    iget-object v3, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v3, v3, Lcom/appflood/d/a;->p:I

    div-int/lit16 v3, v3, 0x3e8

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iput-boolean v4, v0, Lcom/appflood/d/a;->b:Z

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->t:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v3, "firstQuartile"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->c:Z

    if-nez v0, :cond_4

    div-int/lit16 v0, v1, 0x3e8

    iget-object v1, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->q:I

    div-int/lit16 v1, v1, 0x3e8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iput-boolean v4, v0, Lcom/appflood/d/a;->c:Z

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->t:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-virtual {v0}, Lcom/appflood/d/a;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-object v1, v0, Lcom/appflood/d/b;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/appflood/d/b;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v0, Lcom/appflood/d/b;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->a()V

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iput-boolean v2, v0, Lcom/appflood/d/a;->i:Z

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->f:Z

    if-nez v0, :cond_6

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-object v1, v0, Lcom/appflood/d/b;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/appflood/d/b;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v3, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-virtual {v3}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    invoke-virtual {v0}, Lcom/appflood/d/a;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->i:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appflood/d/a$4;->a:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->b()V

    goto :goto_3
.end method
