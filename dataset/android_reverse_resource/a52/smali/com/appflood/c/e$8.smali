.class public final Lcom/appflood/c/e$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/AppFlood$AFRequestDelegate;


# direct methods
.method public constructor <init>(Lcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$8;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/appflood/c/d;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/e$8;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/appflood/c/e;->b(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/b/b;

    sget-object v1, Lcom/appflood/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/appflood/c/e$8$1;

    invoke-direct {v1, p0}, Lcom/appflood/c/e$8$1;-><init>(Lcom/appflood/c/e$8;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->d()V

    goto :goto_0
.end method
