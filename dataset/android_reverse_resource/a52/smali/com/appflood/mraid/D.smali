.class final Lcom/appflood/mraid/D;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/mraid/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/appflood/mraid/x;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/x;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/D;->b:Lcom/appflood/mraid/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/D;->b:Lcom/appflood/mraid/x;

    invoke-static {v0}, Lcom/appflood/mraid/x;->a(Lcom/appflood/mraid/x;)I

    move-result v0

    iget v1, p0, Lcom/appflood/mraid/D;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/appflood/mraid/D;->a:I

    iget-object v0, p0, Lcom/appflood/mraid/D;->b:Lcom/appflood/mraid/x;

    invoke-static {v0}, Lcom/appflood/mraid/x;->b(Lcom/appflood/mraid/x;)V

    :cond_0
    return-void
.end method
