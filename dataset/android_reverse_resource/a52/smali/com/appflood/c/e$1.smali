.class public final Lcom/appflood/c/e$1;
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
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$1;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/appflood/c/e$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appflood/c/e$1;->a:Landroid/app/Activity;

    const-class v2, Lcom/appflood/AFListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFull"

    iget-object v2, p0, Lcom/appflood/c/e$1;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isPortrait"

    iget-object v2, p0, Lcom/appflood/c/e$1;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/appflood/AFListActivity$c$1;->b(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "showType"

    iget v2, p0, Lcom/appflood/c/e$1;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appflood/c/e$1;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
