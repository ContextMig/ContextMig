.class public final Lcom/appflood/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/c/c$a;
    }
.end annotation


# instance fields
.field a:[Lorg/json/JSONObject;

.field b:Lorg/json/JSONObject;

.field public c:Landroid/view/View;

.field d:Z

.field e:Z

.field f:Z

.field public g:Z

.field h:I

.field i:Lcom/appflood/c/c$a;

.field private j:I

.field private k:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/appflood/c/c$a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appflood/c/c;->j:I

    iput-boolean v2, p0, Lcom/appflood/c/c;->d:Z

    iput-boolean v1, p0, Lcom/appflood/c/c;->e:Z

    iput-boolean v1, p0, Lcom/appflood/c/c;->f:Z

    iput-boolean v1, p0, Lcom/appflood/c/c;->g:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/appflood/c/c;->h:I

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/appflood/c/c;->k:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    iput-object p1, p0, Lcom/appflood/c/c;->c:Landroid/view/View;

    iput-boolean v2, p0, Lcom/appflood/c/c;->f:Z

    iput-boolean v1, p0, Lcom/appflood/c/c;->d:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/appflood/c/c;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appflood/c/c;->k:F

    iput-object p2, p0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/c/c$1;

    invoke-direct {v0, p0}, Lcom/appflood/c/c$1;-><init>(Lcom/appflood/c/c;)V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lcom/appflood/c/c;->h:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/appflood/c/c;->j:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/appflood/c/c;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  iiii "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Lcom/appflood/b/b;

    iget-object v3, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/appflood/b/b;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/appflood/c/c;->j:I

    invoke-virtual {p0, v2}, Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error in refreshView"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/appflood/c/c;->j:I

    invoke-direct {p0, v0}, Lcom/appflood/c/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/appflood/c/c;->j:I

    iget-object v0, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    iget v1, p0, Lcom/appflood/c/c;->j:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    iget v2, p0, Lcom/appflood/c/c;->j:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/appflood/c/c$4;

    invoke-direct {v1, p0}, Lcom/appflood/c/c$4;-><init>(Lcom/appflood/c/c;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method final a(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/appflood/c/c;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/appflood/c/c;->k:F

    invoke-static {p1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p1

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v0, v0

    if-gt v0, v2, :cond_5

    new-instance v0, Lcom/appflood/c/c$5;

    invoke-direct {v0, p0}, Lcom/appflood/c/c$5;-><init>(Lcom/appflood/c/c;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_2
    new-instance v0, Lcom/appflood/c/c$7;

    invoke-direct {v0, p0, p1}, Lcom/appflood/c/c$7;-><init>(Lcom/appflood/c/c;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :try_start_2
    iget-object v0, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    iget v1, p0, Lcom/appflood/c/c;->j:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "click_url"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/appflood/e/k;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v2, "back_url"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/c/c;->c:Landroid/view/View;

    new-instance v3, Lcom/appflood/c/c$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/appflood/c/c$8;-><init>(Lcom/appflood/c/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "error in generateView"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "error in getRoundedCornerBitmap"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/appflood/c/c;->a()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v0, v0

    if-le v0, v2, :cond_3

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    iget v2, p0, Lcom/appflood/c/c;->j:I

    invoke-direct {p0, v2}, Lcom/appflood/c/c;->a(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    iget-boolean v0, p0, Lcom/appflood/c/c;->f:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/appflood/c/c$6;

    invoke-direct {v0, p0}, Lcom/appflood/c/c$6;-><init>(Lcom/appflood/c/c;)V

    sget v1, Lcom/appflood/c/d;->v:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
