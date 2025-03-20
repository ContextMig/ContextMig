.class public final Lcom/appflood/c/e$7;
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

.field private synthetic b:I


# direct methods
.method public constructor <init>(Lcom/appflood/AppFlood$AFRequestDelegate;I)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$7;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    iput p2, p0, Lcom/appflood/c/e$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/appflood/c/d;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/e$7;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v1, 0x0

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/b/b;

    sget-object v1, Lcom/appflood/c/d;->p:Ljava/lang/String;

    const-string v2, "{1}"

    iget v3, p0, Lcom/appflood/c/e$7;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/appflood/c/e$7$1;

    invoke-direct {v1, p0}, Lcom/appflood/c/e$7$1;-><init>(Lcom/appflood/c/e$7;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->d()V

    goto :goto_0
.end method
