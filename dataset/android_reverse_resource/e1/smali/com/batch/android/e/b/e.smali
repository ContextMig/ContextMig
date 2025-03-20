.class public Lcom/batch/android/e/b/e;
.super Lcom/batch/android/e/b/b;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/batch/android/e/a$a;
.implements Lcom/batch/android/e/d/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/e/b/b",
        "<",
        "Lcom/batch/android/e/c/d;",
        ">;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Lcom/batch/android/e/a$a;",
        "Lcom/batch/android/e/d/d$a;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "messageModel"


# instance fields
.field private c:Lcom/batch/android/e/d/d;

.field private d:Lcom/batch/android/e/a/d;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Integer;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/batch/android/e/a;

.field private k:Landroid/media/MediaPlayer;

.field private l:Z

.field private m:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/batch/android/e/b/b;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    .line 52
    iput-object v1, p0, Lcom/batch/android/e/b/e;->d:Lcom/batch/android/e/a/d;

    .line 54
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->e:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/b/e;->f:Z

    .line 56
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->g:Z

    .line 57
    iput-object v1, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    .line 59
    iput-object v1, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    .line 60
    iput-object v1, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;

    .line 62
    iput-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    .line 63
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->l:Z

    .line 64
    iput-object v1, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    .line 76
    return-void
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/d;)Lcom/batch/android/e/b/e;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/batch/android/e/b/e;

    invoke-direct {v0}, Lcom/batch/android/e/b/e;-><init>()V

    .line 69
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/e/b/e;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/c;)V

    .line 70
    return-object v0
.end method

.method private e()Landroid/view/View;
    .locals 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.AppCompat.Light"

    const-string v2, "style"

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const v0, 0x1030128

    .line 187
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 188
    new-instance v0, Lcom/batch/android/e/d/d;

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v2

    check-cast v2, Lcom/batch/android/e/c/d;

    invoke-direct {p0}, Lcom/batch/android/e/b/e;->f()Lcom/batch/android/e/a/d;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/batch/android/e/b/e;->h()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/d/d;-><init>(Landroid/content/Context;Lcom/batch/android/e/c/d;Lcom/batch/android/e/a/d;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    .line 189
    iget-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    invoke-virtual {v0, p0}, Lcom/batch/android/e/d/d;->setActionListener(Lcom/batch/android/e/d/d$a;)V

    .line 190
    iget-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    invoke-virtual {v0, p0}, Lcom/batch/android/e/d/d;->setSurfaceHolderCallback(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 191
    iget-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    return-object v0
.end method

.method private f()Lcom/batch/android/e/a/d;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/batch/android/e/b/e;->d:Lcom/batch/android/e/a/d;

    if-nez v0, :cond_0

    .line 200
    :try_start_0
    new-instance v1, Lcom/batch/android/e/a/g;

    new-instance v2, Lcom/batch/android/e/a/a/a;

    invoke-direct {v2}, Lcom/batch/android/e/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/batch/android/e/a/g;-><init>(Lcom/batch/android/e/a/e;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/batch/android/e/a/g;->a()Lcom/batch/android/e/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/b/e;->d:Lcom/batch/android/e/a/d;
    :try_end_0
    .catch Lcom/batch/android/e/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    iget-object v0, p0, Lcom/batch/android/e/b/e;->d:Lcom/batch/android/e/a/d;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An error occurred while parsing message style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparsable style"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/b/e;->d:Lcom/batch/android/e/a/d;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcom/batch/android/e/b/e;->f()Lcom/batch/android/e/a/d;

    move-result-object v0

    new-instance v1, Lcom/batch/android/e/a/b;

    const-string v4, "root"

    new-array v5, v2, [Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/batch/android/e/a/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Lcom/batch/android/e/a/d;->a(Lcom/batch/android/e/a/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    const-string v5, "statusbar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->e:Z

    .line 228
    iput-boolean v3, p0, Lcom/batch/android/e/b/e;->f:Z

    goto :goto_0

    .line 224
    :sswitch_0
    const-string v5, "light"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "dark"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "hidden"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 231
    :pswitch_1
    iput-boolean v3, p0, Lcom/batch/android/e/b/e;->e:Z

    .line 232
    iput-boolean v3, p0, Lcom/batch/android/e/b/e;->f:Z

    goto :goto_0

    .line 235
    :pswitch_2
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->f:Z

    goto :goto_0

    .line 239
    :cond_2
    const-string v5, "statusbar-bg"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "translucent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    iput-object v6, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    .line 244
    iput-boolean v3, p0, Lcom/batch/android/e/b/e;->g:Z

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    .line 249
    iput-boolean v2, p0, Lcom/batch/android/e/b/e;->g:Z

    goto :goto_0

    .line 253
    :cond_4
    return-void

    .line 224
    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_2
        0x2eef76 -> :sswitch_1
        0x6233516 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized h()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/d;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v1

    .line 271
    :goto_0
    monitor-exit p0

    return v0

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;

    invoke-virtual {v0}, Lcom/batch/android/e/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 267
    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/batch/android/e/b/e;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 320
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iput-object v1, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    .line 301
    iget-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d;->a(Landroid/graphics/Bitmap;)V

    .line 302
    return-void
.end method

.method public a(ILcom/batch/android/e/c/b;)V
    .locals 3
    .param p2    # Lcom/batch/android/e/c/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->dismiss()V

    .line 285
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;I)V

    .line 287
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->b()Lcom/batch/android/BatchMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/batch/android/f/d;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/b;)V

    .line 288
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    .line 294
    iget-object v0, p0, Lcom/batch/android/e/b/e;->c:Lcom/batch/android/e/d/d;

    iget-object v1, p0, Lcom/batch/android/e/b/e;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/d;->a(Landroid/graphics/Bitmap;)V

    .line 295
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->dismiss()V

    .line 278
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->c(Lcom/batch/android/e/c/c;)V

    .line 279
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/batch/android/e/b/b;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/batch/android/e/b/e;->g()V

    .line 83
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/batch/android/e/b/e;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x103012c

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/batch/android/e/b/e;->setStyle(II)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/e/b/e;->setRetainInstance(Z)V

    .line 86
    return-void

    .line 83
    :cond_0
    const v0, 0x103012d

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/batch/android/e/b/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x1030002

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 94
    iget-boolean v2, p0, Lcom/batch/android/e/b/e;->f:Z

    if-eqz v2, :cond_1

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/batch/android/e/b/e;->g:Z

    if-eqz v2, :cond_0

    .line 99
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 101
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/batch/android/e/b/e;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 108
    :cond_1
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->c()Lcom/batch/android/e/c/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/d;

    .line 117
    iget-object v1, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 122
    iput-boolean v5, p0, Lcom/batch/android/e/b/e;->l:Z

    .line 123
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    .line 124
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 125
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    iget-object v2, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 135
    iget-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/b/e;->e()Landroid/view/View;

    move-result-object v1

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/batch/android/e/b/e;->f:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/batch/android/e/b/e;->e:Z

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 146
    :cond_1
    iget-object v2, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/batch/android/e/c/d;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;

    if-nez v2, :cond_2

    .line 148
    new-instance v2, Lcom/batch/android/e/a;

    invoke-direct {v2, p0}, Lcom/batch/android/e/a;-><init>(Lcom/batch/android/e/a$a;)V

    iput-object v2, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;

    .line 149
    iget-object v2, p0, Lcom/batch/android/e/b/e;->j:Lcom/batch/android/e/a;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v6, [Ljava/lang/String;

    iget-object v0, v0, Lcom/batch/android/e/c/d;->j:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/batch/android/e/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :cond_2
    return-object v1

    .line 130
    :catch_0
    move-exception v1

    .line 132
    const-string v2, "UniversalTemplateFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while creating the MediaPlayer for URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/e/b/e;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/batch/android/e/b/b;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/batch/android/e/b/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 171
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 174
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 175
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 176
    iput-object v1, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    .line 178
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/b/e;->l:Z

    .line 310
    invoke-direct {p0}, Lcom/batch/android/e/b/e;->i()V

    .line 311
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 327
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    .line 329
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/b/e;->i()V

    .line 334
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/batch/android/e/b/e;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 353
    iput-object v1, p0, Lcom/batch/android/e/b/e;->m:Landroid/view/Surface;

    .line 356
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 340
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 363
    return-void
.end method
