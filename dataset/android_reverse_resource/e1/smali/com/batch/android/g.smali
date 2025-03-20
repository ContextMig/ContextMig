.class public final Lcom/batch/android/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/batch/android/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/g;->c:Z

    .line 41
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/batch/android/c/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/g;->d:Ljava/lang/String;

    .line 52
    invoke-direct {p0, v0}, Lcom/batch/android/g;->b(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/batch/android/g;
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/batch/android/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/g;->e:Lcom/batch/android/g;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/batch/android/g;

    invoke-direct {v0, p0}, Lcom/batch/android/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/g;->e:Lcom/batch/android/g;

    .line 174
    :cond_0
    sget-object v0, Lcom/batch/android/g;->e:Lcom/batch/android/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/batch/android/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/batch/android/g;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/batch/android/g;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/batch/android/g;->b:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-static {p1}, Lcom/batch/android/c/k;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 68
    iput-boolean v1, p0, Lcom/batch/android/g;->c:Z

    .line 107
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/batch/android/c/k;->c(Landroid/content/Context;)Z

    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 78
    const-string v0, "GooglePlayServices Advertising ID seems to be unavailable."

    invoke-static {v0}, Lcom/batch/android/c/o;->b(Ljava/lang/String;)V

    .line 79
    iput-boolean v1, p0, Lcom/batch/android/g;->c:Z

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/batch/android/g$1;

    invoke-direct {v0, p0}, Lcom/batch/android/g$1;-><init>(Lcom/batch/android/g;)V

    invoke-static {p1, v0}, Lcom/batch/android/c/k;->a(Landroid/content/Context;Lcom/batch/android/c/k$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/batch/android/g;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/batch/android/g;->c:Z

    return p1
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/g;->e:Lcom/batch/android/g;

    .line 180
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/batch/android/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/batch/android/g;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/batch/android/g;->c:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdvertinsingID is not ready yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/batch/android/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/batch/android/g;->c:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdvertisingID is not ready yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/batch/android/g;->b:Z

    return v0
.end method
