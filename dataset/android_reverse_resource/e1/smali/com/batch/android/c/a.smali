.class public Lcom/batch/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "apikeydev_"

.field private static c:Lcom/batch/android/c/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/batch/android/c/a;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/batch/android/c/a;
    .locals 3

    .prologue
    .line 172
    const-class v1, Lcom/batch/android/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/c/a;->c:Lcom/batch/android/c/a;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/batch/android/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/batch/android/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/c/a;->c:Lcom/batch/android/c/a;

    .line 177
    :cond_0
    sget-object v0, Lcom/batch/android/c/a;->c:Lcom/batch/android/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/batch/android/c/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    invoke-static {p1}, Lcom/batch/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/batch/android/c/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    invoke-static {p1}, Lcom/batch/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apikeydev_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/c/a;->c:Lcom/batch/android/c/a;

    .line 186
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/batch/android/c/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.key.devpattern"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/batch/android/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unable to retrieve API key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/batch/android/c/a;->a(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/batch/android/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unable to retrieve API key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-direct {p0, v0}, Lcom/batch/android/c/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/batch/android/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/batch/android/Batch;->getAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
