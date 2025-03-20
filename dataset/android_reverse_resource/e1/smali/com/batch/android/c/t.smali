.class public final Lcom/batch/android/c/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "Rkt2Qg=="

.field protected static final b:Ljava/lang/String; = "d2dIRA=="

.field public static final c:Ljava/lang/String; = "1.8.0"

.field public static final d:I = 0xf

.field public static final e:I = 0x1

.field public static final f:Ljava/lang/String; = "com.batch.android"

.field public static final g:Ljava/lang/String; = "https://batch.com/"

.field public static final h:Ljava/lang/String; = "batch.plugin.version"

.field public static final i:Ljava/lang/String; = "batch.bridge.version"

.field public static final j:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/st/%s"

.field public static final k:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/ua/%s"

.field public static final l:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/p/%s/%s"

.field public static final m:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/a/%s"

.field public static final n:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/ap/%s/%s"

.field public static final o:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/r/%s"

.field public static final p:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/tr/%s"

.field public static final q:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/t/%s"

.field public static final r:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/ats/%s"

.field public static final s:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0/atc/%s"

.field private static final u:Ljava/lang/String; = "https://ws.batch.com/a/1.8.0"

.field private static v:Ljava/util/Map; = null
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

.field private static final w:Ljava/lang/String; = "batch_parameter_"

.field private static y:Lcom/batch/android/c/t;


# instance fields
.field protected t:Landroid/content/Context;

.field private x:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    .line 119
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.start.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.start.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.code.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.code.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.unlock_auto.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.unlock_auto.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.callback.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.callback.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.codecallback.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.codecallback.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.restore.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.restore.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.tracker.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.tracker.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.tracker.retry"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.push.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.push.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.attrsend.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.attrsend.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.attrcheck.readcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.attrcheck.postcryptor.type"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "tracker.state"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "tracker.delay.initial"

    const-string v2, "10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "tracker.delay.max"

    const-string v2, "120000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "tracker.batch.quantity"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "tracker.db.limit"

    const-string v2, "10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.defaultconnectTimeout"

    const-string v2, "10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.defaultreadTimeout"

    const-string v2, "10000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "ws.defaultRetry"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.executor.minpool"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.executor.maxpool"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.executor.threadttl"

    const-string v2, "1000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.key.devpattern"

    const-string v2, "^DEV.+$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.scheme.codepattern"

    const-string v2, "^batch[A-Za-z0-9]{4,}://unlock/code/([^/\\?]+)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.ids.pattern"

    const-string v2, "lvl,mlvl,pl,pid,dla,dre,dtz,osv,da,de,apv,apc,bid,di,i,aid,idv,cifa,cus,lda,fda,did,sdk,brv,plv,s,nkd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    const-string v1, "app.ids.pattern_advanced"

    const-string v2, "dty,brd,ntn,ntc,ssn,son,sop,sco"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null applicationContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/t;->t:Landroid/content/Context;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    .line 195
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/batch/android/c/t;
    .locals 2

    .prologue
    .line 318
    const-class v1, Lcom/batch/android/c/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/c/t;->y:Lcom/batch/android/c/t;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/batch/android/c/t;

    invoke-direct {v0, p0}, Lcom/batch/android/c/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/c/t;->y:Lcom/batch/android/c/t;

    .line 323
    :cond_0
    sget-object v0, Lcom/batch/android/c/t;->y:Lcom/batch/android/c/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/c/t;->y:Lcom/batch/android/c/t;

    .line 332
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    if-eqz v0, :cond_2

    .line 216
    monitor-exit v1

    .line 232
    :cond_1
    :goto_0
    return-object v0

    .line 218
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/batch/android/c/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/m;->a(Landroid/content/Context;)Lcom/batch/android/c/m$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch_parameter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/batch/android/c/m$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-nez v0, :cond_1

    .line 226
    sget-object v0, Lcom/batch/android/c/t;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    if-nez v0, :cond_1

    .line 232
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    if-nez p2, :cond_1

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz p3, :cond_2

    .line 278
    iget-object v0, p0, Lcom/batch/android/c/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/m;->a(Landroid/content/Context;)Lcom/batch/android/c/m$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch_parameter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/batch/android/c/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    :cond_2
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/t;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/batch/android/c/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/m;->a(Landroid/content/Context;)Lcom/batch/android/c/m$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch_parameter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/batch/android/c/m$a;->c(Ljava/lang/String;)V

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
