.class public Lcom/appflood/AFFullScreenActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/appflood/c/b;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:F

.field c:F

.field d:Lcom/appflood/c/a;

.field e:I

.field f:I

.field g:Landroid/view/View;

.field h:Lcom/appflood/f/b;

.field i:I

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->b:F

    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->c:F

    iput-boolean v1, p0, Lcom/appflood/AFFullScreenActivity;->j:Z

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->k:I

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->e:I

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->f:I

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->i:I

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->l:I

    return-void
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/appflood/c/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/AFFullScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/appflood/AFFullScreenActivity$2;-><init>(Lcom/appflood/AFFullScreenActivity;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    invoke-virtual {v0}, Lcom/appflood/c/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    :cond_1
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appflood/c/e;->a(ZLorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->finish()V

    return-void
.end method

.method public onClose()V
    .locals 0

    invoke-direct {p0}, Lcom/appflood/AFFullScreenActivity;->b()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "isFull"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "isPortrait"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appflood/AFFullScreenActivity;->j:Z

    const-string v2, "titlebar"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->k:I

    :cond_0
    iget-boolean v1, p0, Lcom/appflood/AFFullScreenActivity;->j:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/appflood/e/c;->j:I

    if-lt v1, v3, :cond_3

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/appflood/AFFullScreenActivity;->setRequestedOrientation(I)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/appflood/AFFullScreenActivity;->requestWindowFeature(I)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/appflood/AFFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/appflood/AFFullScreenActivity;->b:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p0, Lcom/appflood/AFFullScreenActivity;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->c:F

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->i:I

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x38000000    # -131072.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appflood/AFFullScreenActivity;->setContentView(Landroid/view/View;)V

    iget v0, p0, Lcom/appflood/AFFullScreenActivity;->b:F

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->e:I

    iget v0, p0, Lcom/appflood/AFFullScreenActivity;->c:F

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->f:I

    new-instance v0, Lcom/appflood/c/a;

    invoke-direct {v0, p0}, Lcom/appflood/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    const/16 v1, 0xf

    iput v1, v0, Lcom/appflood/c/a;->c:I

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    iput-object p0, v0, Lcom/appflood/c/a;->b:Lcom/appflood/c/b;

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    iget v1, p0, Lcom/appflood/AFFullScreenActivity;->e:I

    iget v2, p0, Lcom/appflood/AFFullScreenActivity;->f:I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/appflood/c/a;->a(III)V

    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/appflood/AFFullScreenActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    sget v1, Lcom/appflood/e/c;->j:I

    if-lt v1, v3, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/appflood/AFFullScreenActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/appflood/AFFullScreenActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFinish(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/appflood/AFFullScreenActivity;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/appflood/AFFullScreenActivity;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "w"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v6, :cond_2

    iput v7, p0, Lcom/appflood/AFFullScreenActivity;->l:I

    new-instance v0, Lcom/appflood/AFFullScreenActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/appflood/AFFullScreenActivity$1;-><init>(Lcom/appflood/AFFullScreenActivity;ZIILjava/lang/String;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Lcom/appflood/c/e;->a(ZI)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "video_error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/appflood/AFFullScreenActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appflood/AFFullScreenActivity;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/appflood/AFFullScreenActivity;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    invoke-virtual {v0}, Lcom/appflood/c/a;->a()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/appflood/AFFullScreenActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
