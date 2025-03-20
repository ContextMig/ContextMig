.class final Lcom/appflood/c/e$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/e$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/e$7;


# direct methods
.method constructor <init>(Lcom/appflood/c/e$7;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$7$1;->a:Lcom/appflood/c/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/e$7$1;->a:Lcom/appflood/c/e$7;

    iget-object v0, v0, Lcom/appflood/c/e$7;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v1, 0x0

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/c/e$7$1;->a:Lcom/appflood/c/e$7;

    iget-object v1, v1, Lcom/appflood/c/e$7;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v2, 0x1

    const/4 v3, -0x5

    invoke-static {v0, v3}, Lcom/appflood/e/j;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZI)V

    return-void
.end method
