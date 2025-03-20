.class public final Lcom/appflood/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/c/d$b;,
        Lcom/appflood/c/d$a;
    }
.end annotation


# static fields
.field public static A:Z

.field public static B:Z

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appflood/c/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Lcom/appflood/c/d$a;

.field private static J:Ljava/util/concurrent/Semaphore;

.field private static K:Ljava/util/concurrent/Semaphore;

.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/net/URL;

.field public static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:I

.field public static w:I

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v3, Lcom/appflood/c/d;->a:Z

    const-string v0, "get_token"

    sput-object v0, Lcom/appflood/c/d;->G:Ljava/lang/String;

    sput-boolean v3, Lcom/appflood/c/d;->i:Z

    sput-object v1, Lcom/appflood/c/d;->j:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->l:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->m:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->n:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->o:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->p:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->q:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->r:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/appflood/c/d;->t:Ljava/lang/String;

    const-string v0, "_EN.png"

    sput-object v0, Lcom/appflood/c/d;->u:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/appflood/c/d;->v:I

    const/16 v0, 0x3a98

    sput v0, Lcom/appflood/c/d;->w:I

    sput-object v1, Lcom/appflood/c/d;->x:Ljava/lang/String;

    sput-object v1, Lcom/appflood/c/d;->y:Ljava/lang/String;

    const/16 v0, 0xff

    sput v0, Lcom/appflood/c/d;->z:I

    sput-boolean v2, Lcom/appflood/c/d;->A:Z

    sput-boolean v2, Lcom/appflood/c/d;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    sput-object v1, Lcom/appflood/c/d;->I:Lcom/appflood/c/d$a;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/appflood/c/d;->J:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/appflood/c/d;->K:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->E:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/appflood/c/d$a;)V
    .locals 2

    sget-boolean v0, Lcom/appflood/c/d;->i:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/appflood/c/d$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "connection delegate error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/appflood/c/d;->d(Lcom/appflood/c/d$a;)V

    :cond_2
    sget-boolean v0, Lcom/appflood/c/d;->B:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/appflood/c/d$b;

    invoke-direct {v0, p0}, Lcom/appflood/c/d$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {}, Lcom/appflood/c/d;->i()V

    goto :goto_0
.end method

.method public static a(Lcom/appflood/c/d$a;)V
    .locals 2

    sget-boolean v0, Lcom/appflood/c/d;->i:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/appflood/c/d$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "connection delegate error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/appflood/c/d;->d(Lcom/appflood/c/d$a;)V

    :cond_2
    invoke-static {}, Lcom/appflood/c/d;->i()V

    goto :goto_0
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "get_banner_rtb"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->j:Ljava/lang/String;

    const-string v0, "get_banner"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->k:Ljava/lang/String;

    const-string v0, "token"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->q:Ljava/lang/String;

    const-string v0, "get_panel"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->l:Ljava/lang/String;

    const-string v0, "get_list"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->m:Ljava/lang/String;

    const-string v0, "get_raw_data"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->n:Ljava/lang/String;

    const-string v0, "query_credit"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->o:Ljava/lang/String;

    const-string v0, "update_credit"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->p:Ljava/lang/String;

    const-string v0, "timeout"

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/appflood/c/d;->v:I

    const-string v0, "ppd"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->s:Ljava/lang/String;

    const-string v0, "static_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->t:Ljava/lang/String;

    const-string v0, "get_notification"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "register_notification"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "unregister_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "register_icon"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "referer_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "scale"

    invoke-static {p0, v0, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    const-string v1, "load_time"

    invoke-static {p0, v1, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInterstitial time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-lez v1, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/appflood/c/g;->c:I

    :cond_0
    const-string v0, "google_refer"

    invoke-static {v0}, Lcom/appflood/e/a;->a(Ljava/lang/String;)I

    const-string v0, "should_show_ad"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    sput-boolean v4, Lcom/appflood/c/d;->A:Z

    :cond_1
    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    const-string v0, "banners"

    const-string v1, "panels"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/c/g;->a(Lorg/json/JSONArray;)V

    invoke-static {p0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/c/g;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appflood/c/d;->i:Z

    invoke-static {}, Lcom/appflood/c/d;->h()V

    return-void
.end method

.method static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/appflood/c/d;->a:Z

    if-eqz p0, :cond_0

    const-string v0, "\u514d\u8d39\u70ed\u95e8\u6e38\u620f"

    sput-object v0, Lcom/appflood/c/d;->b:Ljava/lang/String;

    const-string v0, "\u8bf7\u8fde\u63a5\u7f51\u7edc\u4ee5\u4eab\u53d7\u66f4\u591a\u597d\u73a9\u7684\u514d\u8d39\u6e38\u620f\uff01"

    sput-object v0, Lcom/appflood/c/d;->C:Ljava/lang/String;

    const-string v0, "\u8fde\u63a5"

    sput-object v0, Lcom/appflood/c/d;->D:Ljava/lang/String;

    const-string v0, "\u8df3\u8fc7"

    sput-object v0, Lcom/appflood/c/d;->E:Ljava/lang/String;

    const-string v0, "\u8f7d\u5165\u4e2d..."

    sput-object v0, Lcom/appflood/c/d;->c:Ljava/lang/String;

    const-string v0, "_CN.png"

    sput-object v0, Lcom/appflood/c/d;->u:Ljava/lang/String;

    const-string v0, "download_02_CN.png"

    sput-object v0, Lcom/appflood/c/d;->e:Ljava/lang/String;

    const-string v0, "freebutton_02_CN.png"

    sput-object v0, Lcom/appflood/c/d;->f:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d"

    sput-object v0, Lcom/appflood/c/d;->d:Ljava/lang/String;

    const-string v0, "http://data.appflood.cn/"

    sput-object v0, Lcom/appflood/c/d;->F:Ljava/lang/String;

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/appflood/c/d;->F:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appflood/c/d;->g:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v0, "More Free Games"

    sput-object v0, Lcom/appflood/c/d;->b:Ljava/lang/String;

    const-string v0, "Connect to internet and enjoy more wonderful FREE games!"

    sput-object v0, Lcom/appflood/c/d;->C:Ljava/lang/String;

    const-string v0, "Connect"

    sput-object v0, Lcom/appflood/c/d;->D:Ljava/lang/String;

    const-string v0, "Skip"

    sput-object v0, Lcom/appflood/c/d;->E:Ljava/lang/String;

    const-string v0, "Loading..."

    sput-object v0, Lcom/appflood/c/d;->c:Ljava/lang/String;

    const-string v0, "_EN.png"

    sput-object v0, Lcom/appflood/c/d;->u:Ljava/lang/String;

    const-string v0, "download_02.png"

    sput-object v0, Lcom/appflood/c/d;->e:Ljava/lang/String;

    const-string v0, "freebutton_02.png"

    sput-object v0, Lcom/appflood/c/d;->f:Ljava/lang/String;

    const-string v0, "Download"

    sput-object v0, Lcom/appflood/c/d;->d:Ljava/lang/String;

    const-string v0, "http://data.appflood.com/"

    sput-object v0, Lcom/appflood/c/d;->F:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/appflood/c/d$a;)Lcom/appflood/c/d$a;
    .locals 0

    sput-object p0, Lcom/appflood/c/d;->I:Lcom/appflood/c/d$a;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appflood/c/d$a;)V
    .locals 0

    invoke-static {p0}, Lcom/appflood/c/d;->d(Lcom/appflood/c/d$a;)V

    return-void
.end method

.method static synthetic d()Lcom/appflood/c/d$a;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->I:Lcom/appflood/c/d$a;

    return-object v0
.end method

.method private static d(Lcom/appflood/c/d$a;)V
    .locals 2

    sget-object v1, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->K:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/appflood/c/d;->i()V

    return-void
.end method

.method static synthetic g()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->J:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private static h()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/appflood/c/d;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appflood/c/d$a;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/appflood/c/d$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "connection delegate error"

    invoke-static {v0, v2}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void
.end method

.method private static i()V
    .locals 6

    sget-object v0, Lcom/appflood/c/d;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appflood/c/d;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "app id or secret key is null!!"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/appflood/c/d;->J:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/appflood/c/d;->i:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/appflood/c/d;->h()V

    sget-object v0, Lcom/appflood/c/d;->J:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "model"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duid"

    sget-object v2, Lcom/appflood/e/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    sget-object v2, Lcom/appflood/e/c;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aid"

    sget-object v2, Lcom/appflood/e/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uuid"

    sget-object v2, Lcom/appflood/c/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    sget-object v2, Lcom/appflood/c/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sm"

    sget v2, Lcom/appflood/e/c;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adtype"

    sget v2, Lcom/appflood/c/d;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appflood/e/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appflood/e/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appflood/c/d;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appflood/e/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appflood/c/d;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "v"

    const-string v2, "V2.1"

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appflood/e/c;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send refer info refer =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appflood/e/c;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "refer"

    sget-object v2, Lcom/appflood/e/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "av"

    sget-object v3, Lcom/appflood/e/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "br"

    sget-object v3, Lcom/appflood/e/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dn"

    sget-object v3, Lcom/appflood/e/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pm"

    sget-object v3, Lcom/appflood/e/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mf"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dp"

    sget-object v3, Lcom/appflood/e/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pn"

    sget-object v3, Lcom/appflood/e/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "so"

    sget-object v3, Lcom/appflood/e/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sn"

    sget-object v3, Lcom/appflood/e/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sm"

    sget v3, Lcom/appflood/e/c;->r:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mc"

    sget-boolean v3, Lcom/appflood/e/c;->t:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "wc"

    sget-boolean v3, Lcom/appflood/e/c;->u:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "lc"

    sget-object v3, Lcom/appflood/e/c;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ll"

    sget-object v3, Lcom/appflood/e/c;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-wide v2, Lcom/appflood/e/c;->p:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    const-string v2, "xx"

    sget-wide v3, Lcom/appflood/e/c;->p:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "yy"

    sget-wide v3, Lcom/appflood/e/c;->q:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const-string v2, "data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appflood/e/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/appflood/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appflood/c/d;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appflood/c/d;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appflood/e/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/appflood/c/d$1;

    invoke-direct {v0}, Lcom/appflood/c/d$1;-><init>()V

    iput-object v0, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->d()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
