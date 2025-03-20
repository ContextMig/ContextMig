.class public final Lcom/appflood/mraid/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/mraid/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/appflood/mraid/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "close"

    new-instance v2, Lcom/appflood/mraid/j;

    invoke-direct {v2}, Lcom/appflood/mraid/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "expand"

    new-instance v2, Lcom/appflood/mraid/k;

    invoke-direct {v2}, Lcom/appflood/mraid/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "resize"

    new-instance v2, Lcom/appflood/mraid/l;

    invoke-direct {v2}, Lcom/appflood/mraid/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "usecustomclose"

    new-instance v2, Lcom/appflood/mraid/m;

    invoke-direct {v2}, Lcom/appflood/mraid/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "open"

    new-instance v2, Lcom/appflood/mraid/n;

    invoke-direct {v2}, Lcom/appflood/mraid/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "playVideo"

    new-instance v2, Lcom/appflood/mraid/o;

    invoke-direct {v2}, Lcom/appflood/mraid/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "storePicture"

    new-instance v2, Lcom/appflood/mraid/p;

    invoke-direct {v2}, Lcom/appflood/mraid/p;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    const-string v1, "createCalendarEvent"

    new-instance v2, Lcom/appflood/mraid/q;

    invoke-direct {v2}, Lcom/appflood/mraid/q;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)Lcom/appflood/mraid/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/appflood/mraid/AFBannerWebView;",
            ")",
            "Lcom/appflood/mraid/d;"
        }
    .end annotation

    sget-object v0, Lcom/appflood/mraid/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appflood/mraid/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/appflood/mraid/i$a;->a(Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)Lcom/appflood/mraid/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
