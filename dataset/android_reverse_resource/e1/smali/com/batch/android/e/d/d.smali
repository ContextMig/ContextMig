.class public Lcom/batch/android/e/d/d;
.super Lcom/batch/android/e/d/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/d/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d/d$a;
    }
.end annotation


# static fields
.field private static final a:D = 0.4

.field private static final b:I = 0x1


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/batch/android/e/d/d/b;

.field private h:Lcom/batch/android/e/d/d/b;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/TextureView;

.field private l:Lcom/batch/android/e/d/c/c;

.field private m:Lcom/batch/android/e/d/c/c;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ProgressBar;

.field private p:Lcom/batch/android/e/c/d;

.field private q:Lcom/batch/android/e/a/d;

.field private r:Z

.field private s:Landroid/graphics/Bitmap;

.field private t:Lcom/batch/android/e/d/d$a;

.field private u:Landroid/view/TextureView$SurfaceTextureListener;

.field private v:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/e/c/d;Lcom/batch/android/e/a/d;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/batch/android/e/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/batch/android/e/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/batch/android/e/d/b/c;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/d;->c:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/d/d;->d:Z

    .line 88
    iput-object p1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    .line 90
    iput-boolean p5, p0, Lcom/batch/android/e/d/d;->r:Z

    .line 91
    iput-object p3, p0, Lcom/batch/android/e/d/d;->q:Lcom/batch/android/e/a/d;

    .line 92
    iput-object p4, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 97
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 101
    if-le v1, v0, :cond_0

    .line 104
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 106
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 109
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/batch/android/e/d/a/b;->b(Landroid/content/res/Resources;Ljava/lang/Float;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/e/d/a/b;->b(Landroid/content/res/Resources;Ljava/lang/Float;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/batch/android/e/d/d;->v:Landroid/graphics/Point;

    .line 111
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->a()V

    .line 112
    return-void
.end method

.method private a(Landroid/util/Pair;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Lcom/batch/android/e/a/b;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 287
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/batch/android/e/a/b;

    .line 288
    invoke-direct {p0, v1}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v2

    .line 289
    instance-of v1, v0, Lcom/batch/android/e/d/d/d;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 291
    check-cast v1, Lcom/batch/android/e/d/d/d;

    invoke-interface {v1, v2}, Lcom/batch/android/e/d/d/d;->a(Ljava/util/Map;)V

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/batch/android/e/d/b$g;

    if-eqz v3, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/batch/android/e/d/b$g;

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Lcom/batch/android/e/d/b$g;Ljava/util/Map;)Lcom/batch/android/e/d/b$g;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-object v0
.end method

.method static synthetic a(Lcom/batch/android/e/d/d;)Lcom/batch/android/e/d/d$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/batch/android/e/d/d;->t:Lcom/batch/android/e/d/d$a;

    return-object v0
.end method

.method private a(Lcom/batch/android/e/a/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/a/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/batch/android/e/d/d;->q:Lcom/batch/android/e/a/d;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->v:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/e/a/d;->a(Lcom/batch/android/e/a/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v4, -0x2

    .line 141
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v0, Lcom/batch/android/e/a/b;

    const-string v1, "root"

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 144
    iget-boolean v0, p0, Lcom/batch/android/e/d/d;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->c()V

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->d()V

    .line 150
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->b()V

    .line 152
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lcom/batch/android/e/d/a;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/a;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v1, Lcom/batch/android/e/a/b;

    const-string v2, "close"

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/a;->a(Ljava/util/Map;)V

    .line 157
    iget-object v2, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    new-instance v3, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v3, v4, v4}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    const/16 v4, 0xb

    invoke-static {v2, v3, v1, v4}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Lcom/batch/android/e/d/b/c$a;Ljava/util/Map;I)Lcom/batch/android/e/d/b/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Lcom/batch/android/e/d/d$1;

    invoke-direct {v1, p0}, Lcom/batch/android/e/d/d$1;-><init>(Lcom/batch/android/e/d/d;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d;->addView(Landroid/view/View;)V

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->e()V

    .line 173
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, Lcom/batch/android/e/a/b;

    const-string v1, "content"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/d;->i:Ljava/util/Map;

    .line 178
    new-instance v0, Lcom/batch/android/e/d/d/b;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    const-string v3, "cnt"

    invoke-direct {v0, v1, v3, p0}, Lcom/batch/android/e/d/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/e/d/d/b$a;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    .line 179
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-static {}, Lcom/batch/android/e/d/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/b;->setId(I)V

    .line 180
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v4}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    .line 182
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v4}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    .line 183
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v4}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    .line 184
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/b;->a(Ljava/util/Map;)V

    .line 185
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    return-void

    .line 192
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 193
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Lcom/batch/android/e/d/d/e;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/d/e;-><init>(Landroid/content/Context;)V

    .line 198
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/e;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Lcom/batch/android/e/a/b;

    const-string v6, "h1"

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "text"

    aput-object v8, v7, v2

    invoke-direct {v3, v6, v7}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    new-instance v0, Lcom/batch/android/e/d/d/e;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/d/e;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/e;->setText(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Lcom/batch/android/e/a/b;

    const-string v6, "h2"

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "text"

    aput-object v8, v7, v2

    invoke-direct {v3, v6, v7}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 211
    new-instance v0, Lcom/batch/android/e/d/d/e;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/d/e;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/e;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Lcom/batch/android/e/a/b;

    const-string v6, "h3"

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "text"

    aput-object v8, v7, v2

    invoke-direct {v3, v6, v7}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4
    new-instance v0, Lcom/batch/android/e/d/d/e;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/d/e;-><init>(Landroid/content/Context;)V

    .line 217
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/e;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v1, Lcom/batch/android/e/d/b$g;

    const/4 v3, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Lcom/batch/android/e/d/b$g;-><init>(II)V

    .line 219
    iput v12, v1, Lcom/batch/android/e/d/b$g;->i:F

    .line 220
    iput v13, v1, Lcom/batch/android/e/d/b$g;->j:F

    .line 221
    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Lcom/batch/android/e/a/b;

    const-string v6, "body"

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "text"

    aput-object v8, v7, v2

    invoke-direct {v3, v6, v7}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/b;

    .line 230
    add-int/lit8 v3, v1, 0x1

    .line 231
    new-instance v7, Lcom/batch/android/e/d/d/a;

    iget-object v8, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/batch/android/e/d/d/a;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object v8, v0, Lcom/batch/android/e/c/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/batch/android/e/d/d/a;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v7, v0}, Lcom/batch/android/e/d/d/a;->setTag(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v7, v11}, Lcom/batch/android/e/d/d/a;->setMaxLines(I)V

    .line 235
    invoke-virtual {v7, v11}, Lcom/batch/android/e/d/d/a;->setSingleLine(Z)V

    .line 236
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Lcom/batch/android/e/d/d/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 237
    invoke-virtual {v7, v2}, Lcom/batch/android/e/d/d/a;->setAllCaps(Z)V

    .line 238
    new-instance v8, Lcom/batch/android/e/d/d$2;

    invoke-direct {v8, p0, v1, v0}, Lcom/batch/android/e/d/d$2;-><init>(Lcom/batch/android/e/d/d;ILcom/batch/android/e/c/b;)V

    invoke-virtual {v7, v8}, Lcom/batch/android/e/d/d/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/batch/android/e/a/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cta"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    const-string v10, "btn"

    aput-object v10, v9, v2

    invoke-direct {v1, v8, v9}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 250
    goto :goto_0

    .line 253
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 255
    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/d/b;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    move-object v1, v0

    .line 260
    :goto_2
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 266
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 268
    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v3

    .line 270
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 272
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 273
    iput v12, v0, Lcom/batch/android/e/d/b$g;->i:F

    .line 274
    iput v13, v0, Lcom/batch/android/e/d/b$g;->j:F

    .line 275
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v12, v4

    iput v4, v0, Lcom/batch/android/e/d/b$g;->l:F

    .line 276
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    move-object v1, v0

    goto :goto_2
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 309
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    .line 310
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/batch/android/e/d/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 311
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d;->addView(Landroid/view/View;)V

    .line 314
    new-instance v0, Lcom/batch/android/e/a/b;

    const-string v1, "image-cnt"

    new-array v2, v4, [Ljava/lang/String;

    const-string v6, "image"

    aput-object v6, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v1

    .line 315
    const-string v0, "blur"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 318
    new-instance v0, Lcom/batch/android/e/d/c/c;

    iget-object v2, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/batch/android/e/d/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    .line 319
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    iget-object v2, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 322
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    iget-object v2, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-static {v2, v10, v1}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c/c;->a(Ljava/util/Map;)V

    .line 325
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 331
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->k:Landroid/view/TextureView;

    .line 332
    iget-object v0, p0, Lcom/batch/android/e/d/d;->u:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/batch/android/e/d/d;->k:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->u:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 336
    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->k:Landroid/view/TextureView;

    new-instance v2, Lcom/batch/android/e/a/b;

    const-string v4, "video"

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 394
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/batch/android/e/a/b;

    invoke-direct {p0, v1}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v3

    .line 395
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 396
    iget-object v4, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-static {v4, v10, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    instance-of v4, v1, Lcom/batch/android/e/d/d/d;

    if-eqz v4, :cond_9

    .line 399
    check-cast v1, Lcom/batch/android/e/d/d/d;

    invoke-interface {v1, v3}, Lcom/batch/android/e/d/d/d;->a(Ljava/util/Map;)V

    .line 406
    :goto_2
    iget-object v1, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 340
    :cond_3
    new-instance v0, Lcom/batch/android/e/d/c/c;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    .line 341
    iget-object v0, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    iget-object v0, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 343
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c/c;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    :cond_4
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    new-instance v2, Lcom/batch/android/e/a/b;

    const-string v6, "image"

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "image"

    aput-object v8, v7, v3

    invoke-direct {v2, v6, v7}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 351
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->n:Landroid/view/View;

    .line 352
    new-instance v0, Lcom/batch/android/e/a/b;

    const-string v1, "placeholder"

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 353
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/batch/android/e/d/d;->n:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    const-string v7, "loader"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 361
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v4

    :goto_4
    move v2, v0

    .line 371
    goto :goto_3

    .line 366
    :cond_5
    const-string v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 368
    goto :goto_4

    .line 373
    :cond_6
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    .line 374
    iget-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 377
    if-eqz v2, :cond_8

    .line 379
    iget-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 386
    :cond_7
    :goto_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 387
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iget-object v1, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 383
    :cond_8
    iget-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_5

    .line 403
    :cond_9
    invoke-static {v1, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/view/View;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 409
    :cond_a
    iget-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 411
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 413
    :cond_b
    return-void

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 417
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lcom/batch/android/e/a/b;

    const-string v1, "ctas"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/d;->j:Ljava/util/Map;

    .line 420
    new-instance v0, Lcom/batch/android/e/d/d/b;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    const-string v2, "ctas"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/e/d/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/e/d/d/b$a;)V

    iput-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    .line 421
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-static {}, Lcom/batch/android/e/d/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/b;->setId(I)V

    .line 423
    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v4}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v3}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    .line 434
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v3}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    .line 435
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d/b;->a(Ljava/util/Map;)V

    .line 436
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d;->addView(Landroid/view/View;)V

    .line 438
    :cond_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v0, v3}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 445
    iget-object v0, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    new-instance v1, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v1, v5, v5}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    iget-object v2, p0, Lcom/batch/android/e/d/d;->i:Ljava/util/Map;

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Lcom/batch/android/e/d/b/c$a;Ljava/util/Map;I)Lcom/batch/android/e/d/b/c$a;

    move-result-object v3

    .line 450
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    if-eqz v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/batch/android/e/d/d;->e:Landroid/content/Context;

    new-instance v1, Lcom/batch/android/e/d/b/c$a;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    iget-object v2, p0, Lcom/batch/android/e/d/d;->j:Ljava/util/Map;

    const/16 v4, 0xe

    invoke-static {v0, v1, v2, v4}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Lcom/batch/android/e/d/b/c$a;Ljava/util/Map;I)Lcom/batch/android/e/d/b/c$a;

    move-result-object v0

    .line 457
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    .line 463
    iget-boolean v1, p0, Lcom/batch/android/e/d/d;->c:Z

    if-nez v1, :cond_7

    .line 466
    new-instance v2, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v2, v5, v7}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    .line 467
    invoke-virtual {v2}, Lcom/batch/android/e/d/b/c$a;->a()Lcom/batch/android/e/d/b/b$a;

    move-result-object v4

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_0
    iput v1, v4, Lcom/batch/android/e/d/b/b$a;->b:F

    .line 470
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->q:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 472
    if-eqz v0, :cond_4

    .line 474
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1}, Lcom/batch/android/e/d/d/b;->getId()I

    move-result v1

    invoke-virtual {v2, v6, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 480
    :goto_1
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 481
    iget-object v1, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    move-object v1, v2

    .line 534
    :goto_2
    iget-object v2, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/batch/android/e/d/d;->g:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1, v3}, Lcom/batch/android/e/d/d/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 544
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1, v0}, Lcom/batch/android/e/d/d/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/e/d/d;->requestLayout()V

    .line 550
    return-void

    .line 467
    :cond_3
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    .line 478
    :cond_4
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    goto :goto_1

    .line 485
    :cond_5
    if-eqz v0, :cond_6

    .line 487
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1}, Lcom/batch/android/e/d/d/b;->getId()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 493
    :goto_4
    const/4 v1, 0x3

    iget-object v4, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 494
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move-object v1, v2

    goto :goto_2

    .line 491
    :cond_6
    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    goto :goto_4

    .line 500
    :cond_7
    new-instance v2, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v2, v7, v5}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    .line 501
    invoke-virtual {v2}, Lcom/batch/android/e/d/b/c$a;->a()Lcom/batch/android/e/d/b/b$a;

    move-result-object v4

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    :goto_5
    iput v1, v4, Lcom/batch/android/e/d/b/b$a;->a:F

    .line 504
    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/batch/android/e/d/d;->p:Lcom/batch/android/e/c/d;

    iget-object v1, v1, Lcom/batch/android/e/c/d;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 506
    invoke-virtual {v2, v9}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 507
    invoke-virtual {v3, v8}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 508
    iget-object v1, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v3, v7, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 510
    if-eqz v0, :cond_8

    .line 512
    invoke-virtual {v0, v8}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 513
    iget-object v1, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 529
    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    .line 531
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1}, Lcom/batch/android/e/d/d/b;->getId()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    .line 501
    :cond_a
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_5

    .line 518
    :cond_b
    invoke-virtual {v2, v8}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 519
    invoke-virtual {v3, v9}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 520
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    .line 522
    if-eqz v0, :cond_8

    .line 524
    invoke-virtual {v0, v9}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 525
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    goto :goto_6

    .line 536
    :cond_c
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/batch/android/e/d/d;->h:Lcom/batch/android/e/d/d/b;

    invoke-virtual {v1}, Lcom/batch/android/e/d/d/b;->getId()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/batch/android/e/d/b/c$a;->addRule(II)V

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Lcom/batch/android/e/d/d/b;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/d/d/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    new-instance v1, Lcom/batch/android/e/a/b;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/batch/android/e/d/d/b;->getSeparatorPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/batch/android/e/d/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "h-sep"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, p2, v2}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/a/b;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "sep"

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 569
    if-nez p1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/batch/android/e/d/d;->s:Landroid/graphics/Bitmap;

    .line 575
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/batch/android/e/d/d;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 580
    iput-object v2, p0, Lcom/batch/android/e/d/d;->n:Landroid/view/View;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/batch/android/e/d/d;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 586
    iput-object v2, p0, Lcom/batch/android/e/d/d;->o:Landroid/widget/ProgressBar;

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/batch/android/e/d/d;->l:Lcom/batch/android/e/d/c/c;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/batch/android/e/d/d;->m:Lcom/batch/android/e/d/c/c;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Lcom/batch/android/e/d/b/c;->onLayout(ZIIII)V

    .line 132
    iget-boolean v0, p0, Lcom/batch/android/e/d/d;->d:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/d/d;->d:Z

    .line 135
    invoke-direct {p0}, Lcom/batch/android/e/d/d;->e()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/batch/android/e/d/b/c;->onSizeChanged(IIII)V

    .line 118
    iget-boolean v2, p0, Lcom/batch/android/e/d/d;->c:Z

    .line 119
    if-le p1, p2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/batch/android/e/d/d;->c:Z

    .line 121
    iget-boolean v0, p0, Lcom/batch/android/e/d/d;->c:Z

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 123
    :cond_0
    iput-boolean v1, p0, Lcom/batch/android/e/d/d;->d:Z

    .line 125
    :cond_1
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionListener(Lcom/batch/android/e/d/d$a;)V
    .locals 0
    .param p1, "actionListener"    # Lcom/batch/android/e/d/d$a;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/batch/android/e/d/d;->t:Lcom/batch/android/e/d/d$a;

    .line 555
    return-void
.end method

.method public setSurfaceHolderCallback(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/batch/android/e/d/d;->k:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/batch/android/e/d/d;->k:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 564
    :cond_0
    iput-object p1, p0, Lcom/batch/android/e/d/d;->u:Landroid/view/TextureView$SurfaceTextureListener;

    .line 565
    return-void
.end method
