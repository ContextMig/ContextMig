.class public final Lcom/appflood/c/e;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/appflood/c/e;


# instance fields
.field public a:Lcom/appflood/AppFlood$AFEventDelegate;

.field public b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/c/e;->b:Z

    return-void
.end method

.method public static a()Lcom/appflood/c/e;
    .locals 1

    sget-object v0, Lcom/appflood/c/e;->c:Lcom/appflood/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appflood/c/e;

    invoke-direct {v0}, Lcom/appflood/c/e;-><init>()V

    sput-object v0, Lcom/appflood/c/e;->c:Lcom/appflood/c/e;

    :cond_0
    sget-object v0, Lcom/appflood/c/e;->c:Lcom/appflood/c/e;

    return-object v0
.end method

.method static synthetic a(Lcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 6

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iget-object v1, v0, Lcom/appflood/c/g;->a:[Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Lcom/appflood/b/b;

    aget-object v5, v1, v0

    invoke-direct {v4, v5}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    new-instance v5, Lcom/appflood/c/e$2;

    invoke-direct {v5, v0, v2, v3, p0}, Lcom/appflood/c/e$2;-><init>(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/appflood/AppFlood$AFRequestDelegate;)V

    iput-object v5, v4, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v4}, Lcom/appflood/b/b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V
    .locals 2

    :try_start_0
    const-string v0, "success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/appflood/AppFlood$AFRequestDelegate;ZLorg/json/JSONArray;)V
    .locals 2

    :try_start_0
    const-string v0, "success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V
    .locals 2

    :try_start_0
    const-string v0, "success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "activity is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/appflood/c/e$4;

    invoke-direct {v0, p1}, Lcom/appflood/c/e$4;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/appflood/c/d;->a(Landroid/content/Context;Lcom/appflood/c/d$a;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/appflood/c/e;->b:Z

    if-nez v1, :cond_0

    sput p6, Lcom/appflood/c/d;->z:I

    const-string v1, "Papaya AppFlood SDK init version V2.1"

    invoke-static {v1}, Lcom/appflood/e/j;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/appflood/e/c;->a(Landroid/content/Context;)V

    if-nez p7, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/appflood/c/d;->a(Z)V

    sget-boolean v0, Lcom/appflood/c/d;->a:Z

    if-eqz v0, :cond_3

    :goto_1
    sput-object p4, Lcom/appflood/c/d;->x:Ljava/lang/String;

    sget-boolean v0, Lcom/appflood/c/d;->a:Z

    if-eqz v0, :cond_4

    :goto_2
    sput-object p5, Lcom/appflood/c/d;->y:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appflood/c/f;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/appflood/c/f;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/appflood/c/e;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-ne p7, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/appflood/e/c;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    move-object p4, p2

    goto :goto_1

    :cond_4
    move-object p5, p3

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "initialize failed"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    invoke-interface {v0, p1, p2}, Lcom/appflood/AppFlood$AFEventDelegate;->onFinish(ZI)V

    :cond_0
    return-void
.end method

.method public final a(ZLorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appflood/c/e$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/appflood/c/e$10;-><init>(Lcom/appflood/c/e;ZLorg/json/JSONObject;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appflood/c/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    invoke-static {}, Lcom/appflood/c/f;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/c/e;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appflood/c/d;->i:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->x:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->y:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->l:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->m:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->n:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->o:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->p:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/appflood/c/d;->v:I

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/d;->s:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appflood/c/d;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
