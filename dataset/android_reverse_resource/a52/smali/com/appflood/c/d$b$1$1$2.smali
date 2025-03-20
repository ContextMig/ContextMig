.class final Lcom/appflood/c/d$b$1$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/d$b$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/d$b$1$1;


# direct methods
.method constructor <init>(Lcom/appflood/c/d$b$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/d$b$1$1$2;->a:Lcom/appflood/c/d$b$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/d$b$1$1$2;->a:Lcom/appflood/c/d$b$1$1;

    iget-object v0, v0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    iget-object v0, v0, Lcom/appflood/c/d$b$1;->b:Lcom/appflood/c/d$b;

    iget-object v0, v0, Lcom/appflood/c/d$b;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
