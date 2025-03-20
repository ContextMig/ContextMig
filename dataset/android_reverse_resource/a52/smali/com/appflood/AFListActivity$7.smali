.class final Lcom/appflood/AFListActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/AppFlood$AFRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFListActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFListActivity$7;->a:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "result"

    invoke-static {p1, v0, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appflood/AFListActivity$7;->a:Lcom/appflood/AFListActivity;

    invoke-virtual {v0}, Lcom/appflood/AFListActivity;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/appflood/c/e;->a(ZI)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$7;->a:Lcom/appflood/AFListActivity;

    invoke-virtual {v0}, Lcom/appflood/AFListActivity;->b()V

    goto :goto_0
.end method
