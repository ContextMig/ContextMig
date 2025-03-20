.class public final Lcom/batch/android/Batch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$a;,
        Lcom/batch/android/Batch$Actions;,
        Lcom/batch/android/Batch$Messaging;,
        Lcom/batch/android/Batch$User;,
        Lcom/batch/android/Batch$Push;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLACEMENT:Ljava/lang/String; = "DEFAULT"

.field private static a:Lcom/batch/android/Config;

.field private static b:Lcom/batch/android/g;

.field private static c:Lcom/batch/android/i;

.field private static d:Lcom/batch/android/o;

.field private static e:Landroid/content/BroadcastReceiver;

.field private static f:Lcom/batch/android/c/w;

.field private static g:Landroid/content/Intent;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/c;->a(Lcom/batch/android/f/b;)V

    .line 104
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/c;->a(Lcom/batch/android/f/b;)V

    .line 105
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/c;->a(Lcom/batch/android/f/b;)V

    .line 106
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/c;->a(Lcom/batch/android/f/b;)V

    .line 107
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/c;->a(Lcom/batch/android/f/b;)V

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->e:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->g:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic a(Lcom/batch/android/Config;)Lcom/batch/android/Config;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->a:Lcom/batch/android/Config;

    return-object p0
.end method

.method static synthetic a(Lcom/batch/android/c/w;)Lcom/batch/android/c/w;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->f:Lcom/batch/android/c/w;

    return-object p0
.end method

.method protected static a()Lcom/batch/android/g;
    .locals 1

    .prologue
    .line 1483
    sget-object v0, Lcom/batch/android/Batch;->b:Lcom/batch/android/g;

    return-object v0
.end method

.method static synthetic a(Lcom/batch/android/g;)Lcom/batch/android/g;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->b:Lcom/batch/android/g;

    return-object p0
.end method

.method static synthetic a(Lcom/batch/android/i;)Lcom/batch/android/i;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->c:Lcom/batch/android/i;

    return-object p0
.end method

.method static synthetic a(Lcom/batch/android/o;)Lcom/batch/android/o;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->d:Lcom/batch/android/o;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/batch/android/Batch;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;ZZ)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 955
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v6

    new-instance v0, Lcom/batch/android/Batch$14;

    move v1, p2

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/Batch$14;-><init>(ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v0}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/a;)Z

    move-result v0

    .line 1217
    if-eqz v0, :cond_0

    .line 1219
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/f/c;->e()V

    .line 1225
    :cond_0
    if-eqz v0, :cond_1

    .line 1227
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    new-instance v2, Lcom/batch/android/Batch$2;

    invoke-direct {v2, v4, v5, p2}, Lcom/batch/android/Batch$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Lcom/batch/android/i/e;)Z

    .line 1240
    invoke-static {}, Lcom/batch/android/Batch;->isRunningInDevMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    const-string v0, "Batch (1.8.0) is running in dev mode (your API key is a dev one)"

    invoke-static {v7, v0}, Lcom/batch/android/c/o;->b(ZLjava/lang/String;)V

    .line 1245
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1548
    return-void
.end method

.method protected static b()Lcom/batch/android/i;
    .locals 1

    .prologue
    .line 1493
    sget-object v0, Lcom/batch/android/Batch;->c:Lcom/batch/android/i;

    return-object v0
.end method

.method private static b(Landroid/content/Context;ZZ)V
    .locals 3

    .prologue
    .line 1257
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    new-instance v2, Lcom/batch/android/Batch$3;

    invoke-direct {v2, p1, p0, p2}, Lcom/batch/android/Batch$3;-><init>(ZLandroid/content/Context;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Lcom/batch/android/i/a;)Z

    move-result v0

    .line 1326
    if-eqz v0, :cond_0

    .line 1329
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ab;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1331
    const-string v0, "onStop, should stop directly : true"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/batch/android/Batch;->m()V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    const-string v0, "onStop, should stop directly : false"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static c()Lcom/batch/android/o;
    .locals 1

    .prologue
    .line 1503
    sget-object v0, Lcom/batch/android/Batch;->d:Lcom/batch/android/o;

    return-object v0
.end method

.method static synthetic d()Lcom/batch/android/Config;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->a:Lcom/batch/android/Config;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/batch/android/i;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->c:Lcom/batch/android/i;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public static getAPIKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$1;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$12;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$12;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserProfile()Lcom/batch/android/BatchUserProfile;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/batch/android/BatchUserProfile;

    invoke-direct {v0, v1}, Lcom/batch/android/BatchUserProfile;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "Error while retrieving BatchUser"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    const/4 v0, 0x0

    const-string v1, "Batch : Call to getUserProfile() made before onStart or after onStop. Returns null"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->b(ZLjava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/batch/android/Batch;->n()V

    return-void
.end method

.method static synthetic i()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isRunningInDevMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1446
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1448
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$6;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 1471
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic j()Lcom/batch/android/c/w;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/batch/android/Batch;->f:Lcom/batch/android/c/w;

    return-object v0
.end method

.method static synthetic k()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/batch/android/Batch;->l()V

    return-void
.end method

.method private static l()V
    .locals 4

    .prologue
    .line 1347
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1350
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    sget-object v2, Lcom/batch/android/i/d;->c:Lcom/batch/android/i/d;

    new-instance v3, Lcom/batch/android/Batch$4;

    invoke-direct {v3, v0}, Lcom/batch/android/Batch$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Lcom/batch/android/i/e;)Z

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebserviceExecutorWorkFinished called, should stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    invoke-static {}, Lcom/batch/android/Batch;->m()V

    .line 1366
    :cond_0
    return-void
.end method

.method private static m()V
    .locals 3

    .prologue
    .line 1376
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/i/d;->c:Lcom/batch/android/i/d;

    new-instance v2, Lcom/batch/android/Batch$5;

    invoke-direct {v2}, Lcom/batch/android/Batch$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Lcom/batch/android/i/a;)Z

    move-result v0

    .line 1429
    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/c;->h()V

    .line 1433
    :cond_0
    return-void
.end method

.method private static n()V
    .locals 5

    .prologue
    .line 1515
    :try_start_0
    const-string v0, "1.8.0"

    .line 1516
    if-nez v0, :cond_1

    .line 1518
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unable to retrieve current lib version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :catch_0
    move-exception v0

    .line 1535
    const-string v1, "Error on updateVersionManagement"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "app.version.current"

    invoke-virtual {v1, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1522
    if-nez v1, :cond_2

    .line 1524
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "app.version.current"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1526
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1528
    invoke-static {v1, v0}, Lcom/batch/android/Batch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "app.version.current"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1530
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v2, "app.version.previous"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 947
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    .line 948
    return-void
.end method

.method public static onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 909
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/Batch$13;

    invoke-direct {v1, p1, p0}, Lcom/batch/android/Batch$13;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 926
    return-void
.end method

.method public static onServiceCreate(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "_context"    # Landroid/content/Context;
    .param p1, "_userActivity"    # Z

    .prologue
    .line 886
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V

    .line 887
    return-void
.end method

.method public static onServiceDestroy(Landroid/content/Context;)V
    .locals 1
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 898
    invoke-static {p0, v0, v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    .line 899
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 864
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V

    .line 865
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 936
    invoke-static {p0, v0, v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    .line 937
    return-void
.end method

.method public static setConfig(Lcom/batch/android/Config;)V
    .locals 2
    .param p0, "config"    # Lcom/batch/android/Config;

    .prologue
    .line 187
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/Batch$7;

    invoke-direct {v1, p0}, Lcom/batch/android/Batch$7;-><init>(Lcom/batch/android/Config;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/a;)Z

    .line 205
    return-void
.end method

.method public static shouldUseAdvancedDeviceInformation()Z
    .locals 3

    .prologue
    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 261
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$10;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$10;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static shouldUseAdvertisingID()Z
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 238
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$9;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$9;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static shouldUseAndroidID()Z
    .locals 3

    .prologue
    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 215
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$8;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$8;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 227
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static shouldUseGoogleInstanceID()Z
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 284
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/Batch$11;

    invoke-direct {v2, v0}, Lcom/batch/android/Batch$11;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 296
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
