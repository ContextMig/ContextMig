.class final Lcom/appflood/mraid/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/mraid/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/mraid/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)Lcom/appflood/mraid/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v0, Lcom/appflood/mraid/s;

    invoke-direct {v0, p1, p2}, Lcom/appflood/mraid/s;-><init>(Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)V

    return-object v0
.end method
