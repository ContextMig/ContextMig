.class final Lcom/appflood/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/c;-><init>(Landroid/view/View;Lcom/appflood/c/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$1;->a:Lcom/appflood/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/appflood/c/c$1;->a:Lcom/appflood/c/c;

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v1

    iget v2, v0, Lcom/appflood/c/c;->h:I

    new-instance v3, Lcom/appflood/c/c$2;

    invoke-direct {v3, v0}, Lcom/appflood/c/c$2;-><init>(Lcom/appflood/c/c;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;Z)V

    return-void
.end method
